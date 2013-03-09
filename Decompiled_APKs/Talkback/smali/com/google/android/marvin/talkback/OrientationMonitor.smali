.class public Lcom/google/android/marvin/talkback/OrientationMonitor;
.super Ljava/lang/Object;
.source "OrientationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/OrientationMonitor$OrientationHandler;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mHandler:Lcom/google/android/marvin/talkback/OrientationMonitor$OrientationHandler;

.field private mLastRotation:I

.field private final mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/SpeechController;)V
    .locals 3
    .parameter "context"
    .parameter "speechController"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v1, Lcom/google/android/marvin/talkback/OrientationMonitor$OrientationHandler;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/OrientationMonitor$OrientationHandler;-><init>(Lcom/google/android/marvin/talkback/OrientationMonitor;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mHandler:Lcom/google/android/marvin/talkback/OrientationMonitor$OrientationHandler;

    .line 41
    iput-object p1, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    .line 44
    iget-object v1, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mContext:Landroid/content/Context;

    .line 45
    const-string v2, "window"

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 46
    .local v0, windowManager:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mDefaultDisplay:Landroid/view/Display;

    .line 47
    iget-object v1, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mLastRotation:I

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/OrientationMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/OrientationMonitor;->announceCurrentRotation()V

    return-void
.end method

.method private announceCurrentRotation()V
    .locals 6

    .prologue
    .line 60
    iget-object v2, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v1

    .line 62
    .local v1, rotation:I
    iget v2, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mLastRotation:I

    if-ne v1, v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iput v1, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mLastRotation:I

    .line 68
    invoke-static {v1}, Lcom/google/android/marvin/talkback/OrientationMonitor;->getDescriptionForRotation(I)I

    move-result v0

    .line 70
    .local v0, resId:I
    if-lez v0, :cond_0

    .line 71
    iget-object v2, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    iget-object v3, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->QUEUE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/marvin/talkback/SpeechController;->cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static getDescriptionForRotation(I)I
    .locals 1
    .parameter "rotation"

    .prologue
    .line 76
    packed-switch p0, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 79
    :pswitch_0
    const v0, 0x7f09008f

    goto :goto_0

    .line 82
    :pswitch_1
    const v0, 0x7f090090

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/marvin/talkback/OrientationMonitor;->mHandler:Lcom/google/android/marvin/talkback/OrientationMonitor$OrientationHandler;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/OrientationMonitor$OrientationHandler;->startAnnounceTimeout()V

    .line 56
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
