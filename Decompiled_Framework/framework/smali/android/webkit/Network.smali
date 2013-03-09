.class Landroid/webkit/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/Network$1;,
        Landroid/webkit/Network$RoamingMonitor;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "network"

.field private static sNetwork:Landroid/webkit/Network;

.field private static sPlatformNotificationEnableRefCount:I

.field private static sPlatformNotifications:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandlerImpl;

.field private mProxyPassword:Ljava/lang/String;

.field private mProxyUsername:Ljava/lang/String;

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mRoaming:Z

.field private mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

.field private mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/Network;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/webkit/SslErrorHandlerImpl;

    invoke-direct {v0}, Landroid/webkit/SslErrorHandlerImpl;-><init>()V

    iput-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    new-instance v0, Landroid/webkit/HttpAuthHandlerImpl;

    invoke-direct {v0, p0}, Landroid/webkit/HttpAuthHandlerImpl;-><init>(Landroid/webkit/Network;)V

    iput-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandlerImpl;

    new-instance v0, Landroid/net/http/RequestQueue;

    invoke-direct {v0, p1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    return-void
.end method

.method static synthetic access$002(Landroid/webkit/Network;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/Network;->mRoaming:Z

    return p1
.end method

.method public static disablePlatformNotifications()V
    .locals 1

    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->disablePlatformNotifications()V

    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    invoke-direct {v0}, Landroid/webkit/Network;->stopMonitoringRoaming()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_0
.end method

.method public static enablePlatformNotifications()V
    .locals 2

    const/4 v1, 0x1

    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->enablePlatformNotifications()V

    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    invoke-direct {v0}, Landroid/webkit/Network;->monitorRoaming()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v1, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/Network;
    .locals 3

    const-class v1, Landroid/webkit/Network;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/Network;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/Network;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    sget-boolean v0, Landroid/webkit/Network;->sPlatformNotifications:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    :cond_0
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private monitorRoaming()V
    .locals 3

    new-instance v1, Landroid/webkit/Network$RoamingMonitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/Network$RoamingMonitor;-><init>(Landroid/webkit/Network;Landroid/webkit/Network$1;)V

    iput-object v1, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/webkit/Network;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v2, v2, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static setProxyEnabled(Z)V
    .locals 0

    return-void
.end method

.method private stopMonitoringRoaming()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/Network;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    :cond_0
    return-void
.end method


# virtual methods
.method checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/SslErrorHandlerImpl;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearUserSslPrefTable()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandlerImpl;->clear()V

    return-void
.end method

.method public getProxyHostname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProxyPassword()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyUsername()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleAuthRequest(Landroid/webkit/LoadListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/HttpAuthHandlerImpl;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    :cond_0
    return-void
.end method

.method public handleSslErrorRequest(Landroid/webkit/LoadListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandlerImpl;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    :cond_0
    return-void
.end method

.method public isValidProxySet()Z
    .locals 2

    iget-object v1, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Landroid/webkit/LoadListener;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p4}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/webkit/Network;->mRoaming:Z

    if-eqz v3, :cond_2

    const-string v3, "X-Moz"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "prefetch"

    const-string v4, "X-Moz"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p3, :cond_3

    array-length v7, p3

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_3
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    const/4 v8, 0x0

    invoke-virtual {p4}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    invoke-virtual {p4, v8}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    invoke-virtual {v8}, Landroid/net/http/RequestHandle;->processRequest()V

    invoke-virtual {p4}, Landroid/webkit/LoadListener;->loadSynchronousMessages()V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    invoke-virtual {p4, v8}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandlerImpl;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandlerImpl;->saveState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setProxyPassword(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyUsername(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTiming()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->startTiming()V

    return-void
.end method

.method public stopTiming()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->stopTiming()V

    return-void
.end method
