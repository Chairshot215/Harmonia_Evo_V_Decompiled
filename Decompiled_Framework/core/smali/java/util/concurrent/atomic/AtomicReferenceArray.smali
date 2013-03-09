.class public Ljava/util/concurrent/atomic/AtomicReferenceArray;
.super Ljava/lang/Object;
.source "AtomicReferenceArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final base:I = 0x0

.field private static final serialVersionUID:J = -0x562d215e419a9ff4L

.field private static final shift:I

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v1, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    sget-object v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;->base:I

    sget-object v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Error;

    const-string v2, "data type scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;->shift:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    return-void
.end method

.method private static byteOffset(I)J
    .locals 4

    int-to-long v0, p0

    sget v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->shift:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->base:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private checkedByteOffset(I)J
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->byteOffset(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private compareAndSetRaw(JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;TE;)Z"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getRaw(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSetRaw(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getRaw(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAndSet(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v1

    :cond_0
    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getRaw(J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSetRaw(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0
.end method

.method public final lazySet(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final set(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v3, "[]"

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->byteOffset(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getRaw(J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_1

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final weakCompareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
