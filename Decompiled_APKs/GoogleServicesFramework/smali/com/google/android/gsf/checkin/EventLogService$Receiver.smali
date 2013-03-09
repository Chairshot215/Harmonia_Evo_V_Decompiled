.class public Lcom/google/android/gsf/checkin/EventLogService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "EventLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/EventLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    #calls: Lcom/google/android/gsf/checkin/EventLogService;->scheduleAggregation(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/google/android/gsf/checkin/EventLogService;->access$000(Landroid/content/Context;)V

    .line 60
    return-void
.end method
