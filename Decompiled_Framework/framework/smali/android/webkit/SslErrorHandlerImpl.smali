.class Landroid/webkit/SslErrorHandlerImpl;
.super Landroid/webkit/SslErrorHandler;
.source "SslErrorHandlerImpl.java"


# static fields
.field private static final HANDLE_RESPONSE:I = 0x64

.field private static final LOGTAG:Ljava/lang/String; = "network"


# instance fields
.field private final mLoadListener:Landroid/webkit/LoadListener;

.field private mLoaderQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/LoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginHandler:Landroid/webkit/SslErrorHandler;

.field private mSslPrefTable:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/webkit/SslErrorHandler;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    iput-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    iput-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoadListener:Landroid/webkit/LoadListener;

    return-void
.end method

.method private constructor <init>(Landroid/webkit/SslErrorHandler;Landroid/webkit/LoadListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/SslErrorHandler;-><init>()V

    iput-object p1, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    iput-object p2, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoadListener:Landroid/webkit/LoadListener;

    return-void
.end method

.method private declared-synchronized processNextLoader()Z
    .locals 5

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/LoadListener;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->sslError()Landroid/net/http/SslError;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/SslErrorHandlerImpl;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v2

    new-instance v3, Landroid/webkit/SslErrorHandlerImpl;

    invoke-direct {v3, p0, v1}, Landroid/webkit/SslErrorHandlerImpl;-><init>(Landroid/webkit/SslErrorHandler;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2, v3, v0}, Landroid/webkit/CallbackProxy;->onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    iget-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    const/16 v2, 0x64

    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/webkit/SslErrorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/SslErrorHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method declared-synchronized checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z
    .locals 4

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-gt v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/webkit/LoadListener;->handleSslErrorResponse(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fastProcessQueuedSslErrors()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Landroid/webkit/SslErrorHandlerImpl;->processNextLoader()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/LoadListener;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/LoadListener;->sslError()Landroid/net/http/SslError;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    :goto_1
    invoke-virtual {p0, v0, v2, v1}, Landroid/webkit/SslErrorHandlerImpl;->handleSslErrorResponse(Landroid/webkit/LoadListener;Landroid/net/http/SslError;Z)V

    iget-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/webkit/SslErrorHandlerImpl;->fastProcessQueuedSslErrors()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized handleSslErrorRequest(Landroid/webkit/LoadListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/SslErrorHandlerImpl;->fastProcessQueuedSslErrors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleSslErrorResponse(Landroid/webkit/LoadListener;Landroid/net/http/SslError;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p1, p3}, Landroid/webkit/LoadListener;->handleSslErrorResponse(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public proceed()V
    .locals 6

    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    iget-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/SslErrorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/SslErrorHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method declared-synchronized restoreState(Landroid/os/Bundle;)Z
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v1, "ssl-error-handler"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "ssl-error-handler"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized saveState(Landroid/os/Bundle;)Z
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v1, "ssl-error-handler"

    iget-object v2, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
