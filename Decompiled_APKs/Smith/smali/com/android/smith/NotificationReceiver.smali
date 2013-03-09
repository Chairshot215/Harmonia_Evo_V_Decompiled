.class public Lcom/android/smith/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/NotificationReceiver$NotificationThread;
    }
.end annotation


# static fields
.field public static final ACTION_SYSTEMLOGGERS_STATUS:Ljava/lang/String; = "com.android.smith.SYSTEMLOGGERS_STATUS"

.field private static final TAG:Ljava/lang/String; = "SM:NotificationReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    const-string v0, "SM:NotificationReceiver"

    const-string v1, "onReceive start"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/smith/NotificationReceiver$NotificationThread;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/smith/NotificationReceiver$NotificationThread;-><init>(Lcom/android/smith/NotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    const-string v0, "SM:NotificationReceiver"

    const-string v1, "onReceive finish"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
