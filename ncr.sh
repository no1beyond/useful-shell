#!/bin/bash
nc -l 9000|pv -L 12M| tar xzvf -
