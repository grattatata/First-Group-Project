# Generated by Django 4.0.3 on 2022-06-18 13:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('feed', '0004_feed_record'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='feed',
            name='record',
        ),
        migrations.AddField(
            model_name='feed',
            name='recordIds',
            field=models.CharField(blank=True, max_length=100),
        ),
    ]
