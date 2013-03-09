.class Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData$1;
.super Ljava/lang/Object;
.source "PreloadWeatherDataService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 45
    iput-object p1, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData$1;->this$1:Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .parameter "name"
    .parameter "iBinder"

    .prologue
    .line 48
    invoke-static {p2}, Lcom/htc/dcs/DCS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dcs/DCS;

    move-result-object v0

    .line 51
    .local v0, dcs:Lcom/htc/dcs/DCS;
    :try_start_0
    const-string v1, "DCSWeatherService"

    const-string v2, "com.htc.provider.weather.CustomizeReceiver.PreloadWeatherData"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData$1;->this$1:Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;

    #getter for: Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->params:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->access$000(Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/Bundle;

    iget-object v10, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData$1;->this$1:Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;

    #getter for: Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->dcsCallback:Lcom/htc/dcs/DCSCallback;
    invoke-static {v10}, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->access$100(Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;)Lcom/htc/dcs/DCSCallback;

    move-result-object v10

    invoke-interface/range {v0 .. v10}, Lcom/htc/dcs/DCS;->scheduleTask(Ljava/lang/String;Ljava/lang/String;JJILandroid/os/Bundle;[Landroid/os/Bundle;Lcom/htc/dcs/DCSCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v11

    .line 61
    .local v11, e:Landroid/os/RemoteException;
    const-string v1, "Provider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WeatherProviderPreload] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 66
    return-void
.end method
