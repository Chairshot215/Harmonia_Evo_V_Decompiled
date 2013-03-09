.class Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;
.super Ljava/lang/Thread;
.source "HtcCalendarProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/HtcCalendarProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcTimezoneCheckerThread"
.end annotation


# instance fields
.field private n:I

.field final synthetic this$0:Lcom/android/providers/calendar/HtcCalendarProvider;

.field private waitEvent:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/HtcCalendarProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/HtcCalendarProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 339
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->waitEvent:Ljava/lang/Object;

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->n:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/HtcCalendarProvider;Lcom/android/providers/calendar/HtcCalendarProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;-><init>(Lcom/android/providers/calendar/HtcCalendarProvider;)V

    return-void
.end method


# virtual methods
.method public requestTimezoneCheck()V
    .locals 2

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->waitEvent:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->waitEvent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    .line 347
    :goto_0
    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 345
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    .line 351
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 357
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->waitEvent:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 358
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->waitEvent:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 359
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :goto_1
    iget v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->n:I

    .line 364
    const-string v2, "HtcCalendarProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestTimezoneCheck "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_2
    iget-object v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/HtcCalendarProvider;

    invoke-virtual {v2}, Lcom/android/providers/calendar/HtcCalendarProvider;->doUpdateTimezoneDependentFields()V

    .line 368
    iget-object v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/HtcCalendarProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/providers/calendar/HtcCalendarProvider;->sendUpdateNotification(Z)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "HtcCalendarProvider"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    const-string v2, "HtcCalendarProvider"

    const-string v3, "doUpdateTimezoneDependentFields() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/HtcCalendarProvider;

    iget-object v2, v2, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 379
    :catch_1
    move-exception v1

    .line 380
    .local v1, e2:Landroid/database/SQLException;
    const-string v2, "HtcCalendarProvider"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    const-string v2, "HtcCalendarProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearInstanceRange() also failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    .end local v0           #e:Landroid/database/SQLException;
    .end local v1           #e2:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 360
    :catch_2
    move-exception v2

    goto :goto_1

    .line 385
    :catch_3
    move-exception v2

    goto :goto_0

    .line 383
    .restart local v0       #e:Landroid/database/SQLException;
    :catch_4
    move-exception v2

    goto :goto_0
.end method
