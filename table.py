from requests import get
from tablib import Dataset


def download_dataset(url):
    return Dataset().load(get(url).content.decode('utf-8').replace(';', ','), headers=True)


# def add_empty_rows(dataset, len_of_rows):
#     empty_rows = []
#     # create empty row
#     for _ in range(0, len(dataset.headers)):
#         empty_rows.append('')
#     # add empty rows to our dataset
#     for _ in range(0, len_of_rows):
#         dataset.append(empty_rows)


# def copy_row(to_dataset, to_row_name, from_dataset, from_row_name):
#     try:
#         to_dataset[to_row_name] = from_dataset[from_row_name]
#     except exceptions.InvalidDimensions:
#         add_empty_rows(to_dataset, len(from_dataset[from_row_name]))
#         print(len(to_dataset[to_row_name]))
#         print(len(from_dataset[from_row_name]))
#         to_dataset[to_row_name] = from_dataset[from_row_name]
def add_rows():
    pass


URLS = [
    'http://elektrostandard.ru/prices/prices-elektrostandard-rur-utf-8.csv'
]
imported_data = download_dataset(URLS[0])

shop_data = Dataset(headers=['id', 'structure', 'is_public', 'upc', 'parent', 'title', 'slug', 'description', 'product_class', 'attributes', 'product_options', 'recommended_products',
                             'rating', 'date_created', 'date_updated', 'categories', 'is_discountable', 'article', 'series', 'seo_name_for_site', 'category', 'barcode', 'attribute', 'image_url'])
# shop_data['article'] = imported_data['Артикул']
# copy_row(shop_data, 'article', imported_data, 'Артикул')
print(len(imported_data['Артикул']))
headers_names = {
    'id': '',
    'structure': '',
    'is_public': '',
    'upc': '',
    'parent': '',
    'title': '',
    'slug': '',
    'description': '',
    'product_class': '',
    'attributes': '',
    'product_options': '',
    'recommended_products': '',
    'rating': '',
    'date_created': '',
    'date_updated': '',
    'categories': '',
    'is_discountable': '',
    'article': 'Артикул',
    'series': '',
    'seo_name_for_site': '',
    'category': '',
    'barcode': '',
    'attribute': '',
    'image_url': '',
}
