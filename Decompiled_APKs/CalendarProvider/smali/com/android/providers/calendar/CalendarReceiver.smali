.class public Lcom/android/providers/calendar/CalendarReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalendarReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsEmptyService;,
        Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;,
        Lcom/android/providers/calendar/CalendarReceiver$do_SCHEDULE_thread;
    }
.end annotation


# static fields
.field static final SCHEDULE:Ljava/lang/String; = "com.android.providers.calendar.SCHEDULE_ALARM"

.field private static final TAG:Ljava/lang/String; = "CalendarReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 121
    return-void
.end method

.method private removeScheduledAlarms(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "context"
    .parameter "resolver"

    .prologue
    .line 88
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsEmptyService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    new-instance v0, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;

    invoke-direct {v0, p1, p2}, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 91
    .local v0, thread:Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;
    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;->start()V

    .line 92
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 42
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "com.android.providers.calendar.SCHEDULE_ALARM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    new-instance v2, Lcom/android/providers/calendar/CalendarReceiver$do_SCHEDULE_thread;

    invoke-direct {v2, p0, v1}, Lcom/android/providers/calendar/CalendarReceiver$do_SCHEDULE_thread;-><init>(Lcom/android/providers/calendar/CalendarReceiver;Landroid/content/ContentResolver;)V

    .line 46
    .local v2, thread:Lcom/android/providers/calendar/CalendarReceiver$do_SCHEDULE_thread;
    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarReceiver$do_SCHEDULE_thread;->start()V

    .line 55
    .end local v2           #thread:Lcom/android/providers/calendar/CalendarReceiver$do_SCHEDULE_thread;
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-direct {p0, p1, v1}, Lcom/android/providers/calendar/CalendarReceiver;->removeScheduledAlarms(Landroid/content/Context;Landroid/content/ContentResolver;)V

    goto :goto_0
.end method
