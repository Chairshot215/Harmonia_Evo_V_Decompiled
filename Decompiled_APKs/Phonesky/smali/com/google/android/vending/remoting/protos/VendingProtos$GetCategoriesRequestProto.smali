.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetCategoriesRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPrefetchPromoData:Z

.field private prefetchPromoData_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14229
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->prefetchPromoData_:Z

    .line 14266
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->cachedSize:I

    .line 14229
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 14269
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 14271
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->getSerializedSize()I

    .line 14273
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->cachedSize:I

    return v0
.end method

.method public getPrefetchPromoData()Z
    .locals 1

    .prologue
    .line 14235
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->prefetchPromoData_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 14278
    const/4 v0, 0x0

    .line 14279
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->hasPrefetchPromoData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14280
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->getPrefetchPromoData()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14283
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->cachedSize:I

    .line 14284
    return v0
.end method

.method public hasPrefetchPromoData()Z
    .locals 1

    .prologue
    .line 14236
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->hasPrefetchPromoData:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14292
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 14293
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 14297
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14298
    :sswitch_0
    return-object p0

    .line 14303
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->setPrefetchPromoData(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    goto :goto_0

    .line 14293
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 14227
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setPrefetchPromoData(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 14238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->hasPrefetchPromoData:Z

    .line 14239
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->prefetchPromoData_:Z

    .line 14240
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
    .line 14261
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->hasPrefetchPromoData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14262
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->getPrefetchPromoData()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 14264
    :cond_0
    return-void
.end method
