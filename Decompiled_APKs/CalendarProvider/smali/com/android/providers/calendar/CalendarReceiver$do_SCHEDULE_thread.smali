.class Lcom/android/providers/calendar/CalendarReceiver$do_SCHEDULE_thread;
.super Ljava/lang/Thread;
.source "CalendarReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "do_SCHEDULE_thread"
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarReceiver;


# direct methods
.method public constructor <init>(Lcom/android/providers/calendar/CalendarReceiver;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarReceiver$do_SCHEDULE_thread;->this$0:Lcom/android/providers/calendar/CalendarReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/android/providers/calendar/CalendarReceiver$do_SCHEDULE_thread;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarReceiver$do_SCHEDULE_thread;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/providers/calendar/CalendarAlarmManager;->SCHEDULE_ALARM_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CalendarReceiver"

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Lcom/android/providers/calendar/debug;->alwaysErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
