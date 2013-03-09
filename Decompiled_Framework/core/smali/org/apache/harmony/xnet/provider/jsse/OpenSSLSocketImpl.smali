.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "OpenSSLSocketImpl.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;
    }
.end annotation


# instance fields
.field private autoClose:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledCompressionMethods:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private final guard:Ldalvik/system/CloseGuard;

.field private handshakeCompleted:Z

.field private final handshakeLock:Ljava/lang/Object;

.field private handshakeStarted:Z

.field private handshakeTimeoutMilliseconds:I

.field private hostname:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private os:Ljava/io/OutputStream;

.field private final readLock:Ljava/lang/Object;

.field private final socket:Ljava/net/Socket;

.field private sslNativePointer:I

.field private sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

.field private sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

.field private timeoutMilliseconds:I

.field private useSessionTickets:Z

.field private wrappedHost:Ljava/lang/String;

.field private wrappedPort:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-direct {p0, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-direct {p0, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    iput p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedPort:I

    iput-boolean p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    return-object v0
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static createCertChain([[B)[Ljava/security/cert/X509Certificate;
    .locals 6

    const/4 v3, 0x0

    if-nez p0, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v4, p0

    new-array v0, v4, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_0

    :try_start_0
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v5, p0, v2

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v4, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v0, v3

    goto :goto_0
.end method

.method private free()V
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_free(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_0
.end method

.method private getCachedClientSession(Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    .locals 16

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    :cond_0
    const/4 v13, 0x0

    :cond_1
    :goto_0
    return-object v13

    :cond_2
    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v14

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v13

    check-cast v13, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v13, :cond_3

    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v13}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getProtocol()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    array-length v10, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_4

    aget-object v8, v1, v9

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v12, 0x1

    :cond_4
    if-nez v12, :cond_6

    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v13}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v10, v1

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_7

    aget-object v6, v1, v9

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v3, 0x1

    :cond_7
    if-nez v3, :cond_9

    const/4 v13, 0x0

    goto :goto_0

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v13}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCompressionMethod()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    array-length v10, v1

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_a

    aget-object v7, v1, v9

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v5, 0x1

    :cond_a
    if-nez v5, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method private init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCompressionMethods()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    return-void
.end method

.method private notifyHandshakeCompletedListeners()V
    .locals 6

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-direct {v1, p0, v5}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HandshakeCompletedListener;

    :try_start_0
    invoke-interface {v3, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setCertificate(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    invoke-interface {v4, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    invoke-interface {v4, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeCertificates([Ljava/security/cert/Certificate;)[[B

    move-result-object v0

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v4, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_PrivateKey(I[B)V

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_certificate(I[[B)V

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_check_private_key(I)V

    goto :goto_0
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clientCertificateRequested([B[[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-byte v3, p1, v0

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    const/4 v1, 0x0

    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    invoke-interface {v3, v2, v1, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setCertificate(Ljava/lang/String;)V

    return-void

    :cond_2
    array-length v3, p2

    new-array v1, v3, [Ljavax/security/auth/x500/X500Principal;

    const/4 v0, 0x0

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p2, v0

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_1

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    return-void

    :cond_1
    :try_start_3
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_interrupt(I)V

    monitor-enter p0

    :try_start_6
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v0, v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_shutdown(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_3
    :try_start_9
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_5

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_4
    :goto_2
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    :cond_5
    :try_start_c
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catch_0
    move-exception v0

    :try_start_f
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_6

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_2

    :cond_6
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v3, p0, :cond_8

    iget-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    :cond_7
    :goto_3
    throw v0

    :cond_8
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledCompressionMethods()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 4

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Catch exception while startHandshake: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "return an invalid session with invalid cipher suite of SSL_NULL_WITH_NULL_NULL"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCompressionMethods()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public handshakeCompleted()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->resetId()V

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    goto :goto_1
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledCompressionMethods([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCompressionMethods([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setOOBInline(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Methods sendUrgentData, setOOBInline are not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSoTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    return-void
.end method

.method public setUseSessionTickets(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->useSessionTickets:Z

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    return-void
.end method

.method public startHandshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake(Z)V

    return-void
.end method

.method public declared-synchronized startHandshake(Z)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v25, 0x400

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v24

    if-nez v24, :cond_3

    const-string v2, "/dev/urandom"

    const-wide/16 v6, 0x400

    invoke-static {v2, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_load_file(Ljava/lang/String;J)I

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v2

    iget v0, v2, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    move/from16 v28, v0

    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v16, 0x1

    :try_start_3
    invoke-static/range {v28 .. v28}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_new(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v6, "close"

    invoke-virtual {v2, v6}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    if-nez v11, :cond_8

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v0, v9

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    aget-object v15, v9, v17

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_1
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    const/16 v2, 0x400

    :try_start_7
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_seed([B)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v2

    iget v0, v2, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    move/from16 v28, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :cond_5
    :try_start_8
    invoke-static {v15}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getServerKeyType()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    :catch_0
    move-exception v13

    :try_start_9
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v2, v13}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v16, :cond_6

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->close()V

    :cond_6
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_7
    :try_start_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_b .. :try_end_b} :catch_0

    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v2, v0, v6, v1}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setCertificate(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_5

    :catch_1
    move-exception v13

    :try_start_d
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v13}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledProtocols(I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledCipherSuites(I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledCompressionMethods(I[Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->useSessionTickets:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const-wide/16 v6, 0x4000

    invoke-static {v2, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_options(IJ)J

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_tlsext_host_name(ILjava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v2, v14}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_session_creation_enabled(IZ)V

    :cond_c
    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v12

    move-object v8, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getCachedClientSession(Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-result-object v26

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, v26

    iget v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_session(II)V

    :cond_d
    :goto_6
    if-eqz v11, :cond_15

    :cond_e
    :goto_7
    if-eqz v11, :cond_f

    if-eqz p1, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const-wide/16 v6, 0x40

    invoke-static {v2, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_mode(IJ)J

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v23

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoTimeout(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_d .. :try_end_d} :catch_0

    :cond_10
    :try_start_e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v7

    move-object/from16 v0, p0

    invoke-static {v2, v6, v0, v7, v11}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_do_handshake(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;IZ)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_e .. :try_end_e} :catch_0

    move-result v3

    :try_start_f
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_session_id(I)[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_free(I)V

    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v2, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoTimeout(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    if-eqz v2, :cond_13

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_f .. :try_end_f} :catch_0

    :cond_13
    const/16 v16, 0x0

    if-eqz v16, :cond_2

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_4

    :cond_14
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v8

    goto/16 :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const/4 v6, 0x3

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_verify(II)V

    const/4 v10, 0x1

    :goto_9
    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v18

    if-eqz v18, :cond_e

    move-object/from16 v0, v18

    array-length v2, v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_11 .. :try_end_11} :catch_0

    if-eqz v2, :cond_e

    :try_start_12
    invoke-static/range {v18 .. v18}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_12 .. :try_end_12} :catch_0

    move-result-object v19

    :try_start_13
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_client_CA_list(I[[B)V

    goto/16 :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const/4 v6, 0x1

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_verify(II)V

    const/4 v10, 0x1

    goto :goto_9

    :cond_17
    const/4 v10, 0x0

    goto :goto_9

    :catch_2
    move-exception v13

    new-instance v2, Ljava/io/IOException;

    const-string v6, "Problem encoding principals"

    invoke-direct {v2, v6, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v13

    new-instance v30, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v13}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v30

    :cond_18
    if-nez v14, :cond_19

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "SSL Session may not be created"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_get_certificate(I)[[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->createCertChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_get_peer_cert_chain(I)[[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->createCertChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    if-nez v2, :cond_1a

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v7

    invoke-direct/range {v2 .. v8}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v8, v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    goto/16 :goto_8

    :cond_1a
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedPort:I

    invoke-direct/range {v2 .. v8}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_13 .. :try_end_13} :catch_0

    goto :goto_a
.end method

.method public verifyCertificateChain([[BLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    array-length v5, p1

    if-nez v5, :cond_1

    :cond_0
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v6, "Peer sent no certificate"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v2

    throw v2

    :cond_1
    :try_start_1
    array-length v5, p1

    new-array v4, v5, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    new-instance v5, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v6, p1, v3

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    invoke-interface {v5, v4, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v2

    throw v2

    :catch_2
    move-exception v2

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
