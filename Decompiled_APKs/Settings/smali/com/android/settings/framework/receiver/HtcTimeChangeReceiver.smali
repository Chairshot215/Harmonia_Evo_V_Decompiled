.class public final Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;
.super Lcom/android/settings/framework/receiver/HtcAbstractReceiver;
.source "HtcTimeChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;,
        Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;
    }
.end annotation


# static fields
.field public static final ACTION_TIME_FORMAT_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEFORMAT_CHANGED"


# instance fields
.field private mOnTimeChangedListener:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbstractReceiver;-><init>(Landroid/content/Context;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 86
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;->mOnTimeChangedListener:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;

    if-nez v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;-><init>(Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;)V

    .line 93
    .local v0, params:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    iput-boolean v3, v0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;->isTimeTickAction:Z

    .line 103
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;->mOnTimeChangedListener:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;

    invoke-interface {v1, v0}, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;->onTimeChanged(Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    iput-boolean v3, v0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;->isTimeChangedAction:Z

    goto :goto_1

    .line 97
    :cond_3
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    iput-boolean v3, v0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;->isTimezoneChangedAction:Z

    goto :goto_1

    .line 99
    :cond_4
    const-string v1, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iput-boolean v3, v0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;->isTimeFormatChangedAction:Z

    goto :goto_1
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 67
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v0, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;->mOnTimeChangedListener:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;

    .line 115
    return-void
.end method
