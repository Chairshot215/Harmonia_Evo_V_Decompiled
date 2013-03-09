.class public Lcom/htc/widget/profile/HtcProfileModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcProfileModeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/profile/HtcProfileModeReceiver$OnRingerModeChangedListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mListener:Lcom/htc/widget/profile/HtcProfileModeReceiver$OnRingerModeChangedListener;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mRegistered:Z

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 53
    iput-object p1, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 59
    iget-object v0, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mListener:Lcom/htc/widget/profile/HtcProfileModeReceiver$OnRingerModeChangedListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mListener:Lcom/htc/widget/profile/HtcProfileModeReceiver$OnRingerModeChangedListener;

    invoke-interface {v0}, Lcom/htc/widget/profile/HtcProfileModeReceiver$OnRingerModeChangedListener;->onRingerModeChanged()V

    .line 83
    :cond_0
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mRegistered:Z

    goto :goto_0
.end method

.method public setOnRingerModeChangedListener(Lcom/htc/widget/profile/HtcProfileModeReceiver$OnRingerModeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mListener:Lcom/htc/widget/profile/HtcProfileModeReceiver$OnRingerModeChangedListener;

    .line 93
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mRegistered:Z

    .line 75
    iget-object v0, p0, Lcom/htc/widget/profile/HtcProfileModeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
