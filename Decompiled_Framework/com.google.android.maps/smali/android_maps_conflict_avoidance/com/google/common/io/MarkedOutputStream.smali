.class public Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;
.super Ljava/io/OutputStream;
.source "MarkedOutputStream.java"


# instance fields
.field private contents:[B

.field private markers:[I

.field private nextContent:I

.field private nextMarker:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->clear()V

    return-void
.end method

.method private static calculateSize(III)I
    .locals 1

    sub-int v0, p1, p2

    :goto_0
    if-ge v0, p0, :cond_0

    add-int/2addr v0, p1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private expandContentsIfNecessary(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    array-length v2, v2

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {p1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->calculateSize(III)I

    move-result v1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    new-array v0, v1, [B

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    :cond_0
    return-void
.end method

.method private expandMarkersIfNecessary(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    array-length v2, v2

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    invoke-static {p1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->calculateSize(III)I

    move-result v1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    new-array v0, v1, [I

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public addMarker(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->expandMarkersIfNecessary(I)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    aput p1, v0, v1

    return-void
.end method

.method public availableContent()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    return v0
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->reset()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    return-void
.end method

.method public getMarker(I)I
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    aget v0, v0, p1

    return v0
.end method

.method public numMarkers()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    return-void
.end method

.method public setMarker(II)V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    aput p2, v0, p1

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    return-void
.end method

.method public writeContentsTo(Ljava/io/OutputStream;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
