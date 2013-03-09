.class public Lcom/google/android/location/internal/server/NetworkLocationService;
.super Landroid/app/Service;
.source "NetworkLocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;
    }
.end annotation


# instance fields
.field private binder:Lcom/google/android/location/internal/INetworkLocationInternal$Stub;

.field private eventLog:Lcom/google/android/location/os/EventLog;

.field private serviceThread:Lcom/google/android/location/internal/server/ServiceThread;

.field private final thread:Landroid/os/HandlerThread;

.field public final timestamper:Lcom/google/android/location/os/EventLog$Timestamper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    new-instance v0, Lcom/google/android/location/internal/server/NetworkLocationService$1;

    invoke-direct {v0, p0}, Lcom/google/android/location/internal/server/NetworkLocationService$1;-><init>(Lcom/google/android/location/internal/server/NetworkLocationService;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "androidInternalNlpService"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->thread:Landroid/os/HandlerThread;

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/location/internal/server/NetworkLocationService;)Lcom/google/android/location/internal/server/ServiceThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->serviceThread:Lcom/google/android/location/internal/server/ServiceThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/location/internal/server/NetworkLocationService;Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/NetworkLocationService;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 10
    .parameter "writer"

    .prologue
    .line 132
    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->sinceBootMillis()J

    move-result-wide v4

    .line 133
    .local v4, sinceBoot:J
    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->sinceEpochMillis()J

    move-result-wide v8

    .line 134
    .local v8, sinceEpoch:J
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 135
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, epochDateString:Ljava/lang/String;
    const-string v0, "elapsedRealtime "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 138
    const-string v0, " is time "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->eventLog:Lcom/google/android/location/os/EventLog;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->eventLog:Lcom/google/android/location/os/EventLog;

    sub-long v2, v8, v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/os/EventLog;->dump(Ljava/text/Format;JJLjava/io/PrintWriter;)V

    .line 143
    :cond_0
    return-void
.end method

.method private declared-synchronized init()V
    .locals 9

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->eventLog:Lcom/google/android/location/os/EventLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v6, Lcom/google/android/location/internal/server/ServiceThread;

    iget-object v7, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/google/android/location/internal/server/ServiceThread;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->serviceThread:Lcom/google/android/location/internal/server/ServiceThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    const/4 v5, 0x0

    .line 80
    .local v5, log:Z
    :try_start_2
    const-string v6, "nlp_debug_log"

    invoke-virtual {p0, v6}, Lcom/google/android/location/internal/server/NetworkLocationService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 81
    .local v4, input:Ljava/io/FileInputStream;
    const/4 v5, 0x1

    .line 82
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 88
    .end local v4           #input:Ljava/io/FileInputStream;
    :goto_1
    const/4 v1, 0x0

    .line 89
    .local v1, debugWriter:Ljava/io/PrintWriter;
    if-eqz v5, :cond_1

    .line 91
    :try_start_3
    new-instance v0, Ljava/io/BufferedOutputStream;

    const-string v6, "nlp_debug_log"

    const v7, 0x8000

    invoke-virtual {p0, v6, v7}, Lcom/google/android/location/internal/server/NetworkLocationService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 93
    .local v0, debugStream:Ljava/io/BufferedOutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v1           #debugWriter:Ljava/io/PrintWriter;
    .local v2, debugWriter:Ljava/io/PrintWriter;
    move-object v1, v2

    .line 98
    .end local v0           #debugStream:Ljava/io/BufferedOutputStream;
    .end local v2           #debugWriter:Ljava/io/PrintWriter;
    .restart local v1       #debugWriter:Ljava/io/PrintWriter;
    :cond_1
    :goto_2
    :try_start_4
    new-instance v6, Lcom/google/android/location/os/EventLog;

    iget-object v7, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    new-instance v8, Lcom/google/android/location/os/real/AndroidLogger;

    invoke-direct {v8}, Lcom/google/android/location/os/real/AndroidLogger;-><init>()V

    invoke-direct {v6, v7, v8, v1}, Lcom/google/android/location/os/EventLog;-><init>(Lcom/google/android/location/os/EventLog$Timestamper;Lcom/google/android/location/os/LoggerInterface;Ljava/io/PrintWriter;)V

    iput-object v6, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->eventLog:Lcom/google/android/location/os/EventLog;

    .line 99
    iget-object v6, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->serviceThread:Lcom/google/android/location/internal/server/ServiceThread;

    iget-object v7, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->eventLog:Lcom/google/android/location/os/EventLog;

    invoke-virtual {v6, v7}, Lcom/google/android/location/internal/server/ServiceThread;->setEventLog(Lcom/google/android/location/os/EventLog;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 71
    .end local v1           #debugWriter:Ljava/io/PrintWriter;
    .end local v5           #log:Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 83
    .restart local v5       #log:Z
    :catch_0
    move-exception v3

    .line 84
    .local v3, e:Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    .line 87
    goto :goto_1

    .line 85
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 86
    .local v3, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1

    .line 94
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #debugWriter:Ljava/io/PrintWriter;
    :catch_2
    move-exception v3

    .line 95
    .local v3, e:Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v6, "androidInternalNlpService"

    const-string v7, "debug log file missing for output!?"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 128
    invoke-direct {p0, p2}, Lcom/google/android/location/internal/server/NetworkLocationService;->dump(Ljava/io/PrintWriter;)V

    .line 129
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->binder:Lcom/google/android/location/internal/INetworkLocationInternal$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/location/internal/server/NetworkLocationService;->init()V

    .line 105
    new-instance v0, Lcom/google/android/location/os/real/AndroidLogger;

    iget-object v1, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->eventLog:Lcom/google/android/location/os/EventLog;

    invoke-direct {v0, v1}, Lcom/google/android/location/os/real/AndroidLogger;-><init>(Lcom/google/android/location/os/EventLog;)V

    invoke-static {v0}, Lcom/google/android/location/os/Logger;->registerLogger(Lcom/google/android/location/os/LoggerInterface;)V

    .line 106
    const-string v0, "androidInternalNlpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;-><init>(Lcom/google/android/location/internal/server/NetworkLocationService;Lcom/google/android/location/internal/server/NetworkLocationService$1;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->binder:Lcom/google/android/location/internal/INetworkLocationInternal$Stub;

    .line 108
    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->serviceThread:Lcom/google/android/location/internal/server/ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/ServiceThread;->createService()V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    const-string v0, "androidInternalNlpService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->serviceThread:Lcom/google/android/location/internal/server/ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/ServiceThread;->destroyService()V

    .line 120
    iput-object v2, p0, Lcom/google/android/location/internal/server/NetworkLocationService;->binder:Lcom/google/android/location/internal/INetworkLocationInternal$Stub;

    .line 122
    const-string v0, "androidInternalNlpService"

    const-string v1, "unregistering logger"

    invoke-static {v0, v1}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {v2}, Lcom/google/android/location/os/Logger;->registerLogger(Lcom/google/android/location/os/LoggerInterface;)V

    .line 124
    return-void
.end method
