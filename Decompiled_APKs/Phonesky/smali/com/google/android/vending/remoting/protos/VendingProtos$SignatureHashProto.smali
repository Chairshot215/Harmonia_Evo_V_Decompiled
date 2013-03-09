.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignatureHashProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasHash:Z

.field private hasPackageName:Z

.field private hasVersionCode:Z

.field private hash_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private packageName_:Ljava/lang/String;

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19002
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19007
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->packageName_:Ljava/lang/String;

    .line 19024
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->versionCode_:I

    .line 19041
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hash_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 19084
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->cachedSize:I

    .line 19002
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 19087
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 19089
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getSerializedSize()I

    .line 19091
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->cachedSize:I

    return v0
.end method

.method public getHash()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 19042
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hash_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19008
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 19096
    const/4 v0, 0x0

    .line 19097
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19098
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19101
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19102
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19105
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasHash()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19106
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getHash()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19109
    :cond_2
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->cachedSize:I

    .line 19110
    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 19025
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->versionCode_:I

    return v0
.end method

.method public hasHash()Z
    .locals 1

    .prologue
    .line 19043
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasHash:Z

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 19009
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasPackageName:Z

    return v0
.end method

.method public hasVersionCode()Z
    .locals 1

    .prologue
    .line 19026
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19118
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 19119
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 19123
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19124
    :sswitch_0
    return-object p0

    .line 19129
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    goto :goto_0

    .line 19133
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    goto :goto_0

    .line 19137
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->setHash(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    goto :goto_0

    .line 19119
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 19000
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v0

    return-object v0
.end method

.method public setHash(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasHash:Z

    .line 19046
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hash_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 19047
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19011
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasPackageName:Z

    .line 19012
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->packageName_:Ljava/lang/String;

    .line 19013
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasVersionCode:Z

    .line 19029
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->versionCode_:I

    .line 19030
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
    .line 19073
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19074
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 19076
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19077
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 19079
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->hasHash()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19080
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->getHash()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 19082
    :cond_2
    return-void
.end method
