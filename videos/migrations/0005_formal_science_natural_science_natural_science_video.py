# Generated by Django 2.2.6 on 2019-10-22 01:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('videos', '0004_auto_20191021_1831'),
    ]

    operations = [
        migrations.CreateModel(
            name='Formal_Science',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('formal_science', models.CharField(choices=[('mathematics', 'mathematics'), ('computer science', 'computer science')], max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Natural_Science',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('natural_science', models.CharField(choices=[('chemistry', 'chemistry'), ('biology', 'biology'), ('zoology', 'zoology'), ('physics', 'physics'), ('astronomy', 'astronomy')], max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Natural_Science_Video',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('vid_url', models.URLField(verbose_name='Web Address')),
                ('resId', models.CharField(max_length=255)),
                ('vid_player', models.CharField(choices=[('youtube', 'youtube'), ('vimeo', 'vimeo'), ('national archives', 'national archives')], default='youtube', max_length=40)),
                ('title', models.CharField(max_length=150)),
                ('description', models.TextField()),
                ('tags', models.CharField(max_length=255)),
                ('natural_science', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='science_video', to='videos.Natural_Science')),
                ('subject', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='science_video', to='videos.Subject')),
            ],
        ),
    ]
