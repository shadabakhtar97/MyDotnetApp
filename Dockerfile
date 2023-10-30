
   # Use the official ASP.NET Core runtime as a parent image
   FROM mcr.microsoft.com/dotnet/aspnet:5.0

   # Set the working directory to /app
   WORKDIR /app

   # Copy the published API application to the container
   COPY ./MyDotnetApp/bin/Release/net5.0/publish/ .

   # Define the entry point for your application
   ENTRYPOINT ["dotnet", "MyDotnetApp.dll"]
