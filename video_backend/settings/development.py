from video_backend.settings.common import *

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '@$*73ns3og@uwijd*a)ko#zsebdtg*ub3vzs^11z4q@o%rw_rm'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True


# Database
# https://docs.djangoproject.com/en/2.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'videos_db',
        'USER': 'dpcii',
        'PASSWORD': '123',
        'HOST': 'localhost',
    }
}
