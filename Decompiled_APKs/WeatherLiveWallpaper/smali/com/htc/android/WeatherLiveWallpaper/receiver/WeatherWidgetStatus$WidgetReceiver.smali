.class Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$WidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherWidgetStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;


# direct methods
.method private constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$WidgetReceiver;->this$0:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$WidgetReceiver;-><init>(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 76
    if-nez p2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, mAction:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.htc.WeatherWidget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$WidgetReceiver;->this$0:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    const-string v2, "_playSound"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mIsWidgetResume:Z
    invoke-static {v1, v2}, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->access$102(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;Z)Z

    .line 84
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$WidgetReceiver;->this$0:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mStatusUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->access$200(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;)Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$WidgetReceiver;->this$0:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mStatusUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->access$200(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;)Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$WidgetReceiver;->this$0:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->mIsWidgetResume:Z
    invoke-static {v2}, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->access$100(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;->onStatusUpdate(Z)V

    goto :goto_0
.end method
