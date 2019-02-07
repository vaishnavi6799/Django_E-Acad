

from django.db import migrations


def create_semesters(apps, schema_editor):
    Semester = apps.get_model('classroom', 'Semester')
    Semester.objects.create(sem='1')
    Semester.objects.create(sem='2')
    Semester.objects.create(sem='3')
    Semester.objects.create(sem='4')
    Semester.objects.create(sem='5')
    Semester.objects.create(sem='6')
    Semester.objects.create(sem='7')
    Semester.objects.create(sem='8')



class Migration(migrations.Migration):

    dependencies = [
        ('classroom', '0001_initial'),
    ]

    operations = [
        migrations.RunPython(create_semesters),
    ]