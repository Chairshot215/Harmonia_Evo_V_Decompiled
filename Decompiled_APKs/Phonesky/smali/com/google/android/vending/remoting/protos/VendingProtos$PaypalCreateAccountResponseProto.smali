.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalCreateAccountResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private createAccountKey_:Ljava/lang/String;

.field private hasCreateAccountKey:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10262
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10267
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->createAccountKey_:Ljava/lang/String;

    .line 10299
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->cachedSize:I

    .line 10262
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10302
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 10304
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->getSerializedSize()I

    .line 10306
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->cachedSize:I

    return v0
.end method

.method public getCreateAccountKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10268
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->createAccountKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10311
    const/4 v0, 0x0

    .line 10312
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->hasCreateAccountKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10313
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->getCreateAccountKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10316
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->cachedSize:I

    .line 10317
    return v0
.end method

.method public hasCreateAccountKey()Z
    .locals 1

    .prologue
    .line 10269
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->hasCreateAccountKey:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10325
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10326
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 10330
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10331
    :sswitch_0
    return-object p0

    .line 10336
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->setCreateAccountKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    goto :goto_0

    .line 10326
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 10260
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setCreateAccountKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->hasCreateAccountKey:Z

    .line 10272
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->createAccountKey_:Ljava/lang/String;

    .line 10273
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
    .line 10294
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->hasCreateAccountKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10295
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->getCreateAccountKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10297
    :cond_0
    return-void
.end method
