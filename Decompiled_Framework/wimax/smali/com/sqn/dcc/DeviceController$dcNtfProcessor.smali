.class Lcom/sqn/dcc/DeviceController$dcNtfProcessor;
.super Lcom/sqn/dcc/DeviceController$dcThread;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dcNtfProcessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;
    }
.end annotation


# instance fields
.field private _dc:Lcom/sqn/dcc/DeviceController;

.field private _ntfWaitSemaphore:Ljava/util/concurrent/Semaphore;

.field private _queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sqn/dcc/DeviceController;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->this$0:Lcom/sqn/dcc/DeviceController;

    invoke-direct {p0, p1, v0}, Lcom/sqn/dcc/DeviceController$dcThread;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController$1;)V

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_dc:Lcom/sqn/dcc/DeviceController;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_queue:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_ntfWaitSemaphore:Ljava/util/concurrent/Semaphore;

    iput-object p2, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_dc:Lcom/sqn/dcc/DeviceController;

    return-void
.end method

.method private declared-synchronized pop()Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized push(I[B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_queue:Ljava/util/LinkedList;

    new-instance v1, Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;

    invoke-direct {v1, p0, p1, p2}, Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;-><init>(Lcom/sqn/dcc/DeviceController$dcNtfProcessor;I[B)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_ntfWaitSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public run()V
    .locals 9

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v5, :cond_4

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_ntfWaitSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v6, 0x1f4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->pop()Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_1
    iget-boolean v5, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v5, v5, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v3, 0x0

    :cond_2
    iget-boolean v5, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v5, v5, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sqn/dcc/DccClient;

    iget v6, v2, Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;->_id:I

    iget-object v7, v2, Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;->_buf:[B

    invoke-virtual {v5, v6, v7}, Lcom/sqn/dcc/DccClient;->processNotification(I[B)I

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    :cond_3
    iget-boolean v5, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v5, v5, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v5, v5, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<DCP NTF DEBUG> Unknown service id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;->_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    return-void
.end method
