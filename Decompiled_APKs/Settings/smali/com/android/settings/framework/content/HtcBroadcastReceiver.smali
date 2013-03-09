.class public abstract Lcom/android/settings/framework/content/HtcBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/content/HtcBroadcastReceiver$ReceiverRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/content/HtcBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/HtcBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 117
    sget-object v0, Lcom/android/settings/framework/content/HtcBroadcastReceiver;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/content/HtcBroadcastReceiver$ReceiverRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/framework/content/HtcBroadcastReceiver$ReceiverRunnable;-><init>(Lcom/android/settings/framework/content/HtcBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 35
    return-void
.end method

.method public abstract onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
.end method
