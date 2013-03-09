.class public final Llocation/unified/LocationDescriptorProto$LatLng;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLng"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasLatitudeE7:Z

.field private hasLongitudeE7:Z

.field private latitudeE7_:I

.field private longitudeE7_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 298
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    .line 315
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->cachedSize:I

    .line 293
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->cachedSize:I

    if-gez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->getSerializedSize()I

    .line 356
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->cachedSize:I

    return v0
.end method

.method public getLatitudeE7()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, size:I
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->hasLatitudeE7()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const/4 v1, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->getLatitudeE7()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->hasLongitudeE7()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    const/4 v1, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->getLongitudeE7()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_1
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->cachedSize:I

    .line 370
    return v0
.end method

.method public hasLatitudeE7()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->hasLatitudeE7:Z

    return v0
.end method

.method public hasLongitudeE7()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->hasLongitudeE7:Z

    return v0
.end method

.method public setLatitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter "value"

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->hasLatitudeE7:Z

    .line 303
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    .line 304
    return-object p0
.end method

.method public setLongitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter "value"

    .prologue
    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->hasLongitudeE7:Z

    .line 320
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    .line 321
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->hasLatitudeE7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->getLatitudeE7()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSFixed32(II)V

    .line 345
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->hasLongitudeE7()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    const/4 v0, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->getLongitudeE7()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSFixed32(II)V

    .line 348
    :cond_1
    return-void
.end method
