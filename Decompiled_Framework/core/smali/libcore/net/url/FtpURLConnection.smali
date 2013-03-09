.class public Llibcore/net/url/FtpURLConnection;
.super Ljava/net/URLConnection;
.source "FtpURLConnection.java"


# static fields
.field private static final FTP_DATAOPEN:I = 0x7d

.field private static final FTP_FILEOK:I = 0xfa

.field private static final FTP_LOGGEDIN:I = 0xe6

.field private static final FTP_NOTFOUND:I = 0x226

.field private static final FTP_OK:I = 0xc8

.field private static final FTP_OPENDATA:I = 0x96

.field private static final FTP_PASWD:I = 0x14b

.field private static final FTP_PORT:I = 0x15

.field private static final FTP_TRANSFEROK:I = 0xe2

.field private static final FTP_USERREADY:I = 0xdc


# instance fields
.field private acceptSocket:Ljava/net/ServerSocket;

.field private controlSocket:Ljava/net/Socket;

.field private ctrlInput:Ljava/io/InputStream;

.field private ctrlOutput:Ljava/io/OutputStream;

.field private currentProxy:Ljava/net/Proxy;

.field private dataPort:I

.field private dataSocket:Ljava/net/Socket;

.field private hostName:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private password:Ljava/lang/String;

.field private proxy:Ljava/net/Proxy;

.field private replyCode:Ljava/lang/String;

.field private uri:Ljava/net/URI;

.field private username:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    const-string v2, "anonymous"

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->password:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->password:Ljava/lang/String;

    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    iput-object v0, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .locals 0

    invoke-direct {p0, p1}, Llibcore/net/url/FtpURLConnection;-><init>(Ljava/net/URL;)V

    iput-object p2, p0, Llibcore/net/url/FtpURLConnection;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method private cd()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0xfa

    const/16 v6, 0x2f

    const/4 v5, 0x0

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CWD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v2

    if-eq v2, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CWD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v2

    :cond_0
    if-eq v2, v7, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to change directories"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    return-void
.end method

.method private connectInternal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getConnectTimeout()I

    move-result v1

    if-gtz v3, :cond_0

    const/16 v3, 0x15

    :cond_0
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    if-eqz v4, :cond_1

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    if-ne v4, v5, :cond_5

    :cond_1
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v4, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/URLConnection;->connected:Z

    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->ctrlOutput:Ljava/io/OutputStream;

    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->login()V

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->setType()V

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getDoInput()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->cd()V

    :cond_2
    :try_start_0
    new-instance v4, Ljava/net/ServerSocket;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v4

    iput v4, p0, Llibcore/net/url/FtpURLConnection;->dataPort:I

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->port()V

    if-nez v1, :cond_3

    const/16 v1, 0xbb8

    :cond_3
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getConnectTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getDoInput()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getFile()V

    :goto_1
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getReadTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getDoInput()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Llibcore/net/url/FtpURLInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-direct {v4, v5, v6}, Llibcore/net/url/FtpURLInputStream;-><init>(Ljava/io/InputStream;Ljava/net/Socket;)V

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->inputStream:Ljava/io/InputStream;

    :cond_4
    return-void

    :cond_5
    new-instance v4, Ljava/net/Socket;

    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-direct {v4, v5}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->sendFile()V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not establish data connection"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v1

    const/16 v2, 0x226

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v1

    :cond_0
    const/16 v2, 0x96

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe2

    if-eq v1, v2, :cond_1

    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method

.method private getReply()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x3

    new-array v0, v5, [B

    const/4 v2, 0x0

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    :cond_0
    int-to-byte v5, v4

    aput-byte v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    array-length v7, v0

    sget-object v8, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readLine()Ljava/lang/String;

    if-eqz v3, :cond_4

    :cond_3
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readMultiLine()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_4
    :try_start_0
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    :catch_0
    move-exception v1

    new-instance v5, Ljava/io/IOException;

    const-string v6, "reply code is invalid"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/io/IOException;

    check-cast v5, Ljava/io/IOException;

    throw v5
.end method

.method private login()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x14b

    const/16 v4, 0xe6

    const/16 v3, 0xdc

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    if-ne v0, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_2

    :cond_0
    if-ne v0, v5, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_3

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to log in to server (PASS): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to log in to server (USER): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method private port()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PORT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/net/url/FtpURLConnection;->dataPort:I

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/net/url/FtpURLConnection;->dataPort:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to configure data port"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readMultiLine()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private sendFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STOR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to store file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private setType()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "TYPE I\r\n"

    invoke-direct {p0, v0}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to set transfer type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/url/FtpURLConnection;->ctrlOutput:Ljava/io/OutputStream;

    sget-object v1, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->proxy:Ljava/net/Proxy;

    if-eqz v6, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->proxy:Ljava/net/Proxy;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    if-nez v4, :cond_3

    const/4 v6, 0x0

    iput-object v6, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->connectInternal()V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;

    invoke-virtual {v5, v6}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    const-string v1, ""

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Proxy;

    iput-object v6, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    :try_start_0
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->connectInternal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_4

    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iget-object v7, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;

    iget-object v7, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_1

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to connect to server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/net/url/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "content/unknown"

    :cond_0
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->connect()V

    :cond_0
    iget-object v0, p0, Llibcore/net/url/FtpURLConnection;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->connect()V

    :cond_0
    iget-object v0, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x15

    :cond_0
    new-instance v1, Ljava/net/SocketPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect, resolve"

    invoke-direct {v1, v2, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public setDoInput(Z)V
    .locals 1

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->doInput:Z

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDoOutput(Z)V
    .locals 1

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->doOutput:Z

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
