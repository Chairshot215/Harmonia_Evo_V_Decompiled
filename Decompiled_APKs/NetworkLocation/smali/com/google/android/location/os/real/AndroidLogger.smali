.class public Lcom/google/android/location/os/real/AndroidLogger;
.super Ljava/lang/Object;
.source "AndroidLogger.java"

# interfaces
.implements Lcom/google/android/location/os/LoggerInterface;


# instance fields
.field private final debugStream:Ljava/io/PrintStream;

.field private final eventLog:Lcom/google/android/location/os/EventLog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->eventLog:Lcom/google/android/location/os/EventLog;

    .line 28
    iput-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->debugStream:Ljava/io/PrintStream;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/os/EventLog;)V
    .locals 1
    .parameter "eventLog"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/location/os/real/AndroidLogger;->eventLog:Lcom/google/android/location/os/EventLog;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->debugStream:Ljava/io/PrintStream;

    .line 38
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "priority"

    .prologue
    .line 83
    invoke-static {p3, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->eventLog:Lcom/google/android/location/os/EventLog;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->eventLog:Lcom/google/android/location/os/EventLog;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/EventLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->debugStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->debugStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->debugStream:Ljava/io/PrintStream;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 90
    iget-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->debugStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 92
    :cond_1
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 51
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/AndroidLogger;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 66
    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/AndroidLogger;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 71
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    iget-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->eventLog:Lcom/google/android/location/os/EventLog;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->eventLog:Lcom/google/android/location/os/EventLog;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/EventLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->debugStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->debugStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->debugStream:Ljava/io/PrintStream;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 78
    iget-object v0, p0, Lcom/google/android/location/os/real/AndroidLogger;->debugStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 56
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/AndroidLogger;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 96
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 61
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/AndroidLogger;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    return-void
.end method
