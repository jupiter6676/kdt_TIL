# Generated by Django 3.2.13 on 2022-10-07 06:29

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('reviews', '0005_alter_movie_img'),
    ]

    operations = [
        migrations.RenameField(
            model_name='review',
            old_name='movie_id',
            new_name='movie',
        ),
    ]