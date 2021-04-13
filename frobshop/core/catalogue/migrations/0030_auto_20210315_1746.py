# Generated by Django 3.0.13 on 2021-03-15 14:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalogue', '0029_product_attribute'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='article',
            field=models.TextField(default='null', max_length=30),
        ),
        migrations.AddField(
            model_name='product',
            name='category',
            field=models.TextField(default='null', max_length=20),
        ),
        migrations.AddField(
            model_name='product',
            name='seo_name_for_site',
            field=models.TextField(default='null', max_length=50),
        ),
        migrations.AddField(
            model_name='product',
            name='series',
            field=models.TextField(default='null', max_length=20),
        ),
        migrations.AlterField(
            model_name='product',
            name='attribute',
            field=models.TextField(default='null', max_length=10),
        ),
        migrations.AlterField(
            model_name='product',
            name='barcode',
            field=models.TextField(default='null', max_length=13),
        ),
    ]