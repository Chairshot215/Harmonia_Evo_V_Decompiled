.class Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;


# direct methods
.method private constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;-><init>(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 478
    if-nez p2, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, ""

    .line 484
    .local v0, mAction:Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_3

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 485
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #setter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mStopSoundInCase:Z
    invoke-static {v2, v3}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1102(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Z)Z

    .line 486
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #setter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mUsrPlay:Z
    invoke-static {v2, v3}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1202(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Z)Z

    .line 487
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #setter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIdlePlay:Z
    invoke-static {v2, v3}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1302(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Z)Z

    .line 488
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStopEffect(Z)V
    invoke-static {v2, v3}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1400(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Z)V

    .line 489
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->clearPausedStatus()V
    invoke-static {v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1500(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V

    goto :goto_0

    .line 479
    .end local v0           #mAction:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 491
    .restart local v0       #mAction:Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 493
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    invoke-virtual {v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsVisible:Z
    invoke-static {v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1600(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #setter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mUsrPlay:Z
    invoke-static {v2, v4}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1202(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Z)Z

    goto :goto_0

    .line 497
    :cond_4
    if-eqz v0, :cond_6

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 498
    const-string v2, "extra_unlock_type"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 500
    .local v1, type:I
    if-lez v1, :cond_5

    .line 502
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    invoke-virtual {v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v2

    if-nez v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #setter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mStopSoundInCase:Z
    invoke-static {v2, v4}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1102(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Z)Z

    goto :goto_0

    .line 508
    :cond_5
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    invoke-virtual {v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsVisible:Z
    invoke-static {v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1600(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnterSetting:Z

    if-nez v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setPlayerFlag(Z)V
    invoke-static {v2, v4}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1700(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Z)V

    .line 513
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStartEffect()V
    invoke-static {v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1800(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V

    goto/16 :goto_0

    .line 518
    .end local v1           #type:I
    :cond_6
    if-eqz v0, :cond_7

    const-string v2, "com.htc.weatherlivewallpaper.RESUME_PLAYING_VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 519
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStartEffect()V
    invoke-static {v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1800(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V

    goto/16 :goto_0

    .line 521
    :cond_7
    if-eqz v0, :cond_0

    const-string v2, "com.htc.weatherlivewallpaper.START_PLAYING_VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;->this$1:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStartEffect()V
    invoke-static {v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$1800(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V

    goto/16 :goto_0
.end method
