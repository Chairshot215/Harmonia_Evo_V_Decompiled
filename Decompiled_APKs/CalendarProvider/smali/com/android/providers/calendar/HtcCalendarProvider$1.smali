.class Lcom/android/providers/calendar/HtcCalendarProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcCalendarProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/HtcCalendarProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/HtcCalendarProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/HtcCalendarProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/providers/calendar/HtcCalendarProvider$1;->this$0:Lcom/android/providers/calendar/HtcCalendarProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    const-string v2, "HtcCalendarProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    if-eqz p2, :cond_0

    .line 52
    const-string v2, "time24Format"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 53
    .local v1, time24FormatUpdated:Z
    if-eqz v1, :cond_0

    .line 54
    const-string v2, "HtcCalendarProvider"

    const-string v3, "time24FormatUpdated"

    invoke-static {v2, v3}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider$1;->this$0:Lcom/android/providers/calendar/HtcCalendarProvider;

    invoke-virtual {v2, v5}, Lcom/android/providers/calendar/HtcCalendarProvider;->sendUpdateNotification(Z)V

    .line 63
    .end local v1           #time24FormatUpdated:Z
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v2, "action.calendars.picker.changed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider$1;->this$0:Lcom/android/providers/calendar/HtcCalendarProvider;

    invoke-virtual {v2, v5}, Lcom/android/providers/calendar/HtcCalendarProvider;->sendUpdateNotification(Z)V

    goto :goto_0
.end method
