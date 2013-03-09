.class Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easdp/util/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DpSSLSocketFactory"
.end annotation


# instance fields
.field mailSocketFactory:Lcom/htc/android/mail/ssl/SSLSocketFactory;

.field socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method private getSocketFactory()Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 122
    :goto_0
    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->mailSocketFactory:Lcom/htc/android/mail/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->mailSocketFactory:Lcom/htc/android/mail/ssl/SSLSocketFactory;

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 8
    .parameter "sock"
    .parameter "host"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/http/conn/ConnectTimeoutException;
        }
    .end annotation

    .prologue
    .line 142
    const-string v0, "EAS_HTTP"

    const-string v1, "> connectSocket(..)"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v7

    .line 144
    .local v7, sk:Ljava/net/Socket;
    const-string v0, "EAS_HTTP"

    const-string v1, "< connectSocket(..)"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-object v7
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v1, "EAS_HTTP"

    const-string v2, "> connectSocket()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 131
    .local v0, sk:Ljava/net/Socket;
    const-string v1, "EAS_HTTP"

    const-string v2, "< connectSocket()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 4
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 160
    const-string v1, "EAS_HTTP"

    const-string v2, "> createSocket()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 162
    .local v0, sk:Ljava/net/Socket;
    const-string v1, "EAS_HTTP"

    const-string v2, "< createSocket()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/htc/android/mail/easdp/EASDirectpush;->isScreenOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-static {v3, v3}, Lcom/htc/android/mail/eassvc/util/PowerSavingUtil;->changeRadioDormantTimer(II)V

    .line 170
    :cond_0
    return-object v0
.end method

.method public getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->mailSocketFactory:Lcom/htc/android/mail/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->mailSocketFactory:Lcom/htc/android/mail/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Lcom/htc/android/mail/ssl/SSLSocketFactory;->getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1
    .parameter "sock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

.method public setSocketFactory(Lcom/htc/android/mail/ssl/SSLSocketFactory;)V
    .locals 0
    .parameter "sslsf"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->mailSocketFactory:Lcom/htc/android/mail/ssl/SSLSocketFactory;

    .line 115
    return-void
.end method

.method public setSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 0
    .parameter "sslsf"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 112
    return-void
.end method
