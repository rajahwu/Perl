#!/usr/bin/perl
#scraper.plx
use warnings;
use strict;
use HTTP::Tiny;
use HTML::TreeBuilder;
use Text::CSV;

package Product;
use Moo;
has 'url'   => ( is => 'ro' );
has 'image' => ( is => 'ro' );
has 'name'  => ( is => 'ro' );
has 'price' => ( is => 'ro' );

my $http         = HTTP::Tiny->new();
my $url          = 'https://www.scrapingcourse.com/ecommerce/';
my $response     = $http->get($url);
my $html_content = $response->{content};
print "$html_content\n";

my $tree = HTML::TreeBuilder->new();
$tree->parse($html_content);

my @html_products = $tree->look_down(
    '_tag' => 'li',
    class  => qr/product/
);

my @products;

foreach my $html_product (@html_products) {
    my $url = $html_product->look_down( '_tag' => 'a', )->attr('href');

    my $image = $html_product->look_down( '_tag' => 'img', )->attr('src');

    my $name = $html_product->look_down( '_tag' => 'h2', )->as_text;

    my $price = $html_product->look_down( '_tag' => 'span', )->as_text;

    my $product = Product->new(
        url   => $url,
        image => $image,
        name  => $name,
        price => $price
    );

    push @products, $product;

}

my @csv_headers = qw(url image name price);

my $csv = Text::CSV->new( { binary => 1, auto_diag => 1, eol => $/ } );
open my $file, '>:encoding(utf8)', 'products.csv'
  or die "Failed to create products.csv: $!";
$csv->print( $file, \@csv_headers );

foreach my $product (@products) {
    my @row = map { $product->$_ } @csv_headers;
    $csv->print( $file, \@row );
}
close($file);
