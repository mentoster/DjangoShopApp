# Generated by Django 3.0.13 on 2021-03-15 15:32

from django.db import migrations, models
import django.db.models.deletion
import oscar.models.fields.slugfield


class Migration(migrations.Migration):

    dependencies = [
        ('catalogue', '0030_auto_20210315_1746'),
    ]

    operations = [
        migrations.CreateModel(
            name='ImportExportCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('path', models.CharField(max_length=255, unique=True)),
                ('depth', models.PositiveIntegerField()),
                ('numchild', models.PositiveIntegerField(default=0)),
                ('name', models.CharField(db_index=True, max_length=255, verbose_name='Name')),
                ('description', models.TextField(blank=True, verbose_name='Description')),
                ('image', models.ImageField(blank=True, max_length=255, null=True, upload_to='categories', verbose_name='Image')),
                ('slug', oscar.models.fields.slugfield.SlugField(max_length=255, verbose_name='Slug')),
                ('is_public', models.BooleanField(db_index=True, default=True, help_text='Show this category in search results and catalogue listings.', verbose_name='Is public')),
                ('ancestors_are_public', models.BooleanField(db_index=True, default=True, help_text='The ancestors of this category are public', verbose_name='Ancestor categories are public')),
            ],
            options={
                'verbose_name': 'Category',
                'verbose_name_plural': 'Categories',
                'ordering': ['path'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='ImportExportProductCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='catalogue.Category', verbose_name='Category')),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='catalogue.Product', verbose_name='Product')),
            ],
            options={
                'verbose_name': 'Product category',
                'verbose_name_plural': 'Product categories',
                'ordering': ['product', 'category'],
                'abstract': False,
                'unique_together': {('product', 'category')},
            },
        ),
    ]