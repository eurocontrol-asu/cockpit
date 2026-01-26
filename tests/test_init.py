"""Basic tests to verify package setup."""

from cockpit import __version__


def test_version_exists():
    """Verify version is defined."""
    assert __version__ is not None
    assert isinstance(__version__, str)


def test_version_format():
    """Verify version follows semver format."""
    parts = __version__.split(".")
    assert len(parts) == 3
    for part in parts:
        assert part.isdigit()
