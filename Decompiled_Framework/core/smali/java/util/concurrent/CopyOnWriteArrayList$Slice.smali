.class Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Slice"
.end annotation


# instance fields
.field private final expectedElements:[Ljava/lang/Object;

.field private final from:I

.field private final to:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->expectedElements:[Ljava/lang/Object;

    iput p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I

    iput p3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I

    return-void
.end method

.method static synthetic access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I
    .locals 1

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I

    return v0
.end method

.method static synthetic access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I
    .locals 1

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I

    return v0
.end method

.method static synthetic access$400(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->expectedElements:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method checkConcurrentModification([Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->expectedElements:[Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method checkElementIndex(I)V
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method checkPositionIndex(I)V
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
