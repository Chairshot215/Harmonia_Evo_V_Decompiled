.class public Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;
.super Ljava/lang/Object;
.source "WeatherWidgetStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$1;,
        Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$WidgetReceiver;,
        Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;
    }
.end annotation


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_PREFIX:Ljava/lang/String; = "[WidgetStatusReceiver]: "

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"

.field private static final WEATHER_WIDGET_STATUS:Ljava/lang/String; = "com.htc.WeatherWidget"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsWidgetResume:Z

.field private mStatusUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;

.field private mWidgetReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mContext:Landroid/content/Context;

    .line 20
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mWidgetReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mIsWidgetResume:Z

    .line 28
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mStatusUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;

    .line 36
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mIsWidgetResume:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mIsWidgetResume:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;)Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mStatusUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;

    return-object v0
.end method


# virtual methods
.method public getWidgetResume()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mIsWidgetResume:Z

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mWidgetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    :cond_0
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mWidgetReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mContext:Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mIsWidgetResume:Z

    .line 62
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mStatusUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;

    .line 63
    return-void
.end method

.method public onInit()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, mFilter:Landroid/content/IntentFilter;
    if-eqz v0, :cond_0

    .line 44
    const-string v1, "com.htc.WeatherWidget"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$WidgetReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$WidgetReceiver;-><init>(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$1;)V

    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mWidgetReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mWidgetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mWidgetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mIsWidgetResume:Z

    .line 51
    return-void
.end method

.method public setDataUpdateCallback(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mStatusUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;

    .line 32
    return-void
.end method
