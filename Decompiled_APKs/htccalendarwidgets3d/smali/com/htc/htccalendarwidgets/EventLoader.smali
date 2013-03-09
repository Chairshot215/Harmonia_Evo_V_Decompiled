.class public Lcom/htc/htccalendarwidgets/EventLoader;
.super Ljava/lang/Object;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccalendarwidgets/EventLoader$1;,
        Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;,
        Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;,
        Lcom/htc/htccalendarwidgets/EventLoader$LoadEventDaysRequest;,
        Lcom/htc/htccalendarwidgets/EventLoader$ShutdownRequest;,
        Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EventLoader"

.field private static mIsShow:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "startDay"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "endDay"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htccalendarwidgets/EventLoader;->PROJECTION:[Ljava/lang/String;

    .line 47
    sput-boolean v3, Lcom/htc/htccalendarwidgets/EventLoader;->mIsShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 222
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mContext:Landroid/content/Context;

    .line 223
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mResolver:Landroid/content/ContentResolver;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/htc/htccalendarwidgets/EventLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/htccalendarwidgets/EventLoader;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/htccalendarwidgets/EventLoader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/htccalendarwidgets/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/htc/htccalendarwidgets/EventLoader;->mIsShow:Z

    return v0
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 303
    const-string v1, "EventLoader"

    const-string v2, "eventLoader.clear()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EventLoader"

    const-string v2, "clear mLoaderQuery fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method isThreadAlive()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderThread:Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->isAlive()Z

    move-result v0

    return v0
.end method

.method loadEventDaysInBackground(II[ZLjava/lang/Runnable;)V
    .locals 4
    .parameter "startDay"
    .parameter "numDays"
    .parameter "eventDays"
    .parameter "uiCallback"

    .prologue
    .line 290
    new-instance v1, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventDaysRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventDaysRequest;-><init>(II[ZLjava/lang/Runnable;)V

    .line 293
    .local v1, request:Lcom/htc/htccalendarwidgets/EventLoader$LoadEventDaysRequest;
    :try_start_0
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 298
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v2, "EventLoader"

    const-string v3, "loadEventDaysInBackground() interrupted!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9
    .parameter "numDays"
    .parameter
    .parameter "start"
    .parameter "successCallback"
    .parameter "cancelCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/Event;",
            ">;J",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 260
    .local p2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/Event;>;"
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 263
    .local v1, id:I
    new-instance v0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;

    move-wide v2, p3

    move v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;-><init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 267
    .local v0, request:Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;
    :try_start_0
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v8

    .line 272
    .local v8, ex:Ljava/lang/InterruptedException;
    const-string v2, "EventLoader"

    const-string v3, "loadEventsInBackground() interrupted!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method release()V
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/EventLoader;->clear()V

    .line 317
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderThread:Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderThread:Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->shutdown()V

    .line 320
    :cond_0
    return-void
.end method

.method public startBackgroundThread(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 231
    sput-boolean p1, Lcom/htc/htccalendarwidgets/EventLoader;->mIsShow:Z

    .line 232
    new-instance v0, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, p0}, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/htc/htccalendarwidgets/EventLoader;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderThread:Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;

    .line 233
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderThread:Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->start()V

    .line 234
    return-void
.end method

.method public stopBackgroundThread(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 240
    sput-boolean p1, Lcom/htc/htccalendarwidgets/EventLoader;->mIsShow:Z

    .line 241
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderThread:Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/EventLoader;->mLoaderThread:Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/htc/htccalendarwidgets/EventLoader$LoaderThread;->shutdown()V

    .line 243
    :cond_0
    return-void
.end method
