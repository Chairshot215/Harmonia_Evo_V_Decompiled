.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataMessageProto"
.end annotation


# instance fields
.field private appData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private category_:Ljava/lang/String;

.field private hasCategory:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24349
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 24354
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->category_:Ljava/lang/String;

    .line 24370
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->appData_:Ljava/util/List;

    .line 24427
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->cachedSize:I

    .line 24349
    return-void
.end method


# virtual methods
.method public addAppData(Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 24387
    if-nez p1, :cond_0

    .line 24388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24390
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->appData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->appData_:Ljava/util/List;

    .line 24393
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->appData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24394
    return-object p0
.end method

.method public getAppDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24373
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->appData_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 24430
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 24432
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->getSerializedSize()I

    .line 24434
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->cachedSize:I

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24355
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->category_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 24439
    const/4 v2, 0x0

    .line 24440
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->hasCategory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24441
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 24444
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->getAppDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;

    .line 24445
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 24448
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    :cond_1
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->cachedSize:I

    .line 24449
    return v2
.end method

.method public hasCategory()Z
    .locals 1

    .prologue
    .line 24356
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->hasCategory:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24457
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 24458
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 24462
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24463
    :sswitch_0
    return-object p0

    .line 24468
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->setCategory(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;

    goto :goto_0

    .line 24472
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;-><init>()V

    .line 24473
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 24474
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->addAppData(Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;

    goto :goto_0

    .line 24458
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
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
    .line 24347
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;

    move-result-object v0

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 24358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->hasCategory:Z

    .line 24359
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->category_:Ljava/lang/String;

    .line 24360
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24419
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->hasCategory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24420
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 24422
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$DataMessageProto;->getAppDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;

    .line 24423
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 24425
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    :cond_1
    return-void
.end method
