#!/bin/bash

source venv/bin/activate

whisper tests/fixtures/withnail.m4a --model large --language English
