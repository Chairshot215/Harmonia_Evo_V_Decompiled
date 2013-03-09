.class public Ljava/util/concurrent/atomic/AtomicBoolean;
.super Ljava/lang/Object;
.source "AtomicBoolean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4098b70a4f3ffc33L

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field private volatile value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v1, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J
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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final compareAndSet(ZZ)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v4, v5

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0

    :cond_0
    move v4, v0

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_1
.end method

.method public final get()Z
    .locals 1

    iget v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAndSet(Z)Z
    .locals 2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method

.method public final lazySet(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J

    invoke-virtual {v1, p0, v2, v3, v0}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final set(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weakCompareAndSet(ZZ)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v4, v5

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0

    :cond_0
    move v4, v0

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_1
.end method
