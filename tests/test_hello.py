import pytest


def test_main_page(client):
    response = client.get("/")
    assert response.data == b"Hello, World"


def test_health_check(client):
    response = client.get("/health")
    assert response.status_code == 200
    assert response.json == {"status": "ok"}
