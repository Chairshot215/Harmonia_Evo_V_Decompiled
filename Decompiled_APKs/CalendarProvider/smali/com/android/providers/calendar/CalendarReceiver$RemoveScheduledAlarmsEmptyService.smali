.class public Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsEmptyService;
.super Landroid/app/Service;
.source "CalendarReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveScheduledAlarmsEmptyService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method
