.class Lcom/google/protobuf/RopeByteString$PieceIterator;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PieceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/protobuf/LiteralByteString;",
        ">;"
    }
.end annotation


# instance fields
.field private final breadCrumbs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/google/protobuf/RopeByteString;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lcom/google/protobuf/LiteralByteString;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-static {}, Lcom/google/protobuf/RopeByteString;->access$300()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/Deque;

    .line 669
    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/LiteralByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$PieceIterator;->next:Lcom/google/protobuf/LiteralByteString;

    .line 670
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 662
    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private getLeafByLeft(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/LiteralByteString;
    .locals 3
    .parameter "root"

    .prologue
    .line 673
    move-object v0, p1

    .line 674
    .local v0, pos:Lcom/google/protobuf/ByteString;
    :goto_0
    instance-of v2, v0, Lcom/google/protobuf/RopeByteString;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 675
    check-cast v1, Lcom/google/protobuf/RopeByteString;

    .line 676
    .local v1, rbs:Lcom/google/protobuf/RopeByteString;
    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 677
    #getter for: Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;
    invoke-static {v1}, Lcom/google/protobuf/RopeByteString;->access$500(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 678
    goto :goto_0

    .line 679
    .end local v1           #rbs:Lcom/google/protobuf/RopeByteString;
    :cond_0
    check-cast v0, Lcom/google/protobuf/LiteralByteString;

    .end local v0           #pos:Lcom/google/protobuf/ByteString;
    return-object v0
.end method

.method private getNextNonEmptyLeaf()Lcom/google/protobuf/LiteralByteString;
    .locals 2

    .prologue
    .line 686
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    const/4 v0, 0x0

    .line 691
    :goto_0
    return-object v0

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/RopeByteString;

    #getter for: Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;
    invoke-static {v1}, Lcom/google/protobuf/RopeByteString;->access$600(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/LiteralByteString;

    move-result-object v0

    .line 690
    .local v0, result:Lcom/google/protobuf/LiteralByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/LiteralByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$PieceIterator;->next:Lcom/google/protobuf/LiteralByteString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/google/protobuf/LiteralByteString;
    .locals 2

    .prologue
    .line 707
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString$PieceIterator;->next:Lcom/google/protobuf/LiteralByteString;

    if-nez v1, :cond_0

    .line 708
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$PieceIterator;->next:Lcom/google/protobuf/LiteralByteString;

    .line 711
    .local v0, result:Lcom/google/protobuf/LiteralByteString;
    invoke-direct {p0}, Lcom/google/protobuf/RopeByteString$PieceIterator;->getNextNonEmptyLeaf()Lcom/google/protobuf/LiteralByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/RopeByteString$PieceIterator;->next:Lcom/google/protobuf/LiteralByteString;

    .line 712
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/protobuf/LiteralByteString;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 716
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
