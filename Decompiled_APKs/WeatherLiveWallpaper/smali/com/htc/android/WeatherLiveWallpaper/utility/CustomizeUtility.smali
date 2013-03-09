.class public Lcom/htc/android/WeatherLiveWallpaper/utility/CustomizeUtility;
.super Ljava/lang/Object;
.source "CustomizeUtility.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"

.field private static final PREFIX:Ljava/lang/String; = "[CustomizeUtility]: "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disconnectMediaPlayer(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxVideoTexture;I)Z
    .locals 8
    .parameter "FxTLC_Video"
    .parameter "FxVT"
    .parameter "FRAME_FADEOUT"

    .prologue
    const/4 v7, 0x0

    .line 38
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 39
    .local v2, mDisconnected:Ljava/lang/Boolean;
    const/4 v1, 0x0

    .line 40
    .local v1, mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .line 41
    .local v3, mRetryTimes:I
    :cond_0
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    if-eqz p1, :cond_3

    .line 42
    if-eqz p1, :cond_0

    .line 44
    if-nez v1, :cond_1

    .line 45
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->disconnectMediaPlayer()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 47
    :cond_1
    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mDisconnected:Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .restart local v2       #mDisconnected:Ljava/lang/Boolean;
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 66
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 49
    .end local v2           #mDisconnected:Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 52
    .restart local v2       #mDisconnected:Ljava/lang/Boolean;
    if-eqz p0, :cond_2

    .line 53
    add-int/lit8 v4, p2, -0x1

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_1

    .line 55
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    .end local v2           #mDisconnected:Ljava/lang/Boolean;
    :catch_1
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .restart local v2       #mDisconnected:Ljava/lang/Boolean;
    goto :goto_1

    .line 61
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getKeyguardIsShowing(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, mKeyguardManager:Landroid/app/HtcIfKeyguardManager;
    if-eqz p0, :cond_0

    .line 26
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mKeyguardManager:Landroid/app/HtcIfKeyguardManager;
    check-cast v1, Landroid/app/HtcIfKeyguardManager;

    .line 27
    .restart local v1       #mKeyguardManager:Landroid/app/HtcIfKeyguardManager;
    :cond_0
    const/4 v0, 0x0

    .line 28
    .local v0, isShow:Z
    if-eqz v1, :cond_1

    .line 29
    invoke-interface {v1}, Landroid/app/HtcIfKeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 32
    :cond_1
    return v0
.end method
