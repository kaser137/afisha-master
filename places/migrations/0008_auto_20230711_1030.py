# Generated by Django 3.2.20 on 2023-07-11 07:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('places', '0007_alter_image_place'),
    ]

    operations = [
        migrations.AlterField(
            model_name='place',
            name='description_long',
            field=models.TextField(blank=True, verbose_name='Полное описание'),
        ),
        migrations.AlterField(
            model_name='place',
            name='description_short',
            field=models.TextField(blank=True, verbose_name='Краткое описание'),
        ),
    ]
