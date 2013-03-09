.class public Ljava/util/logging/SocketHandler;
.super Ljava/util/logging/StreamHandler;
.source "SocketHandler.java"


# static fields
.field private static final DEFAULT_FORMATTER:Ljava/lang/String; = "java.util.logging.XMLFormatter"

.field private static final DEFAULT_LEVEL:Ljava/lang/String; = "ALL"


# instance fields
.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "ALL"

    const-string v1, "java.util.logging.XMLFormatter"

    invoke-direct {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const-string v1, "java.util.logging.SocketHandler.host"

    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    const-string v2, "java.util.logging.SocketHandler.port"

    invoke-virtual {v1, v2}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/logging/SocketHandler;->initSocket(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "ALL"

    const-string v1, "java.util.logging.XMLFormatter"

    invoke-direct {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/logging/SocketHandler;->initSocket(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initSocket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "host == null || host.isEmpty()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal port argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal port argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_1
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, p1, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-super {p0, v2}, Ljava/util/logging/StreamHandler;->internalSetOutputStream(Ljava/io/OutputStream;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "Failed to establish the network connection"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    iget-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "Exception occurred when closing the socket handler"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    invoke-super {p0}, Ljava/util/logging/StreamHandler;->flush()V

    return-void
.end method
