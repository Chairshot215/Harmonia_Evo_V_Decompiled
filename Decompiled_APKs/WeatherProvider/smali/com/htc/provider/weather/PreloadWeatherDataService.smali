.class public Lcom/htc/provider/weather/PreloadWeatherDataService;
.super Landroid/app/Service;
.source "PreloadWeatherDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Provider"

.field private static final PREFIX:Ljava/lang/String; = "[WeatherProviderPreload] "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 34
    new-instance v0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;

    invoke-direct {v0, p0, p0}, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;-><init>(Lcom/htc/provider/weather/PreloadWeatherDataService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->start()V

    .line 35
    return-void
.end method
