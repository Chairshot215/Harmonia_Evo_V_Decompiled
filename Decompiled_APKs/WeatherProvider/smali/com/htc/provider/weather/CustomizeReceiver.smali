.class public Lcom/htc/provider/weather/CustomizeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CustomizeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;
    }
.end annotation


# static fields
.field public static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field public static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Provider"

.field private static final PREFIX:Ljava/lang/String; = "[WeatherProviderCustomization] "

.field private static final PRELOAD_WEATHER_DATA:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/provider/weather/CustomizeReceiver;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    move-object p3, v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/provider/weather/CustomizeReceiver$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/htc/provider/weather/CustomizeReceiver$1;-><init>(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 48
    const-string v2, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CID"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.htc.FOTA_UPGRADE"

    const-string v3, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    const-string v2, "Provider"

    const-string v3, "[WeatherProviderCustomization] receive intent android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE, to load customize settings"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v2, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;

    invoke-direct {v2, p0, p1}, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;-><init>(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/htc/provider/weather/CustomizeReceiver$CustomizeDataLoader;->start()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v2, "com.android.settings.wifi.wifi_connected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const-string v2, "Provider"

    const-string v3, "[WeatherProviderCustomization] receive intent com.android.settings.wifi.wifi_connected, to load weather data"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/provider/weather/PreloadWeatherDataService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v1, preloadWeatherDataIntent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
