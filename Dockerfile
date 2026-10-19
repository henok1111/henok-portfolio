FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

COPY ["Portfolio.Api/Portfolio.Api.csproj", "Portfolio.Api/"]
RUN dotnet restore "Portfolio.Api/Portfolio.Api.csproj"

COPY . .
WORKDIR "/src/Portfolio.Api"
RUN dotnet build "Portfolio.Api.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Portfolio.Api.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app
EXPOSE 8080
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Portfolio.Api.dll"]