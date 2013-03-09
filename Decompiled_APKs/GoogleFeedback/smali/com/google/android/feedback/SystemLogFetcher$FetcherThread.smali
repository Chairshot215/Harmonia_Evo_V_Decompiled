.class Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;
.super Ljava/lang/Thread;
.source "SystemLogFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feedback/SystemLogFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetcherThread"
.end annotation


# static fields
.field private static final EVENT_LOG_COMMAND:[Ljava/lang/String;

.field private static final SYSTEM_LOG_COMMAND:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "logcat"

    aput-object v1, v0, v2

    const-string v1, "-d"

    aput-object v1, v0, v3

    const-string v1, "-v"

    aput-object v1, v0, v4

    const-string v1, "time"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;->SYSTEM_LOG_COMMAND:[Ljava/lang/String;

    .line 114
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "logcat"

    aput-object v1, v0, v2

    const-string v1, "-d"

    aput-object v1, v0, v3

    const-string v1, "-b"

    aput-object v1, v0, v4

    const-string v1, "events"

    aput-object v1, v0, v5

    const-string v1, "-v"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;->EVENT_LOG_COMMAND:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/feedback/SystemLogFetcher$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;-><init>()V

    return-void
.end method

.method private runCommand([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 141
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 142
    .local v4, runtime:Ljava/lang/Runtime;
    const/4 v5, 0x0

    .line 144
    .local v5, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 145
    .local v2, proc:Ljava/lang/Process;
    invoke-static {v2}, Lcom/google/android/feedback/SystemLogFetcher;->access$402(Ljava/lang/Process;)Ljava/lang/Process;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 147
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 148
    .local v6, streamReader:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 149
    .local v3, reader:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    .local v0, buffer:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 161
    if-eqz v5, :cond_0

    .line 162
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 164
    :cond_0
    invoke-static {v8}, Lcom/google/android/feedback/SystemLogFetcher;->access$402(Ljava/lang/Process;)Ljava/lang/Process;

    return-object v7

    .line 155
    :cond_1
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 161
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #proc:Ljava/lang/Process;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v6           #streamReader:Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_2

    .line 162
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 164
    :cond_2
    invoke-static {v8}, Lcom/google/android/feedback/SystemLogFetcher;->access$402(Ljava/lang/Process;)Ljava/lang/Process;

    throw v7
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, systemLog:Ljava/lang/String;
    const/4 v1, 0x0

    .line 124
    .local v1, eventLog:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;->SYSTEM_LOG_COMMAND:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;->runCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    sget-object v3, Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;->EVENT_LOG_COMMAND:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;->runCommand([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 131
    #calls: Lcom/google/android/feedback/SystemLogFetcher;->reportResult(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/google/android/feedback/SystemLogFetcher;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    #calls: Lcom/google/android/feedback/SystemLogFetcher;->reportResult(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/google/android/feedback/SystemLogFetcher;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    #calls: Lcom/google/android/feedback/SystemLogFetcher;->reportResult(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/google/android/feedback/SystemLogFetcher;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    #calls: Lcom/google/android/feedback/SystemLogFetcher;->reportResult(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/google/android/feedback/SystemLogFetcher;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method
