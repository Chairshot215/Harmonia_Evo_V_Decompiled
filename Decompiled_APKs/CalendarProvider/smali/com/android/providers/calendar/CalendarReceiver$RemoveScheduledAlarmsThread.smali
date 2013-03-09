.class Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;
.super Ljava/lang/Thread;
.source "CalendarReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveScheduledAlarmsThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "context"
    .parameter "resolver"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;->mResolver:Landroid/content/ContentResolver;

    .line 104
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 108
    const-string v0, "CalendarReceiver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "CalendarReceiver"

    const-string v1, "Removing scheduled alarms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/providers/calendar/CalendarAlarmManager;->SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsEmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 114
    return-void
.end method
