.class public abstract Ljavax/net/ssl/SSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "SSLServerSocketFactory.java"


# static fields
.field private static defaultName:Ljava/lang/String;

.field private static defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ServerSocketFactory;
    .locals 7

    const-class v5, Ljavax/net/ssl/SSLServerSocketFactory;

    monitor-enter v5

    :try_start_0
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-eqz v4, :cond_0

    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v5

    return-object v4

    :cond_0
    :try_start_1
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "ssl.ServerSocketFactory.provider"

    invoke-static {v4}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_1
    :try_start_2
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ServerSocketFactory;

    sput-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    :try_start_3
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    :try_start_4
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v4

    sput-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    :cond_3
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-nez v4, :cond_4

    new-instance v4, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    const-string v6, "No ServerSocketFactory installed"

    invoke-direct {v4, v6}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    :cond_4
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
