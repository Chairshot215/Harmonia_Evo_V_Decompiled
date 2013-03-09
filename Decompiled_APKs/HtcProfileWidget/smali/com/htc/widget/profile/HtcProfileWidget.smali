.class public Lcom/htc/widget/profile/HtcProfileWidget;
.super Lcom/htc/widget/profile/HtcAbstractWidget;
.source "HtcProfileWidget.java"

# interfaces
.implements Lcom/htc/widget/profile/HtcProfileModeReceiver$OnRingerModeChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOnClickRunnable:Ljava/lang/Runnable;

.field private mRingerModeReceiver:Lcom/htc/widget/profile/HtcProfileModeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/htc/widget/profile/HtcProfileWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/profile/HtcProfileWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;-><init>()V

    .line 30
    new-instance v0, Lcom/htc/widget/profile/HtcProfileWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/profile/HtcProfileWidget$1;-><init>(Lcom/htc/widget/profile/HtcProfileWidget;)V

    iput-object v0, p0, Lcom/htc/widget/profile/HtcProfileWidget;->mOnClickRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/profile/HtcProfileWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/htc/widget/profile/HtcProfileWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onClick(Lcom/htc/fusion/fx/FxControl;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/htc/widget/profile/HtcProfileWidget;->getWorker()Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/profile/HtcProfileWidget;->mOnClickRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method protected onInitializeButton(Lcom/htc/fusion/fx/FxControl;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/htc/widget/profile/HtcProfileWidget;->onRingerModeChanged()V

    .line 19
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->onPause()V

    .line 51
    iget-object v0, p0, Lcom/htc/widget/profile/HtcProfileWidget;->mRingerModeReceiver:Lcom/htc/widget/profile/HtcProfileModeReceiver;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/htc/widget/profile/HtcProfileWidget;->mRingerModeReceiver:Lcom/htc/widget/profile/HtcProfileModeReceiver;

    invoke-virtual {v0}, Lcom/htc/widget/profile/HtcProfileModeReceiver;->unregisterReceiver()V

    .line 54
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->onResume()V

    .line 40
    iget-object v0, p0, Lcom/htc/widget/profile/HtcProfileWidget;->mRingerModeReceiver:Lcom/htc/widget/profile/HtcProfileModeReceiver;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/htc/widget/profile/HtcProfileModeReceiver;

    invoke-virtual {p0}, Lcom/htc/widget/profile/HtcProfileWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/profile/HtcProfileModeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/profile/HtcProfileWidget;->mRingerModeReceiver:Lcom/htc/widget/profile/HtcProfileModeReceiver;

    .line 43
    iget-object v0, p0, Lcom/htc/widget/profile/HtcProfileWidget;->mRingerModeReceiver:Lcom/htc/widget/profile/HtcProfileModeReceiver;

    invoke-virtual {v0, p0}, Lcom/htc/widget/profile/HtcProfileModeReceiver;->setOnRingerModeChangedListener(Lcom/htc/widget/profile/HtcProfileModeReceiver$OnRingerModeChangedListener;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/profile/HtcProfileWidget;->mRingerModeReceiver:Lcom/htc/widget/profile/HtcProfileModeReceiver;

    invoke-virtual {v0}, Lcom/htc/widget/profile/HtcProfileModeReceiver;->registerReceiver()V

    .line 46
    return-void
.end method

.method public onRingerModeChanged()V
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/widget/profile/HtcProfileWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/widget/profile/HtcProfileAgent;->getProfileMode(Landroid/content/Context;)Lcom/htc/widget/profile/HtcProfileMode;

    move-result-object v1

    .line 63
    .local v1, profileMode:Lcom/htc/widget/profile/HtcProfileMode;
    iget-object v2, p0, Lcom/htc/widget/profile/HtcProfileWidget;->mFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    invoke-virtual {v2}, Lcom/htc/widget/profile/HtcFxObjects;->getButtonAgent()Lcom/htc/widget/profile/HtcFxButtonAgent;

    move-result-object v0

    .line 64
    .local v0, buttonAgent:Lcom/htc/widget/profile/HtcFxButtonAgent;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/htc/widget/profile/HtcProfileMode;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/profile/HtcFxButtonAgent;->setButtonState(I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    sget-object v2, Lcom/htc/widget/profile/HtcProfileWidget;->TAG:Ljava/lang/String;

    const-string v3, "The buttonAgent has not been initizlized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
