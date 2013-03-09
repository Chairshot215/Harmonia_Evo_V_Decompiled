.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReconstructDatabaseRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasRetrieveFullHistory:Z

.field private retrieveFullHistory_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20785
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->retrieveFullHistory_:Z

    .line 20822
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->cachedSize:I

    .line 20785
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 20825
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 20827
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->getSerializedSize()I

    .line 20829
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->cachedSize:I

    return v0
.end method

.method public getRetrieveFullHistory()Z
    .locals 1

    .prologue
    .line 20791
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->retrieveFullHistory_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 20834
    const/4 v0, 0x0

    .line 20835
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->hasRetrieveFullHistory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20836
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->getRetrieveFullHistory()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20839
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->cachedSize:I

    .line 20840
    return v0
.end method

.method public hasRetrieveFullHistory()Z
    .locals 1

    .prologue
    .line 20792
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->hasRetrieveFullHistory:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20848
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 20849
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 20853
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20854
    :sswitch_0
    return-object p0

    .line 20859
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->setRetrieveFullHistory(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    goto :goto_0

    .line 20849
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
    .line 20783
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setRetrieveFullHistory(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 20794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->hasRetrieveFullHistory:Z

    .line 20795
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->retrieveFullHistory_:Z

    .line 20796
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
    .line 20817
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->hasRetrieveFullHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20818
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->getRetrieveFullHistory()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 20820
    :cond_0
    return-void
.end method
