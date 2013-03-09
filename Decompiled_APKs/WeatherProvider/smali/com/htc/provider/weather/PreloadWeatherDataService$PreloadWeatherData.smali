.class Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;
.super Ljava/lang/Thread;
.source "PreloadWeatherDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/weather/PreloadWeatherDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadWeatherData"
.end annotation


# instance fields
.field private DCSConnection:Landroid/content/ServiceConnection;

.field private context:Landroid/content/Context;

.field private dcsCallback:Lcom/htc/dcs/DCSCallback;

.field private params:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/provider/weather/PreloadWeatherDataService;


# direct methods
.method public constructor <init>(Lcom/htc/provider/weather/PreloadWeatherDataService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->this$0:Lcom/htc/provider/weather/PreloadWeatherDataService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->context:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->params:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData$1;

    invoke-direct {v0, p0}, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData$1;-><init>(Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;)V

    iput-object v0, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->DCSConnection:Landroid/content/ServiceConnection;

    .line 69
    new-instance v0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData$2;

    invoke-direct {v0, p0}, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData$2;-><init>(Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;)V

    iput-object v0, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->dcsCallback:Lcom/htc/dcs/DCSCallback;

    .line 42
    iput-object p2, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->params:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;)Lcom/htc/dcs/DCSCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->dcsCallback:Lcom/htc/dcs/DCSCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->DCSConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 82
    iget-object v7, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.htc.elroy.Weather"

    invoke-static {v7, v8}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v6

    .line 83
    .local v6, wls:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-ge v7, v10, :cond_1

    .line 84
    :cond_0
    const-string v7, "Provider"

    const-string v8, "[WeatherProviderPreload] no pre-defined weather cities"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v7, "Provider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[WeatherProviderPreload] pre-load weather data, total cities: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    move-object v0, v6

    .local v0, arr$:[Lcom/htc/util/weather/WeatherLocation;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v5, v0, v1

    .line 91
    .local v5, wl:Lcom/htc/util/weather/WeatherLocation;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v4, param:Landroid/os/Bundle;
    const-string v7, "cityCode"

    invoke-virtual {v5}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v7, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->params:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    .end local v4           #param:Landroid/os/Bundle;
    .end local v5           #wl:Lcom/htc/util/weather/WeatherLocation;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.htc.dcs.DCS"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "DCSService"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v7, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/provider/weather/PreloadWeatherDataService$PreloadWeatherData;->DCSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v2, v8, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method
