.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputValidationError"
.end annotation


# instance fields
.field private cachedSize:I

.field private errorMessage_:Ljava/lang/String;

.field private hasErrorMessage:Z

.field private hasInputField:Z

.field private inputField_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8348
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8373
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->inputField_:I

    .line 8390
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->errorMessage_:Ljava/lang/String;

    .line 8427
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->cachedSize:I

    .line 8348
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8430
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->cachedSize:I

    if-gez v0, :cond_0

    .line 8432
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->getSerializedSize()I

    .line 8434
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->cachedSize:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8391
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputField()I
    .locals 1

    .prologue
    .line 8375
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->inputField_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8439
    const/4 v0, 0x0

    .line 8440
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasInputField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8441
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->getInputField()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8444
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8445
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8448
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->cachedSize:I

    .line 8449
    return v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    .prologue
    .line 8392
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasErrorMessage:Z

    return v0
.end method

.method public hasInputField()Z
    .locals 1

    .prologue
    .line 8374
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasInputField:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8457
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8458
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8462
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8463
    :sswitch_0
    return-object p0

    .line 8468
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->setInputField(I)Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;

    goto :goto_0

    .line 8472
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;

    goto :goto_0

    .line 8458
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 8346
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;

    move-result-object v0

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
    .locals 1
    .parameter "value"

    .prologue
    .line 8394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasErrorMessage:Z

    .line 8395
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->errorMessage_:Ljava/lang/String;

    .line 8396
    return-object p0
.end method

.method public setInputField(I)Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
    .locals 1
    .parameter "value"

    .prologue
    .line 8377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasInputField:Z

    .line 8378
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->inputField_:I

    .line 8379
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
    .line 8419
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasInputField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8420
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->getInputField()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8422
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8423
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8425
    :cond_1
    return-void
.end method
