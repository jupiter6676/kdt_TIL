# Generated by Django 3.2.13 on 2022-10-17 08:27

from django.db import migrations, models
import imagekit.models.fields


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0003_auto_20221017_1722'),
    ]

    operations = [
        migrations.AddField(
            model_name='article',
            name='thumbnail',
            field=imagekit.models.fields.ProcessedImageField(blank=True, upload_to='thumbnails/'),
        ),
        migrations.AlterField(
            model_name='article',
            name='image',
            field=models.ImageField(blank=True, upload_to='images/'),
        ),
    ]
