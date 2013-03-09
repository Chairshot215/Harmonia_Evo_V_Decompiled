.class Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData$2;
.super Lcom/htc/dcs/DCSCallback$Stub;
.source "PreloadWeatherDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;


# direct methods
.method constructor <init>(Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData$2;->this$1:Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;

    invoke-direct {p0}, Lcom/htc/dcs/DCSCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveDCSResult(Ljava/lang/String;[Landroid/os/Bundle;)V
    .locals 2
    .parameter "serviceCode"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, "DCSWeatherService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "Provider"

    const-string v1, "[WeatherProviderPreload] pre-load weather data finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData$2;->this$1:Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;

    #getter for: Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->access$300(Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData$2;->this$1:Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;

    #getter for: Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->DCSConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->access$200(Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 76
    :cond_0
    return-void
.end method
