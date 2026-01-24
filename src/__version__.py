from pathlib import Path

def _read_version() -> str:
    """Read version from assets/update/.version file."""
    # Try to find version file relative to this file's location
    version_file = Path(__file__).parent.parent / "assets" / "update" / ".version"
    
    if version_file.exists():
        return version_file.read_text().strip()
    
    # Fallback for Docker container path
    docker_version_file = Path("/opt/remnashop/assets/update/.version")
    if docker_version_file.exists():
        return docker_version_file.read_text().strip()
    
    return "0.0.0"

__version__ = _read_version()
