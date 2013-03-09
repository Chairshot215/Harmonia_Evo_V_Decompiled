.class Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;
.super Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;
.source "WeatherWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;
    }
.end annotation


# static fields
.field private static final M10_PORT:Ljava/lang/String; = "Port/Weather_wallpaper.m10"


# instance fields
.field private PREFIX_ENGINE:Ljava/lang/String;

.field private mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

.field private mFxScene:Lcom/htc/fusion/fx/FxScene;

.field private mHaveDataUpdated:Z

.field private mHavePIForPlayVideo:Z

.field private mIdlePlay:Z

.field private mIsPortrait:Z

.field private mIsVisible:Z

.field private mJustCreate:Z

.field private mPlayMedia:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundHandler:Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;

.field private mStopSoundInCase:Z

.field private mUsrPlay:Z

.field private mVideoIndex:I

.field private mbPreferenceChanged:Z

.field final synthetic this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;


# direct methods
.method private constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    invoke-direct {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;-><init>(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;)V

    .line 174
    const-string v0, "[WeatherEngine_Wallpaper]: "

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->PREFIX_ENGINE:Ljava/lang/String;

    .line 178
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 179
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    .line 181
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mSoundHandler:Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;

    .line 186
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsVisible:Z

    .line 187
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHavePIForPlayVideo:Z

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsPortrait:Z

    .line 191
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mJustCreate:Z

    .line 192
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mUsrPlay:Z

    .line 193
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIdlePlay:Z

    .line 194
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mPlayMedia:Z

    .line 195
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHaveDataUpdated:Z

    .line 197
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mStopSoundInCase:Z

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mVideoIndex:I

    .line 201
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mbPreferenceChanged:Z

    .line 473
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;-><init>(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mStopSoundInCase:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mUsrPlay:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIdlePlay:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStopEffect(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->clearPausedStatus()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setPlayerFlag(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStartEffect()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->notifyPreferenceChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onDataUpdated()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->stopSoundPlayer()V

    return-void
.end method

.method private canPlayEffect()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsVisible:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnterSetting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPlayerFlag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 602
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-boolean v0, v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsDockMode:Z

    if-eqz v0, :cond_0

    .line 603
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mStopSoundInCase:Z

    .line 604
    invoke-direct {p0, v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setPlayerFlag(Z)V

    .line 656
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mJustCreate:Z

    if-eqz v0, :cond_2

    .line 608
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIdlePlay:Z

    if-eqz v0, :cond_1

    .line 610
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mStopSoundInCase:Z

    .line 612
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setPlayerFlag(Z)V

    goto :goto_0

    .line 614
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mUsrPlay:Z

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->checkDateOverDue()Z
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$2100(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z

    .line 618
    invoke-direct {p0, v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setPlayerFlag(Z)V

    goto :goto_0

    .line 620
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIdlePlay:Z

    if-eqz v0, :cond_4

    .line 622
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mStopSoundInCase:Z

    .line 623
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->checkDateOverDue()Z
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$2100(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z

    .line 624
    invoke-direct {p0, v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setPlayerFlag(Z)V

    goto :goto_0

    .line 626
    :cond_4
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mbPreferenceChanged:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnterSetting:Z

    if-nez v0, :cond_5

    .line 628
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->checkDateOverDue()Z
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$2100(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z

    .line 629
    invoke-direct {p0, v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setPlayerFlag(Z)V

    goto :goto_0

    .line 631
    :cond_5
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHaveDataUpdated:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnterSetting:Z

    if-nez v0, :cond_6

    .line 634
    invoke-direct {p0, v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setPlayerFlag(Z)V

    goto :goto_0

    .line 636
    :cond_6
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->checkDateOverDue()Z
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$2100(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnterSetting:Z

    if-nez v0, :cond_8

    .line 638
    iget v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mVideoIndex:I

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getCurrentVideoIndex()I
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$1000(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 640
    invoke-direct {p0, v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setPlayerFlag(Z)V

    goto :goto_0

    .line 643
    :cond_7
    invoke-direct {p0, v3}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setPlayerFlag(Z)V

    goto :goto_0

    .line 646
    :cond_8
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsVisible:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnterSetting:Z

    if-eqz v0, :cond_9

    .line 649
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mStopSoundInCase:Z

    .line 650
    invoke-direct {p0, v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setPlayerFlag(Z)V

    goto/16 :goto_0

    .line 654
    :cond_9
    invoke-direct {p0, v3}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setPlayerFlag(Z)V

    goto/16 :goto_0
.end method

.method private clearPausedStatus()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    invoke-virtual {v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->clearPausedStatus()V

    .line 462
    :cond_0
    return-void
.end method

.method private notifyPreferenceChanged()V
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mbPreferenceChanged:Z

    .line 673
    return-void
.end method

.method private onDataUpdated()V
    .locals 2

    .prologue
    .line 439
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getCurrentVideoIndex()I
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$1000(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)I

    move-result v0

    .line 441
    .local v0, mNewVideoIndex:I
    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mVideoIndex:I

    if-eq v1, v0, :cond_0

    .line 442
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHaveDataUpdated:Z

    .line 443
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->clearPausedStatus()V

    .line 444
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->canPlayEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStartEffect()V

    .line 448
    :cond_0
    return-void
.end method

.method private onDestroyFxScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    invoke-virtual {v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->onDestroy()V

    .line 387
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    .line 389
    :cond_0
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 390
    return-void
.end method

.method private onInitFxScene()V
    .locals 8

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    if-nez v0, :cond_0

    .line 364
    const-string v0, "Port/Weather_wallpaper.m10"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 365
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 368
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-object v1, v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    iget-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsPortrait:Z

    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v4

    iget-object v5, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-boolean v5, v5, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsDockMode:Z

    iget v6, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mVideoIndex:I

    iget-object v7, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-object v7, v7, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mResContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v7}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;ZZZILandroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    .line 372
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-boolean v1, v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsDockMode:Z

    invoke-virtual {v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->setLoopingMode(Z)V

    .line 380
    :cond_0
    return-void
.end method

.method private onInitScreenReceiver()V
    .locals 3

    .prologue
    .line 531
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 532
    .local v0, filter:Landroid/content/IntentFilter;
    if-eqz v0, :cond_0

    .line 533
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v1, "com.htc.weatherlivewallpaper.RESUME_PLAYING_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v1, "com.htc.weatherlivewallpaper.START_PLAYING_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 540
    new-instance v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine$ScreenReceiver;-><init>(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$1;)V

    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 541
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 543
    :cond_1
    return-void
.end method

.method private declared-synchronized onStartEffect()V
    .locals 3

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHavePIForPlayVideo:Z

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-object v1, v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.weatherlivewallpaper.START_PLAYING_VIDEO"

    invoke-static {v1, v2}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 397
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHavePIForPlayVideo:Z

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mHaveDataCallback:Z
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$100(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 421
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 404
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->canPlayEffect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->checkPlayerFlag()V

    .line 408
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getCurrentVideoPath()Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$800(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, videoPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getVideoIndex(Ljava/lang/String;)I
    invoke-static {v1, v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$900(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mVideoIndex:I

    .line 410
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    if-eqz v1, :cond_3

    .line 411
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    iget v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mVideoIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->setVideoIndex(I)V

    .line 412
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    invoke-virtual {v1, v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->setVideoPath(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mPlayMedia:Z

    invoke-virtual {v1, v2}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->onStartEffect(Z)V

    .line 416
    :cond_3
    iget-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mPlayMedia:Z

    if-eqz v1, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->startSoundPlayer()V

    .line 418
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mPlayMedia:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 395
    .end local v0           #videoPath:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onStopEffect(Z)V
    .locals 2
    .parameter "justPause"

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHavePIForPlayVideo:Z

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-object v0, v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.weatherlivewallpaper.START_PLAYING_VIDEO"

    invoke-static {v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHavePIForPlayVideo:Z

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    invoke-virtual {v0, p1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->onStopEffect(Z)Z

    .line 433
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->stopSoundPlayer()V

    .line 434
    return-void
.end method

.method private setPlayerFlag(Z)V
    .locals 2
    .parameter "isVideo"

    .prologue
    const/4 v1, 0x0

    .line 661
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mPlayMedia:Z

    .line 662
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIdlePlay:Z

    .line 663
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mUsrPlay:Z

    .line 664
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mJustCreate:Z

    .line 665
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mbPreferenceChanged:Z

    .line 666
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHaveDataUpdated:Z

    .line 667
    return-void

    :cond_0
    move v0, v1

    .line 661
    goto :goto_0
.end method

.method private startSoundPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 566
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-boolean v1, v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsDockMode:Z

    if-eqz v1, :cond_1

    .line 567
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mStopSoundInCase:Z

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnableSound:Z
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$2000(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mStopSoundInCase:Z

    if-eqz v1, :cond_3

    .line 571
    :cond_2
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mStopSoundInCase:Z

    goto :goto_0

    .line 574
    :cond_3
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsWidgetResumed:Z
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$400(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mSoundHandler:Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;

    if-eqz v1, :cond_0

    .line 579
    const/4 v0, 0x1

    .line 580
    .local v0, conditionID:I
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$000(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 581
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$000(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->getWeatherConditionID()I

    move-result v0

    .line 583
    :cond_4
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mSoundHandler:Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;

    invoke-virtual {v1, v0}, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->startSound(I)V

    goto :goto_0
.end method

.method private stopSoundPlayer()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mSoundHandler:Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mSoundHandler:Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;

    invoke-virtual {v0}, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->stopSound()V

    .line 592
    :cond_0
    return-void
.end method

.method private unregisterScreenReceiver()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    :cond_0
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 327
    const-string v0, "com.htc.android.wallpaper.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStartEffect()V

    .line 344
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p6}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 331
    :cond_1
    const-string v0, "com.htc.android.wallpaper.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStopEffect(Z)V

    .line 333
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->clearPausedStatus()V

    goto :goto_0

    .line 336
    :cond_2
    const-string v0, "com.htc.launcher.COMMAND_WALLPAPER_RESUME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStartEffect()V

    goto :goto_0

    .line 340
    :cond_3
    const-string v0, "com.htc.launcher.COMMAND_WALLPAPER_PAUSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStopEffect(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "surfaceHolder"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 206
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-boolean v0, v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsDockMode:Z

    if-eqz v0, :cond_2

    .line 208
    const-string v0, "[WeatherEngine_DockMode]:"

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->PREFIX_ENGINE:Ljava/lang/String;

    .line 209
    sput-boolean v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDockExisted:Z

    .line 220
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 221
    invoke-virtual {p0, v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->setTouchEventsEnabled(Z)V

    .line 222
    if-eqz p1, :cond_0

    .line 223
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 224
    :cond_0
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsVisible:Z

    .line 225
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mJustCreate:Z

    .line 226
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-object v1, v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v2

    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-boolean v3, v3, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsDockMode:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mSoundHandler:Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;

    .line 228
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onInitScreenReceiver()V

    .line 229
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$200(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$200(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    return-void

    .line 212
    :cond_2
    const-string v0, "[WeatherEngine_Preview]:"

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->PREFIX_ENGINE:Ljava/lang/String;

    .line 213
    sput-boolean v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mPreviewExisted:Z

    goto :goto_0

    .line 217
    :cond_3
    sput-boolean v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWallpaperExisted:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-boolean v0, v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsDockMode:Z

    if-eqz v0, :cond_2

    .line 239
    sput-boolean v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDockExisted:Z

    .line 246
    :goto_0
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsVisible:Z

    .line 247
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mJustCreate:Z

    .line 248
    invoke-direct {p0, v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStopEffect(Z)V

    .line 249
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->unregisterScreenReceiver()V

    .line 250
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onDestroyFxScene()V

    .line 251
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mSoundHandler:Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mSoundHandler:Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;

    invoke-virtual {v0}, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->onDestroy()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mSoundHandler:Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$200(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$200(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 257
    :cond_1
    invoke-super {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->onDestroy()V

    .line 258
    return-void

    .line 241
    :cond_2
    sput-boolean v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mPreviewExisted:Z

    goto :goto_0

    .line 244
    :cond_3
    sput-boolean v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWallpaperExisted:Z

    goto :goto_0
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixelOffset"
    .parameter "yPixelOffset"

    .prologue
    .line 350
    invoke-super/range {p0 .. p6}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 351
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x1

    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 265
    if-ge p3, p4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsPortrait:Z

    .line 266
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onInitFxScene()V

    .line 267
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mFxController:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsPortrait:Z

    invoke-virtual {v0, v2}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->setDisplayMode(Z)V

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHavePIForPlayVideo:Z

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-object v0, v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x1f4

    const-string v4, "com.htc.weatherlivewallpaper.START_PLAYING_VIDEO"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->setPendingIntent(Landroid/content/Context;JLjava/lang/String;)V

    .line 272
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHavePIForPlayVideo:Z

    .line 275
    :cond_1
    return-void

    .line 265
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 6
    .parameter "visible"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 280
    if-eqz p1, :cond_0

    .line 281
    invoke-super {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 284
    :cond_0
    iget-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsVisible:Z

    if-eq v3, p1, :cond_2

    .line 285
    iput-boolean p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsVisible:Z

    .line 286
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getIdleShowing()Z
    invoke-static {v3}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$700(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z

    move-result v0

    .line 287
    .local v0, mIdleScreenShowing:Z
    iget-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIsVisible:Z

    if-eqz v3, :cond_7

    .line 288
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-boolean v3, v3, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsDockMode:Z

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 299
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHavePIForPlayVideo:Z

    if-nez v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    iget-object v1, v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mContext:Landroid/content/Context;

    const-wide/16 v3, 0x1f4

    const-string v5, "com.htc.weatherlivewallpaper.START_PLAYING_VIDEO"

    invoke-static {v1, v3, v4, v5}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->setPendingIntent(Landroid/content/Context;JLjava/lang/String;)V

    .line 302
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mHavePIForPlayVideo:Z

    .line 316
    .end local v0           #mIdleScreenShowing:Z
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 317
    invoke-super {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 319
    :cond_3
    :goto_2
    return-void

    .line 291
    .restart local v0       #mIdleScreenShowing:Z
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 293
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getIdleShowing()Z
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$700(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 297
    :cond_5
    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mIdlePlay:Z

    goto :goto_0

    .line 306
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->isPreview()Z

    move-result v3

    if-nez v3, :cond_8

    .line 307
    if-eqz v0, :cond_9

    :goto_3
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->mUsrPlay:Z

    .line 311
    :cond_8
    invoke-direct {p0, v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onStopEffect(Z)V

    .line 312
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->clearPausedStatus()V

    goto :goto_1

    :cond_9
    move v2, v1

    .line 307
    goto :goto_3
.end method
