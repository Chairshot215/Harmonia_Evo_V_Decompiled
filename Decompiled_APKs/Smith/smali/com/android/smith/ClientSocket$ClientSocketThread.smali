.class Lcom/android/smith/ClientSocket$ClientSocketThread;
.super Ljava/lang/Thread;
.source "ClientSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/ClientSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientSocketThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mResBoolean:Z

.field private mResBytes:[B

.field private mResInteger:I

.field private mSemLock:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lcom/android/smith/ClientSocket;


# direct methods
.method public constructor <init>(Lcom/android/smith/ClientSocket;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 236
    iput-object p1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    .line 237
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    .line 231
    iput-boolean v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z

    .line 232
    iput v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResInteger:I

    .line 233
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBytes:[B

    .line 239
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mSemLock:Ljava/util/concurrent/Semaphore;

    .line 240
    return-void
.end method

.method static synthetic access$400(Lcom/android/smith/ClientSocket$ClientSocketThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/smith/ClientSocket$ClientSocketThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/smith/ClientSocket$ClientSocketThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResInteger:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/smith/ClientSocket$ClientSocketThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput p1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResInteger:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/smith/ClientSocket$ClientSocketThread;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBytes:[B

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/smith/ClientSocket$ClientSocketThread;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBytes:[B

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/smith/ClientSocket$ClientSocketThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->unLock()V

    return-void
.end method

.method private lock()V
    .locals 3

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v1}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 249
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mSemLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "SM:ClientSocket"

    const-string v2, "Semaphore was interrupted!"

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unLock()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;
    invoke-static {v0}, Lcom/android/smith/ClientSocket;->access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mSemLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 313
    invoke-direct {p0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->lock()V

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z

    .line 330
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/smith/ClientSocket;->access$100(Lcom/android/smith/ClientSocket;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 333
    invoke-direct {p0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->lock()V

    .line 335
    :cond_0
    iget-boolean v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z

    return v0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z

    .line 319
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/smith/ClientSocket;->access$100(Lcom/android/smith/ClientSocket;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    invoke-direct {p0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->lock()V

    .line 324
    :cond_0
    iget-boolean v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z

    return v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 4
    .parameter "service"

    .prologue
    const/4 v3, 0x0

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 290
    const-string v0, "SM:ClientSocket"

    const-string v1, "waiting for handler ready ..."

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    invoke-direct {p0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->lock()V

    .line 304
    iget-boolean v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z

    return v0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 4
    .parameter "address"
    .parameter "port"

    .prologue
    .line 267
    :goto_0
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 269
    const-string v0, "SM:ClientSocket"

    const-string v1, "waiting for handler ready ..."

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    invoke-direct {p0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->lock()V

    .line 283
    iget-boolean v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBoolean:Z

    return v0
.end method

.method public read([BII)I
    .locals 4
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mStreamIn:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/smith/ClientSocket;->access$200(Lcom/android/smith/ClientSocket;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lt v1, p3, :cond_0

    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 341
    :cond_0
    const/4 v1, -0x1

    .line 353
    :goto_0
    return v1

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 344
    invoke-direct {p0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->lock()V

    .line 346
    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBytes:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBytes:[B

    array-length v1, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResInteger:I

    if-lez v1, :cond_2

    .line 348
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResInteger:I

    if-ge v0, v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResBytes:[B

    aget-byte v1, v1, v0

    aput-byte v1, p1, v0

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 353
    .end local v0           #i:I
    :cond_2
    iget v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mResInteger:I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 367
    const-string v0, "SM:ClientSocket"

    const-string v1, "begin of client socket thread."

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 371
    new-instance v0, Lcom/android/smith/ClientSocket$ClientSocketThread$1;

    invoke-direct {v0, p0}, Lcom/android/smith/ClientSocket$ClientSocketThread$1;-><init>(Lcom/android/smith/ClientSocket$ClientSocketThread;)V

    iput-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    .line 552
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 554
    const-string v0, "SM:ClientSocket"

    const-string v1, "end of client socket thread."

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public write([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->this$0:Lcom/android/smith/ClientSocket;

    #getter for: Lcom/android/smith/ClientSocket;->mStreamOut:Ljava/io/OutputStream;
    invoke-static {v0}, Lcom/android/smith/ClientSocket;->access$300(Lcom/android/smith/ClientSocket;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/smith/ClientSocket$ClientSocketThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    invoke-direct {p0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->lock()V

    goto :goto_0
.end method
