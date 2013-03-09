.class Landroid/webkit/HttpAuthHandlerImpl;
.super Landroid/webkit/HttpAuthHandler;
.source "HttpAuthHandlerImpl.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AUTH_CANCEL:I = 0xc8

.field private static final AUTH_PROCEED:I = 0x64

.field private static final LOGTAG:Ljava/lang/String; = "network"


# instance fields
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

.field private mNetwork:Landroid/webkit/Network;

.field mPassword:Ljava/lang/String;

.field mRequestInFlight:Z

.field mRequestInFlightLock:Ljava/lang/Object;

.field mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/webkit/HttpAuthHandlerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/HttpAuthHandlerImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/webkit/Network;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlightLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mNetwork:Landroid/webkit/Network;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    return-void
.end method

.method private handleResponseForSynchronousRequest(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mUsername:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mPassword:Ljava/lang/String;

    const/4 v2, 0x1

    :goto_0
    return v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static onReceivedCredentials(Landroid/webkit/LoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/CallbackProxy;->onReceivedHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processNextLoader()V
    .locals 7

    const/4 v2, 0x0

    iget-object v6, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v2, v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    iget-object v6, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlightLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    sget-boolean v5, Landroid/webkit/HttpAuthHandlerImpl;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlight:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    :cond_0
    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlight:Z

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v3

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->proxyAuthenticate()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/webkit/HttpAuthHandlerImpl;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v5}, Landroid/webkit/Network;->getProxyHostname()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->realm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v1, v4}, Landroid/webkit/CallbackProxy;->onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private signalRequestComplete()V
    .locals 2

    iget-object v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlightLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Landroid/webkit/HttpAuthHandlerImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlight:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlight:Z

    iget-object v0, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlightLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private waitForRequestToComplete()V
    .locals 4

    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlightLock:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlight:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlightLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "network"

    const-string v3, "Interrupted while waiting for request to complete"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/webkit/HttpAuthHandlerImpl;->handleResponseForSynchronousRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->signalRequestComplete()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/webkit/HttpAuthHandlerImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HttpAuthHandlerImpl;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->signalRequestComplete()V

    goto :goto_0
.end method

.method handleAuthRequest(Landroid/webkit/LoadListener;)V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->waitForRequestToComplete()V

    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->processNextLoader()V

    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->waitForRequestToComplete()V

    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_1
    sget-boolean v1, Landroid/webkit/HttpAuthHandlerImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_0
    :try_start_3
    iget-object v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/webkit/LoadListener;->handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_4
    iget-object v3, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v1

    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->processNextLoader()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v1, v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v4, Landroid/webkit/HttpAuthHandlerImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    :goto_0
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->processNextLoader()V

    return-void

    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/webkit/LoadListener;->handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v1, v6, v6}, Landroid/webkit/LoadListener;->handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/webkit/HttpAuthHandlerImpl;->handleResponseForSynchronousRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->signalRequestComplete()V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HttpAuthHandlerImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/webkit/HttpAuthHandlerImpl;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->signalRequestComplete()V

    goto :goto_0
.end method

.method public useHttpAuthUsernamePassword()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v1, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->authCredentialsInvalid()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method
