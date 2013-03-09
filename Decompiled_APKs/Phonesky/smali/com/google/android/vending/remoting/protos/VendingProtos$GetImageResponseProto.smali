.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetImageResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasImageData:Z

.field private hasImageDensity:Z

.field private imageData_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private imageDensity_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13765
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13770
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->imageData_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 13787
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->imageDensity_:I

    .line 13823
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->cachedSize:I

    .line 13765
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 13826
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 13828
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->getSerializedSize()I

    .line 13830
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->cachedSize:I

    return v0
.end method

.method public getImageData()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 13771
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->imageData_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getImageDensity()I
    .locals 1

    .prologue
    .line 13788
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->imageDensity_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 13835
    const/4 v0, 0x0

    .line 13836
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->hasImageData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13837
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->getImageData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13840
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->hasImageDensity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13841
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->getImageDensity()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13844
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->cachedSize:I

    .line 13845
    return v0
.end method

.method public hasImageData()Z
    .locals 1

    .prologue
    .line 13772
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->hasImageData:Z

    return v0
.end method

.method public hasImageDensity()Z
    .locals 1

    .prologue
    .line 13789
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->hasImageDensity:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13853
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 13854
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 13858
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13859
    :sswitch_0
    return-object p0

    .line 13864
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->setImageData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    goto :goto_0

    .line 13868
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->setImageDensity(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    goto :goto_0

    .line 13854
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13763
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setImageData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 13774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->hasImageData:Z

    .line 13775
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->imageData_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 13776
    return-object p0
.end method

.method public setImageDensity(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 13791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->hasImageDensity:Z

    .line 13792
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->imageDensity_:I

    .line 13793
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
    .line 13815
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->hasImageData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13816
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->getImageData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 13818
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->hasImageDensity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13819
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->getImageDensity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13821
    :cond_1
    return-void
.end method
