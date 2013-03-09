.class public Ljava/util/concurrent/atomic/AtomicLong;
.super Ljava/lang/Number;
.source "AtomicLong.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field static final VM_SUPPORTS_LONG_CAS:Z = false

.field private static final serialVersionUID:J = 0x1ac0fab477001718L

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field private volatile value:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v1, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v1, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/util/concurrent/atomic/AtomicLong;->VMSupportsCS8()Z

    move-result v1

    sput-boolean v1, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/atomic/AtomicLong;->valueOffset:J
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

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    return-void
.end method

.method private static native VMSupportsCS8()Z
.end method


# virtual methods
.method public final addAndGet(J)J
    .locals 5

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    add-long v2, v0, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v2
.end method

.method public final compareAndSet(JJ)Z
    .locals 8

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->valueOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet()J
    .locals 6

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    sub-long v2, v0, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v2
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final get()J
    .locals 2

    iget-wide v0, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    return-wide v0
.end method

.method public final getAndAdd(J)J
    .locals 5

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    add-long v2, v0, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v0
.end method

.method public final getAndDecrement()J
    .locals 6

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    sub-long v2, v0, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v0
.end method

.method public final getAndIncrement()J
    .locals 6

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    add-long v2, v0, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v0
.end method

.method public final getAndSet(J)J
    .locals 3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0
.end method

.method public final incrementAndGet()J
    .locals 6

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    add-long v2, v0, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v2
.end method

.method public intValue()I
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final lazySet(J)V
    .locals 6

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->valueOffset:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final set(J)V
    .locals 0

    iput-wide p1, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final weakCompareAndSet(JJ)Z
    .locals 8

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->valueOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
