# Generated by Django 4.0.3 on 2022-06-20 00:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('feed', '0005_remove_feed_record_feed_recordids'),
    ]

    operations = [
        migrations.AlterField(
            model_name='feed',
            name='recordIds',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]
