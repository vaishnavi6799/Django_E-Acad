# Generated by Django 2.0.6 on 2018-10-17 07:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('classroom', '0003_vote'),
    ]

    operations = [
        migrations.AddField(
            model_name='vote',
            name='approve',
            field=models.BooleanField(default=False),
        ),
    ]
