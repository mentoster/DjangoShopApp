# Generated by Django 3.0.13 on 2021-03-07 14:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalogue', '0024_auto_20210307_1722'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Person',
        ),
        migrations.CreateModel(
            name='MyProduct',
            fields=[
            ],
            options={
                'proxy': True,
                'indexes': [],
                'constraints': [],
            },
            bases=('catalogue.product',),
        ),
        migrations.AddField(
            model_name='product',
            name='video_url',
            field=models.URLField(default='com.com'),
            preserve_default=False,
        ),
    ]