.class final Ljava/util/Timer$TimerImpl$TimerHeap;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer$TimerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerHeap"
.end annotation


# instance fields
.field private DEFAULT_HEAP_SIZE:I

.field private deletedCancelledNumber:I

.field private size:I

.field private timers:[Ljava/util/TimerTask;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->DEFAULT_HEAP_SIZE:I

    iget v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->DEFAULT_HEAP_SIZE:I

    new-array v0, v0, [Ljava/util/TimerTask;

    iput-object v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    iput v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    iput v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Timer$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/Timer$TimerImpl$TimerHeap;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/Timer$TimerImpl$TimerHeap;Ljava/util/TimerTask;)I
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/Timer$TimerImpl$TimerHeap;->getTask(Ljava/util/TimerTask;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/util/Timer$TimerImpl$TimerHeap;)I
    .locals 1

    iget v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I

    return v0
.end method

.method static synthetic access$202(Ljava/util/Timer$TimerImpl$TimerHeap;I)I
    .locals 0

    iput p1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I

    return p1
.end method

.method private downHeap(I)V
    .locals 7

    move v1, p1

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v0, v3, 0x1

    :goto_0
    iget v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    if-ge v0, v3, :cond_1

    iget v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    if-lez v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget-wide v3, v3, Ljava/util/TimerTask;->when:J

    iget-object v5, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aget-object v5, v5, v0

    iget-wide v5, v5, Ljava/util/TimerTask;->when:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aget-object v3, v3, v1

    iget-wide v3, v3, Ljava/util/TimerTask;->when:J

    iget-object v5, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aget-object v5, v5, v0

    iget-wide v5, v5, Ljava/util/TimerTask;->when:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aget-object v2, v3, v1

    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    iget-object v4, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aput-object v2, v3, v0

    move v1, v0

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private getTask(Ljava/util/TimerTask;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private upHeap()V
    .locals 7

    iget v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v3, v0, -0x1

    div-int/lit8 v1, v3, 0x2

    :goto_0
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aget-object v3, v3, v0

    iget-wide v3, v3, Ljava/util/TimerTask;->when:J

    iget-object v5, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aget-object v5, v5, v1

    iget-wide v5, v5, Ljava/util/TimerTask;->when:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aget-object v2, v3, v0

    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    iget-object v4, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aput-object v2, v3, v1

    move v0, v1

    add-int/lit8 v3, v0, -0x1

    div-int/lit8 v1, v3, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustMinimum()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->downHeap(I)V

    return-void
.end method

.method public delete(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    iget v2, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-direct {p0, p1}, Ljava/util/Timer$TimerImpl$TimerHeap;->downHeap(I)V

    :cond_0
    return-void
.end method

.method public deleteIfCancelled()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I

    invoke-virtual {p0, v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public insert(Ljava/util/TimerTask;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    array-length v1, v1

    iget v2, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/util/TimerTask;

    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    iget v2, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    :cond_0
    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    iget v2, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    aput-object p1, v1, v2

    invoke-direct {p0}, Ljava/util/Timer$TimerImpl$TimerHeap;->upHeap()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minimum()Ljava/util/TimerTask;
    .locals 2

    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->DEFAULT_HEAP_SIZE:I

    new-array v0, v0, [Ljava/util/TimerTask;

    iput-object v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    return-void
.end method
