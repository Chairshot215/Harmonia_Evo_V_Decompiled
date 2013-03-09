.class public Lcom/futuredial/obex/OBEX_BODY;
.super Ljava/lang/Object;
.source "OBEX_BODY.java"


# instance fields
.field protected DataBuffer:[B

.field protected DataBufferIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendData([B)V
    .locals 4
    .parameter "StreamData"

    .prologue
    const/4 v3, 0x0

    .line 16
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBuffer:[B

    array-length v1, v1

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 17
    .local v0, tmp:[B
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBuffer:[B

    iget-object v2, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBuffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBuffer:[B

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iput-object v0, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBuffer:[B

    .line 20
    return-void
.end method

.method public getDataHeader(I)[B
    .locals 4
    .parameter "nDataSize"

    .prologue
    const/4 v3, 0x0

    .line 24
    new-array v0, v3, [B

    .line 26
    .local v0, retArray:[B
    if-lez p1, :cond_0

    iget v1, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBufferIndex:I

    iget-object v2, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBuffer:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 28
    new-array v0, p1, [B

    .line 29
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBuffer:[B

    iget v2, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBufferIndex:I

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v1, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBufferIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBufferIndex:I

    .line 32
    :cond_0
    return-object v0
.end method

.method public setData([B)V
    .locals 3
    .parameter "StreamData"

    .prologue
    const/4 v2, 0x0

    .line 9
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBuffer:[B

    .line 10
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBuffer:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iput v2, p0, Lcom/futuredial/obex/OBEX_BODY;->DataBufferIndex:I

    .line 12
    return-void
.end method
