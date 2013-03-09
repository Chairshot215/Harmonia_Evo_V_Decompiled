.class Lcom/google/android/gsf/checkin/EventLogService$1;
.super Landroid/os/AsyncTask;
.source "EventLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/checkin/EventLogService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/checkin/EventLogService;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/checkin/EventLogService;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/EventLogService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    invoke-virtual {v0}, Lcom/google/android/gsf/checkin/EventLogService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 114
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    const-string v2, "EventLogService"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/checkin/EventLogService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 115
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    const-string v2, "dropbox"

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/checkin/EventLogService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DropBoxManager;

    .line 117
    invoke-static {}, Lcom/google/android/gsf/checkin/EventLogService;->access$100()Lcom/google/android/gsf/checkin/EventLogAggregator;

    move-result-object v8

    monitor-enter v8

    .line 118
    :try_start_0
    const-string v0, "lastLog"

    const-wide/16 v2, 0x0

    invoke-interface {v7, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 119
    const-string v0, "lastData"

    const-wide/16 v4, 0x0

    invoke-interface {v7, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 122
    :try_start_1
    const-string v0, "EventLogService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Aggregate from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (log), "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (data)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/google/android/gsf/checkin/EventLogService;->access$100()Lcom/google/android/gsf/checkin/EventLogAggregator;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/checkin/EventLogAggregator;->aggregate(Landroid/content/ContentResolver;JJLandroid/os/DropBoxManager;)J

    move-result-wide v2

    .line 125
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    const-string v4, "lastLog"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "lastData"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    :goto_0
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    const-class v2, Lcom/google/android/gsf/checkin/ServiceDumpSys;

    monitor-enter v2

    .line 133
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dumpsys:"

    aput-object v4, v0, v3

    invoke-static {v1, v0}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    const-string v3, "dump.tmp"

    invoke-virtual {v1, v3}, Lcom/google/android/gsf/checkin/EventLogService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/google/android/gsf/checkin/ServiceDumpSys;->dumpServices(Ljava/util/Map;Landroid/os/DropBoxManager;Ljava/io/File;)V

    .line 136
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    :try_start_4
    const-string v2, "EventLogService"

    const-string v3, "Can\'t aggregate logs"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 136
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/EventLogService$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gsf/checkin/EventLogService;->mWorkerTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/google/android/gsf/checkin/EventLogService;->access$202(Lcom/google/android/gsf/checkin/EventLogService;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 144
    new-instance v0, Lcom/android/common/OperationScheduler;

    iget-object v1, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    const-string v2, "EventLogService"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/checkin/EventLogService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 145
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    #calls: Lcom/google/android/gsf/checkin/EventLogService;->scheduleAggregation(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/google/android/gsf/checkin/EventLogService;->access$000(Landroid/content/Context;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    invoke-virtual {v0}, Lcom/google/android/gsf/checkin/EventLogService;->stopSelf()V

    .line 147
    return-void
.end method
