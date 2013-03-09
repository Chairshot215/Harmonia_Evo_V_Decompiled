.class public Ljava/util/logging/StreamHandler;
.super Ljava/util/logging/Handler;
.source "StreamHandler.java"


# instance fields
.field private os:Ljava/io/OutputStream;

.field private writer:Ljava/io/Writer;

.field private writerNotInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    const-string v0, "INFO"

    const-string v1, "java.util.logging.SimpleFormatter"

    invoke-virtual {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    iput-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Formatter;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "os == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "formatter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-virtual {p0, p2}, Ljava/util/logging/StreamHandler;->internalSetFormatter(Ljava/util/logging/Formatter;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/logging/StreamHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    return-void
.end method

.method private initializeWriter()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    :goto_0
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/logging/StreamHandler;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private write(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "Exception occurred when writing to the output stream"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/logging/StreamHandler;->close(Z)V

    return-void
.end method

.method close(Z)V
    .locals 4

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->initializeWriter()V

    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/logging/StreamHandler;->write(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    if-eqz p1, :cond_1

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "Exception occurred when closing the output stream"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method public flush()V
    .locals 4

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "Exception occurred when flushing the output stream"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method internalSetOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    return-void
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->initializeWriter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_0
    :try_start_2
    invoke-direct {p0, v1}, Ljava/util/logging/StreamHandler;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "Exception occurred when formatting the log record"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "Exception occurred when logging the record"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V

    invoke-super {p0, p1}, Ljava/util/logging/Handler;->setEncoding(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected setOutputStream(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    invoke-virtual {p0, v1}, Ljava/util/logging/StreamHandler;->close(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    iput-boolean v1, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    return-void
.end method
