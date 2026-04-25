# Use OpenJDK base image (Java runtime + compiler)
# Note: 27-ea is an early-access version (not recommended for production)
FROM openjdk:27-ea-trixie

# Set working directory inside container
# All next commands (COPY, RUN, CMD) will execute inside /app
WORKDIR /app

# Copy everything from your current local folder (host)
# into the container's /app directory
COPY . .

# Compile the Java file
# -d . => puts compiled .class file into current directory (/app)
# src/Main.java => source file location
RUN javac -d . src/Main.java

# Expose port 8000 (for documentation purpose only)
# This does NOT automatically open the port
EXPOSE 8000

# Default command to run when container starts
# Runs the compiled Java class (Main.class)
CMD ["java", "Main"]