.class public Ljava/util/concurrent/atomic/AtomicInteger;
.super Ljava/lang/Number;
.source "AtomicInteger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x563f5ecc8c6c168aL

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field private volatile value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v1, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v1, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/atomic/AtomicInteger;->valueOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    return-void
.end method


# virtual methods
.method public final addAndGet(I)I
    .locals 3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int v1, v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1
.end method

.method public final compareAndSet(II)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->valueOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet()I
    .locals 3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final get()I
    .locals 1

    iget v0, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    return v0
.end method

.method public final getAndAdd(I)I
    .locals 3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int v1, v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0
.end method

.method public final getAndDecrement()I
    .locals 3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0
.end method

.method public final getAndIncrement()I
    .locals 3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0
.end method

.method public final getAndSet(I)I
    .locals 2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method

.method public final incrementAndGet()I
    .locals 3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1
.end method

.method public intValue()I
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final lazySet(I)V
    .locals 3

    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/atomic/AtomicInteger;->valueOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final set(I)V
    .locals 0

    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final weakCompareAndSet(II)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->valueOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method
