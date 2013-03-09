.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppDataProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasKey:Z

.field private hasValue:Z

.field private key_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24496
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 24501
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->key_:Ljava/lang/String;

    .line 24518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->value_:Ljava/lang/String;

    .line 24556
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->cachedSize:I

    .line 24496
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 24559
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 24561
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->getSerializedSize()I

    .line 24563
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->cachedSize:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24502
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 24568
    const/4 v0, 0x0

    .line 24569
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24570
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24573
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24574
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24577
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->cachedSize:I

    .line 24578
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24519
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 24503
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasKey:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 24520
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasValue:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24586
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 24587
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 24591
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24592
    :sswitch_0
    return-object p0

    .line 24597
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->setKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;

    goto :goto_0

    .line 24601
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->setValue(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;

    goto :goto_0

    .line 24587
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 24494
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 24505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasKey:Z

    .line 24506
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->key_:Ljava/lang/String;

    .line 24507
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 24522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasValue:Z

    .line 24523
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->value_:Ljava/lang/String;

    .line 24524
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
    .line 24548
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24549
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 24551
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24552
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 24554
    :cond_1
    return-void
.end method
