from django.db import models

# Default field lengths
# 'Description' will be a TextField / TextArea
NAME_FIELD_LENGTH = 100


class SampleData(models.Model):
    """ Sample data for BluePrint """
    name = models.CharField(max_length=NAME_FIELD_LENGTH)
    description = models.TextField()

    def __str__(self):
        return f"{self.pk} - {self.name}"
