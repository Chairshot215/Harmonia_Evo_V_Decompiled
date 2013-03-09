.class final Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-wide v3, v3, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->nextFlush:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-object v1, v1, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->flushTask:Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-wide v2, v2, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->setDeadline(J)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-object v1, v1, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->flushTask:Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->schedule()V

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->nextFlush:J

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->hardDeadline:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    #calls: Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->processRequests()V
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->access$000(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
