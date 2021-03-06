from django.db import models

# Create your models here.


class Subject(models.Model):
    HISTORY = 'History'
    SCIENCE = 'Science'
    SUBJECTS_CHOICES = [
        (HISTORY, 'History'),
        (SCIENCE, 'Science')
    ]
    topic = models.CharField(
        max_length=50,
        choices=SUBJECTS_CHOICES,
    )

    def __str__(self):
        return self.topic


class Region(models.Model):
    EUROPE = 'Europe'
    AFRICA = 'Africa'
    ASIA = 'Asia'
    NORTH_AMERICA = 'North America'
    NO_REGION = 'No Specific Region'

    REGION_CHOICES = [
        (EUROPE, 'Europe'),
        (AFRICA, 'Africa'),
        (ASIA, 'Asia'),
        (NORTH_AMERICA, 'North America'),
        (NO_REGION, 'No Specific Region'),
    ]
    region = models.CharField(
        max_length=55,
        choices=REGION_CHOICES,
        default=NO_REGION
    )

    def __str__(self):
        return self.region


class Time_Period(models.Model):
    EARLY_MODERN = 'Early Modern'
    MODERN = 'Modern'
    TIME_CHOICES = [
        (EARLY_MODERN, 'Early Modern'),
        (MODERN, 'Modern')
    ]
    era = models.CharField(
        max_length=100,
        choices=TIME_CHOICES,
    )

    def __str__(self):
        return self.era


class Video_Entry(models.Model):
    YOUTUBE = "youtube"
    VIMEO = "vimeo"
    NATIONAL_ARCHIVES = "national archives"
    PLAYER_CHOICES = [
        (YOUTUBE, 'youtube'),
        (VIMEO, 'vimeo'),
        (NATIONAL_ARCHIVES, 'national archives')
    ]

    vid_url = models.URLField('Web Address')
    resId = models.CharField(max_length=255, null=True)
    vid_player = models.CharField(
        max_length=40,
        choices=PLAYER_CHOICES,
        default=YOUTUBE,
    )
    description = models.TextField()
    tags = models.CharField(max_length=225)
    era = models.ForeignKey(Time_Period, on_delete=models.CASCADE, related_name="video_entry")
    subject = models.ForeignKey(Subject, on_delete=models.CASCADE, related_name="video_entry")
    region = models.ForeignKey(Region, on_delete=models.CASCADE, related_name="video_entry")
    title = models.CharField(max_length=150)

    def __str__(self):
        return self.title


class Formal_Science(models.Model):
    MATHEMATICS = 'mathematics'
    COMPUTER_SCIENCE = 'computer science'
    DISCIPLINE_CHOICES = [
        (MATHEMATICS, 'mathematics'),
        (COMPUTER_SCIENCE, 'computer science'),
    ]
    formal_science = models.CharField(
        choices=DISCIPLINE_CHOICES,
        max_length=100
        )

    def __str__(self):
        return self.formal_science


class Natural_Science(models.Model):
    CHEMISTRY = 'chemistry'
    BIOLOGY = 'biology'
    ZOOLOGY = 'zoology'
    PHYSICS = 'physics'
    ASTRONOMY = 'astronomy'
    DISCIPLINE_CHOICES = [
        (CHEMISTRY, 'chemistry'),
        (BIOLOGY, 'biology'),
        (ZOOLOGY, 'zoology'),
        (PHYSICS, 'physics'),
        (ASTRONOMY, 'astronomy'),
    ]
    natural_science = models.CharField(
        choices=DISCIPLINE_CHOICES,
        max_length=100
    )

    def __str__(self):
        return self.natural_science


class Natural_Science_Video(models.Model):
    YOUTUBE = "youtube"
    VIMEO = "vimeo"
    NATIONAL_ARCHIVES = "national archives"
    PLAYER_CHOICES = [
        (YOUTUBE, 'youtube'),
        (VIMEO, 'vimeo'),
        (NATIONAL_ARCHIVES, 'national archives'),
    ]
    vid_url = models.URLField('Web Address')
    resId = models.CharField(max_length=255)
    vid_player = models.CharField(
        max_length=40,
        choices=PLAYER_CHOICES,
        default=YOUTUBE,
    )
    title = models.CharField(max_length=150)
    description = models.TextField()
    subject = models.ForeignKey(Subject, on_delete=models.CASCADE, related_name="science_video")
    natural_science = models.ForeignKey(Natural_Science, on_delete=models.CASCADE, related_name="science_video")
    tags = models.CharField(max_length=255)

    def __str__(self):
        return self.title
