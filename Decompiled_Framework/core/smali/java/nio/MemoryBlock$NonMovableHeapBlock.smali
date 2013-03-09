.class Ljava/nio/MemoryBlock$NonMovableHeapBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonMovableHeapBlock"
.end annotation


# instance fields
.field private array:[B


# direct methods
.method private constructor <init>([BIJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/nio/MemoryBlock;-><init>(IJLjava/nio/MemoryBlock$1;)V

    iput-object p1, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    return-void
.end method

.method synthetic constructor <init>([BIJLjava/nio/MemoryBlock$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MemoryBlock$NonMovableHeapBlock;-><init>([BIJ)V

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    iget-object v0, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    return-object v0
.end method

.method public free()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/MemoryBlock;->address:I

    return-void
.end method
