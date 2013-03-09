.class Lcom/google/protobuf/RopeByteString$RopeInputStream;
.super Ljava/io/InputStream;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RopeInputStream"
.end annotation


# instance fields
.field private currentPiece:Lcom/google/protobuf/LiteralByteString;

.field private currentPieceIndex:I

.field private currentPieceOffsetInRope:I

.field private currentPieceSize:I

.field private mark:I

.field private pieceIterator:Lcom/google/protobuf/RopeByteString$PieceIterator;

.field final synthetic this$0:Lcom/google/protobuf/RopeByteString;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/RopeByteString;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->this$0:Lcom/google/protobuf/RopeByteString;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 780
    invoke-direct {p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;->initialize()V

    .line 781
    return-void
.end method

.method private advanceIfCurrentPieceFullyRead()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 888
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/protobuf/LiteralByteString;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    iget v1, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    if-ne v0, v1, :cond_0

    .line 891
    iget v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    iget v1, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    .line 892
    iput v2, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    .line 893
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/google/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/google/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/protobuf/LiteralByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/protobuf/LiteralByteString;

    .line 895
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/protobuf/LiteralByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/protobuf/LiteralByteString;

    .line 898
    iput v2, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    goto :goto_0
.end method

.method private initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 875
    new-instance v0, Lcom/google/protobuf/RopeByteString$PieceIterator;

    iget-object v1, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->this$0:Lcom/google/protobuf/RopeByteString;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/google/protobuf/RopeByteString$PieceIterator;

    .line 876
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/google/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/protobuf/LiteralByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/protobuf/LiteralByteString;

    .line 877
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/protobuf/LiteralByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    .line 878
    iput v3, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    .line 879
    iput v3, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    .line 880
    return-void
.end method

.method private readSkipInternal([BII)I
    .locals 5
    .parameter "b"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 814
    move v0, p3

    .line 815
    .local v0, bytesRemaining:I
    :goto_0
    if-lez v0, :cond_2

    .line 816
    invoke-direct {p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;->advanceIfCurrentPieceFullyRead()V

    .line 817
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/protobuf/LiteralByteString;

    if-nez v3, :cond_0

    .line 818
    if-ne v0, p3, :cond_2

    .line 820
    const/4 v3, -0x1

    .line 836
    :goto_1
    return v3

    .line 825
    :cond_0
    iget v3, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    iget v4, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    sub-int v2, v3, v4

    .line 826
    .local v2, currentPieceRemaining:I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 827
    .local v1, count:I
    if-eqz p1, :cond_1

    .line 828
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/protobuf/LiteralByteString;

    iget v4, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    invoke-virtual {v3, p1, v4, p2, v1}, Lcom/google/protobuf/LiteralByteString;->copyTo([BIII)V

    .line 829
    add-int/2addr p2, v1

    .line 831
    :cond_1
    iget v3, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    .line 832
    sub-int/2addr v0, v1

    .line 833
    goto :goto_0

    .line 836
    .end local v1           #count:I
    .end local v2           #currentPieceRemaining:I
    :cond_2
    sub-int v3, p3, v0

    goto :goto_1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    iget v1, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    iget v2, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int v0, v1, v2

    .line 852
    .local v0, bytesRead:I
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->this$0:Lcom/google/protobuf/RopeByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/RopeByteString;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public mark(I)V
    .locals 2
    .parameter "readAheadLimit"

    .prologue
    .line 863
    iget v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    iget v1, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->mark:I

    .line 864
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;->advanceIfCurrentPieceFullyRead()V

    .line 842
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/protobuf/LiteralByteString;

    if-nez v0, :cond_0

    .line 843
    const/4 v0, -0x1

    .line 845
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/protobuf/LiteralByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/LiteralByteString;->byteAt(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .parameter "b"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 785
    if-nez p1, :cond_0

    .line 786
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 787
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_2

    .line 788
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 790
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/RopeByteString$RopeInputStream;->readSkipInternal([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 3

    .prologue
    .line 869
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;->initialize()V

    .line 870
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/protobuf/RopeByteString$RopeInputStream;->mark:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/protobuf/RopeByteString$RopeInputStream;->readSkipInternal([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    monitor-exit p0

    return-void

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .parameter "length"

    .prologue
    .line 795
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 796
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 797
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 798
    const-wide/32 p1, 0x7fffffff

    .line 800
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int v2, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/protobuf/RopeByteString$RopeInputStream;->readSkipInternal([BII)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
