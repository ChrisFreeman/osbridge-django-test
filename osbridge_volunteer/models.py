# -*- coding: utf-8 -*-

from django.db import models

class DeployCheck(models.Model):
    """
    Group classification for tasks.
    """
    slug = models.SlugField(
        max_length=50, 
        help_text="Used for database and URL reference (lowercase w/no spaces)")
    name = models.CharField(max_length=50, unique=True)
