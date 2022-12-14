# Generated by Django 4.0.3 on 2022-06-16 07:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('record', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='record',
            old_name='duration',
            new_name='bodyParts',
        ),
        migrations.RemoveField(
            model_name='record',
            name='createdTime',
        ),
        migrations.RemoveField(
            model_name='record',
            name='updatedTime',
        ),
        migrations.AddField(
            model_name='record',
            name='counts',
            field=models.TextField(blank=True, max_length=1000),
        ),
        migrations.AddField(
            model_name='record',
            name='durations',
            field=models.TextField(blank=True, max_length=1000),
        ),
        migrations.AddField(
            model_name='record',
            name='sets',
            field=models.TextField(blank=True, max_length=1000),
        ),
        migrations.AddField(
            model_name='record',
            name='totalTime',
            field=models.TextField(blank=True, max_length=1000),
        ),
    ]
