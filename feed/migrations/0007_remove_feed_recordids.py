# Generated by Django 4.0.3 on 2022-06-20 08:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feed', '0006_alter_feed_recordids'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='feed',
            name='recordIds',
        ),
    ]
