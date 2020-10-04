# -*- coding: utf-8 -*-
""" Serializers to 'main' app """
from rest_framework import serializers

from .models import SampleData


class SampleDataSerializer(serializers.HyperlinkedModelSerializer):
    id = serializers.IntegerField()

    class Meta:
        model = SampleData
        fields = '__all__'  # Need refactoring if we do not want to expose all fields
