.class public Llibcore/net/url/FtpHandler;
.super Ljava/net/URLStreamHandler;
.source "FtpHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Llibcore/net/url/FtpURLConnection;

    invoke-direct {v0, p1}, Llibcore/net/url/FtpURLConnection;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null || proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Llibcore/net/url/FtpURLConnection;

    invoke-direct {v0, p1, p2}, Llibcore/net/url/FtpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    return-object v0
.end method
