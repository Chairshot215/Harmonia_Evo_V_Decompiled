.class public Lcom/htc/android/worldclock/WorldClock$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WorldClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/WorldClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/WorldClock;


# direct methods
.method protected constructor <init>(Lcom/htc/android/worldclock/WorldClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1045
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1046
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/WorldClock;

    #calls: Lcom/htc/android/worldclock/WorldClock;->refreshTime()V
    invoke-static {v0}, Lcom/htc/android/worldclock/WorldClock;->access$1200(Lcom/htc/android/worldclock/WorldClock;)V

    .line 1047
    return-void
.end method
