# Contributing to Online Train Reservation System

Thank you for your interest in contributing to the Online Train Reservation System! This document provides guidelines and information for contributors.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [How to Contribute](#how-to-contribute)
- [Pull Request Process](#pull-request-process)
- [Issue Reporting](#issue-reporting)
- [Coding Standards](#coding-standards)
- [Testing](#testing)

## Code of Conduct

This project and everyone participating in it is governed by our [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## Getting Started

1. Fork the repository on GitHub
2. Clone your fork locally
3. Create a new branch for your feature or bug fix
4. Make your changes
5. Test your changes
6. Submit a pull request

## Development Setup

### Prerequisites

- Java 8 or higher
- Apache Tomcat 10.1
- MySQL Database
- IDE (Eclipse, IntelliJ IDEA, or VS Code)

### Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/Online-Train-Reservation-System.git
   cd Online-Train-Reservation-System
   ```

2. **Database Setup:**
   - Create a MySQL database named `train_reservation`
   - Import the database schema (if available)
   - Update database connection details in `Connection_DB.java`

3. **IDE Configuration:**
   - Import the project as a Maven/Gradle project
   - Configure Tomcat server
   - Set up the project to run on Tomcat

4. **Build and Run:**
   - Build the project
   - Deploy to Tomcat server
   - Access the application at `http://localhost:8080/TrainGO`

## How to Contribute

### Types of Contributions

We welcome several types of contributions:

- **Bug Reports**: Report bugs and issues
- **Feature Requests**: Suggest new features
- **Code Contributions**: Fix bugs or implement features
- **Documentation**: Improve documentation
- **Testing**: Add or improve tests

### Bug Reports

When reporting bugs, please include:

- A clear and descriptive title
- Steps to reproduce the issue
- Expected behavior
- Actual behavior
- Screenshots (if applicable)
- Environment details (OS, Java version, Tomcat version)

### Feature Requests

When requesting features, please include:

- A clear and descriptive title
- Detailed description of the feature
- Use cases and benefits
- Possible implementation approach (if you have ideas)

## Pull Request Process

1. **Create a Feature Branch:**
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make Your Changes:**
   - Write clean, readable code
   - Follow the coding standards
   - Add comments where necessary
   - Test your changes thoroughly

3. **Commit Your Changes:**
   ```bash
   git add .
   git commit -m "Add: brief description of changes"
   ```

4. **Push to Your Fork:**
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Create a Pull Request:**
   - Go to the original repository
   - Click "New Pull Request"
   - Select your branch
   - Fill out the pull request template
   - Submit the pull request

### Pull Request Guidelines

- Use a clear and descriptive title
- Provide a detailed description of changes
- Reference any related issues
- Ensure all tests pass
- Update documentation if necessary
- Keep pull requests focused and atomic

## Issue Reporting

### Before Creating an Issue

1. Check if the issue already exists
2. Search through closed issues
3. Try to reproduce the issue
4. Gather relevant information

### Creating an Issue

Use the appropriate issue template and provide:

- **Bug Report**: Use the bug report template
- **Feature Request**: Use the feature request template
- **Question**: Use the question template

## Coding Standards

### Java Code Style

- Use meaningful variable and method names
- Follow Java naming conventions
- Add proper comments and JavaDoc
- Keep methods focused and small
- Use proper exception handling

### Code Organization

- Place servlets in the `Controller` package
- Use proper package structure
- Separate concerns (Model, View, Controller)
- Follow MVC pattern

### Example Code Style

```java
/**
 * Handles user login functionality
 * @param request HTTP request object
 * @param response HTTP response object
 * @throws ServletException if servlet error occurs
 * @throws IOException if I/O error occurs
 */
public class LoginServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Implementation here
    }
}
```

## Testing

### Testing Guidelines

- Write unit tests for new functionality
- Test edge cases and error conditions
- Ensure backward compatibility
- Test with different browsers (for web components)

### Running Tests

```bash
# Run all tests
mvn test

# Run specific test class
mvn test -Dtest=TestClassName
```

## Documentation

### Code Documentation

- Add JavaDoc comments for public methods
- Document complex algorithms
- Include usage examples
- Keep README updated

### API Documentation

- Document all servlet endpoints
- Include request/response formats
- Provide example requests
- Document error codes

## Release Process

1. Update version numbers
2. Update CHANGELOG.md
3. Create release notes
4. Tag the release
5. Deploy to production

## Getting Help

- Check existing issues and discussions
- Join our community discussions
- Contact maintainers for urgent issues

## Recognition

Contributors will be recognized in:
- CONTRIBUTORS.md file
- Release notes
- Project documentation

Thank you for contributing to the Online Train Reservation System!
