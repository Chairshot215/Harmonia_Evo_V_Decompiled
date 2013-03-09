.class public Lgnu/mapping/OutPort;
.super Lgnu/lists/PrintConsumer;
.source "OutPort.java"

# interfaces
.implements Lgnu/text/Printable;


# static fields
.field private static errInitial:Lgnu/mapping/OutPort;

.field public static final errLocation:Lgnu/mapping/ThreadLocation;

.field static logFile:Ljava/io/Writer;

.field static outInitial:Lgnu/mapping/OutPort;

.field public static final outLocation:Lgnu/mapping/ThreadLocation;


# instance fields
.field private base:Ljava/io/Writer;

.field protected bout:Lgnu/text/PrettyWriter;

.field numberFormat:Ljava/text/NumberFormat;

.field public objectFormat:Lgnu/lists/AbstractFormat;

.field path:Lgnu/text/Path;

.field public printReadable:Z

.field protected unregisterRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 91
    new-instance v0, Lgnu/mapping/OutPort;

    new-instance v1, Lgnu/mapping/LogWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Lgnu/mapping/LogWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "/dev/stdout"

    invoke-static {v2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    invoke-direct {v0, v1, v5, v5, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    sput-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    .line 93
    new-instance v0, Lgnu/mapping/OutPort;

    new-instance v1, Lgnu/mapping/LogWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lgnu/mapping/LogWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "/dev/stderr"

    invoke-static {v2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    invoke-direct {v0, v1, v5, v5, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    sput-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    .line 95
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "out-default"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    .line 97
    sget-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    sget-object v1, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "err-default"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    .line 100
    sget-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    sget-object v1, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lgnu/mapping/OutPort;Z)V
    .locals 1
    .parameter "out"
    .parameter "autoflush"

    .prologue
    .line 36
    iget-object v0, p1, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-direct {p0, p1, v0, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lgnu/text/Path;)V
    .locals 2
    .parameter "out"
    .parameter "path"

    .prologue
    .line 66
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZLgnu/text/Path;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 3
    .parameter "out"

    .prologue
    const/4 v2, 0x0

    .line 71
    instance-of v1, p1, Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    :goto_0
    invoke-direct {p0, p1, v1, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 75
    return-void

    .line 71
    :cond_0
    new-instance v1, Lgnu/text/PrettyWriter;

    invoke-direct {v1, p1, v2}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lgnu/text/Path;)V
    .locals 1
    .parameter "base"
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0, v0}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 80
    iput-object p2, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    .line 81
    return-void
.end method

.method protected constructor <init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V
    .locals 1
    .parameter "base"
    .parameter "out"
    .parameter "autoflush"

    .prologue
    .line 27
    invoke-direct {p0, p2, p3}, Lgnu/lists/PrintConsumer;-><init>(Ljava/io/Writer;Z)V

    .line 28
    iput-object p2, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    .line 29
    iput-object p1, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    .line 30
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->closeOnExit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0, p2}, Lgnu/text/WriterManager;->register(Ljava/io/Writer;)Lgnu/text/WriterRef;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/OutPort;->unregisterRef:Ljava/lang/Object;

    .line 32
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/io/Writer;Z)V
    .locals 3
    .parameter "out"
    .parameter "autoflush"

    .prologue
    .line 41
    instance-of v1, p1, Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    :goto_0
    invoke-direct {p0, p1, v1, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 45
    return-void

    .line 41
    :cond_0
    new-instance v1, Lgnu/text/PrettyWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;ZLgnu/text/Path;)V
    .locals 1
    .parameter "base"
    .parameter "autoflush"
    .parameter "path"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 86
    iput-object p3, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZZ)V
    .locals 1
    .parameter "base"
    .parameter "printPretty"
    .parameter "autoflush"

    .prologue
    .line 49
    new-instance v0, Lgnu/text/PrettyWriter;

    invoke-direct {v0, p1, p2}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-direct {p0, p1, v0, p3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZZLgnu/text/Path;)V
    .locals 1
    .parameter "base"
    .parameter "printPretty"
    .parameter "autoflush"
    .parameter "path"

    .prologue
    .line 55
    new-instance v0, Lgnu/text/PrettyWriter;

    invoke-direct {v0, p1, p2}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-direct {p0, p1, v0, p3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 56
    iput-object p4, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    .line 57
    return-void
.end method

.method public static closeLogFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 150
    sget-object v1, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 153
    sput-object v3, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    .line 155
    :cond_0
    sget-object v1, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object v1, v1, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v1, v1, Lgnu/mapping/LogWriter;

    if-eqz v1, :cond_1

    .line 156
    sget-object v1, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object v1, v1, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v1, Lgnu/mapping/LogWriter;

    move-object v0, v3

    check-cast v0, Ljava/io/Writer;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 157
    :cond_1
    sget-object v1, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object v1, v1, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v1, v1, Lgnu/mapping/LogWriter;

    if-eqz v1, :cond_2

    .line 158
    sget-object v1, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object v1, v1, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v1, Lgnu/mapping/LogWriter;

    check-cast v3, Ljava/io/Writer;

    invoke-virtual {v1, v3}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 159
    :cond_2
    return-void
.end method

.method public static errDefault()Lgnu/mapping/OutPort;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/OutPort;

    return-object v0
.end method

.method protected static final isWordChar(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 188
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openFile(Ljava/lang/Object;)Lgnu/mapping/OutPort;
    .locals 7
    .parameter "fname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v5

    const-string v6, "port-char-encoding"

    invoke-virtual {v5, v6}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, conv:Ljava/lang/Object;
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    .line 126
    .local v1, path:Lgnu/text/Path;
    invoke-virtual {v1}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 127
    .local v2, strm:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 129
    .end local v2           #strm:Ljava/io/OutputStream;
    .local v3, strm:Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v5, :cond_1

    .line 130
    :cond_0
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 137
    .end local v0           #conv:Ljava/lang/Object;
    .local v4, wr:Ljava/io/Writer;
    :goto_0
    new-instance v5, Lgnu/mapping/OutPort;

    invoke-direct {v5, v4, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/Path;)V

    return-object v5

    .line 133
    .end local v4           #wr:Ljava/io/Writer;
    .restart local v0       #conv:Ljava/lang/Object;
    :cond_1
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v5, :cond_2

    .line 134
    const-string v0, "8859_1"

    .line 135
    .end local v0           #conv:Ljava/lang/Object;
    :cond_2
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .restart local v4       #wr:Ljava/io/Writer;
    goto :goto_0
.end method

.method public static outDefault()Lgnu/mapping/OutPort;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/OutPort;

    return-object v0
.end method

.method public static runCleanups()V
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0}, Lgnu/text/WriterManager;->run()V

    .line 384
    return-void
.end method

.method public static setErrDefault(Lgnu/mapping/OutPort;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 118
    sget-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public static setLogFile(Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lgnu/mapping/OutPort;->closeLogFile()V

    .line 165
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    .line 166
    sget-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, v0, Lgnu/mapping/LogWriter;

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object p0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    .end local p0
    check-cast p0, Lgnu/mapping/LogWriter;

    sget-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    invoke-virtual {p0, v0}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 168
    :cond_1
    sget-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, v0, Lgnu/mapping/LogWriter;

    if-eqz v0, :cond_2

    .line 169
    sget-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object p0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast p0, Lgnu/mapping/LogWriter;

    sget-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    invoke-virtual {p0, v0}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 170
    :cond_2
    return-void
.end method

.method public static setOutDefault(Lgnu/mapping/OutPort;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 108
    sget-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 109
    return-void
.end method


# virtual methods
.method public clearBuffer()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->clearBuffer()V

    .line 341
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 362
    :try_start_0
    iget-object v1, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v1, v1, Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v1, Lgnu/mapping/OutPort;

    iget-object v1, v1, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v2, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    if-ne v1, v2, :cond_0

    .line 363
    iget-object v1, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    sget-object v1, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    iget-object v2, p0, Lgnu/mapping/OutPort;->unregisterRef:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/text/WriterManager;->unregister(Ljava/lang/Object;)V

    .line 372
    return-void

    .line 365
    :cond_0
    :try_start_1
    iget-object v1, p0, Lgnu/mapping/OutPort;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 369
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->setError()V

    goto :goto_0
.end method

.method protected closeOnExit()Z
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public closeThis()V
    .locals 3

    .prologue
    .line 348
    :try_start_0
    iget-object v1, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v1, v1, Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v1, Lgnu/mapping/OutPort;

    iget-object v1, v1, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v2, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    if-eq v1, v2, :cond_1

    .line 349
    :cond_0
    iget-object v1, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v1}, Lgnu/text/PrettyWriter;->closeThis()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_1
    :goto_0
    sget-object v1, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    iget-object v2, p0, Lgnu/mapping/OutPort;->unregisterRef:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/text/WriterManager;->unregister(Ljava/lang/Object;)V

    .line 356
    return-void

    .line 351
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 353
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->setError()V

    goto :goto_0
.end method

.method public echo([CII)V
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, v0, Lgnu/mapping/LogWriter;

    if-eqz v0, :cond_0

    .line 143
    iget-object p0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    .end local p0
    check-cast p0, Lgnu/mapping/LogWriter;

    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/LogWriter;->echo([CII)V

    .line 144
    :cond_0
    return-void
.end method

.method public endAttribute()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractFormat;->endAttribute(Lgnu/lists/Consumer;)V

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(C)V

    goto :goto_0
.end method

.method public endElement()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractFormat;->endElement(Lgnu/lists/Consumer;)V

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(C)V

    goto :goto_0
.end method

.method public endLogicalBlock(Ljava/lang/String;)V
    .locals 1
    .parameter "suffix"

    .prologue
    .line 401
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->endLogicalBlock(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public freshLine()V
    .locals 2

    .prologue
    .line 323
    iget-object v1, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v1}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v0

    .line 324
    .local v0, col:I
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->println()V

    .line 326
    :cond_0
    return-void
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public print(D)V
    .locals 1
    .parameter "v"

    .prologue
    .line 216
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 217
    invoke-super {p0, p1, p2}, Lgnu/lists/PrintConsumer;->print(D)V

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public print(F)V
    .locals 3
    .parameter "v"

    .prologue
    .line 224
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 225
    invoke-super {p0, p1}, Lgnu/lists/PrintConsumer;->print(F)V

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public print(I)V
    .locals 3
    .parameter "v"

    .prologue
    .line 200
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 201
    invoke-super {p0, p1}, Lgnu/lists/PrintConsumer;->print(I)V

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public print(J)V
    .locals 1
    .parameter "v"

    .prologue
    .line 208
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 209
    invoke-super {p0, p1, p2}, Lgnu/lists/PrintConsumer;->print(J)V

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 255
    const-string v0, "#<output-port"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    if-eqz v0, :cond_0

    .line 258
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 259
    iget-object v0, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 261
    :cond_0
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 262
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 245
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/PrintConsumer;)V

    .line 251
    .end local p1
    :goto_0
    return-void

    .line 247
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/lists/Consumable;

    if-eqz v0, :cond_1

    .line 248
    check-cast p1, Lgnu/lists/Consumable;

    .end local p1
    invoke-interface {p1, p0}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 250
    .restart local p1
    :cond_1
    if-nez p1, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-super {p0, v0}, Lgnu/lists/PrintConsumer;->print(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method public print(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 240
    if-nez p1, :cond_0

    const-string v0, "(null)"

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    .line 241
    return-void

    :cond_0
    move-object v0, p1

    .line 240
    goto :goto_0
.end method

.method public print(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 232
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-nez v0, :cond_0

    .line 233
    invoke-super {p0, p1}, Lgnu/lists/PrintConsumer;->print(Z)V

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractFormat;->writeBoolean(ZLgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method public setColumnNumber(I)V
    .locals 1
    .parameter "column"

    .prologue
    .line 335
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->setColumnNumber(I)V

    .line 336
    return-void
.end method

.method public setIndentation(IZ)V
    .locals 1
    .parameter "amount"
    .parameter "current"

    .prologue
    .line 438
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1, p2}, Lgnu/text/PrettyWriter;->addIndentation(IZ)V

    .line 439
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1
    .parameter "attrType"

    .prologue
    .line 287
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractFormat;->startAttribute(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 295
    :goto_0
    return-void

    .line 291
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(C)V

    .line 292
    invoke-virtual {p0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 293
    const-string v0, ": "

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 266
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractFormat;->startElement(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(C)V

    .line 271
    invoke-virtual {p0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "prefix"
    .parameter "suffix"
    .parameter "indent"

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1, v2, p2}, Lgnu/text/PrettyWriter;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 395
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    if-nez p1, :cond_0

    move v1, p3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lgnu/text/PrettyWriter;->addIndentation(IZ)V

    .line 397
    return-void

    .line 395
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p3, v1

    goto :goto_0
.end method

.method public startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "perLine"
    .parameter "suffix"

    .prologue
    .line 389
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/PrettyWriter;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 390
    return-void
.end method

.method public writeBreak(I)V
    .locals 1
    .parameter "kind"

    .prologue
    .line 406
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->writeBreak(I)V

    .line 407
    return-void
.end method

.method public writeBreakFill()V
    .locals 1

    .prologue
    .line 433
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 434
    return-void
.end method

.method public writeBreakLinear()V
    .locals 1

    .prologue
    .line 421
    const/16 v0, 0x4e

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 422
    return-void
.end method

.method public writeSpaceFill()V
    .locals 1

    .prologue
    .line 427
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->write(I)V

    .line 428
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 429
    return-void
.end method

.method public writeSpaceLinear()V
    .locals 1

    .prologue
    .line 411
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->write(I)V

    .line 412
    const/16 v0, 0x4e

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 413
    return-void
.end method

.method public writeWordEnd()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->writeWordEnd()V

    .line 310
    return-void
.end method

.method public writeWordStart()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->writeWordStart()V

    .line 319
    return-void
.end method
