.class public Lcom/android/settings/framework/receiver/HtcIMEReceiver;
.super Lcom/android/settings/framework/receiver/HtcAbstractReceiver;
.source "HtcIMEReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/receiver/HtcIMEReceiver$OnReceivedIMEListener;,
        Lcom/android/settings/framework/receiver/HtcIMEReceiver$EventParams;
    }
.end annotation


# instance fields
.field private mOnReceivedIMEListener:Lcom/android/settings/framework/receiver/HtcIMEReceiver$OnReceivedIMEListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbstractReceiver;-><init>(Landroid/content/Context;)V

    .line 90
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcIMEReceiver;->mOnReceivedIMEListener:Lcom/android/settings/framework/receiver/HtcIMEReceiver$OnReceivedIMEListener;

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/android/settings/framework/receiver/HtcIMEReceiver$EventParams;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/receiver/HtcIMEReceiver$EventParams;-><init>(Lcom/android/settings/framework/receiver/HtcIMEReceiver;)V

    .line 113
    .local v0, params:Lcom/android/settings/framework/receiver/HtcIMEReceiver$EventParams;
    const-string v1, "ENG_MODE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/framework/receiver/HtcIMEReceiver$EventParams;->sipMode:Ljava/lang/String;

    .line 114
    const-string v1, "SIP"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/framework/receiver/HtcIMEReceiver$EventParams;->sipName:Ljava/lang/String;

    .line 115
    const-string v1, "SIP_HEIGHT"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/framework/receiver/HtcIMEReceiver$EventParams;->sipHeight:I

    .line 116
    const-string v1, "SIP_VISIBLE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/framework/receiver/HtcIMEReceiver$EventParams;->sipVisible:Z

    .line 118
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcIMEReceiver;->mOnReceivedIMEListener:Lcom/android/settings/framework/receiver/HtcIMEReceiver$OnReceivedIMEListener;

    invoke-interface {v1, v0}, Lcom/android/settings/framework/receiver/HtcIMEReceiver$OnReceivedIMEListener;->onReceivedIME(Lcom/android/settings/framework/receiver/HtcIMEReceiver$EventParams;)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 94
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setOnReceivedIMEListener(Lcom/android/settings/framework/receiver/HtcIMEReceiver$OnReceivedIMEListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcIMEReceiver;->mOnReceivedIMEListener:Lcom/android/settings/framework/receiver/HtcIMEReceiver$OnReceivedIMEListener;

    .line 129
    return-void
.end method
