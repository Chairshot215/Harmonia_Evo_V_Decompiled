.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAssetResponseProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    }
.end annotation


# instance fields
.field private additionalFile_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private hasInstallAsset:Z

.field private installAsset_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12854
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->installAsset_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    .line 13358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->additionalFile_:Ljava/util/List;

    .line 13417
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->cachedSize:I

    .line 12854
    return-void
.end method


# virtual methods
.method public addAdditionalFile(Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 13375
    if-nez p1, :cond_0

    .line 13376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13378
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->additionalFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->additionalFile_:Ljava/util/List;

    .line 13381
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->additionalFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13382
    return-object p0
.end method

.method public getAdditionalFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13361
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->additionalFile_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 13420
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 13422
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getSerializedSize()I

    .line 13424
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->cachedSize:I

    return v0
.end method

.method public getInstallAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1

    .prologue
    .line 13341
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->installAsset_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 13429
    const/4 v2, 0x0

    .line 13430
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->hasInstallAsset()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13431
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getInstallAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13434
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getAdditionalFileList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    .line 13435
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    const/16 v3, 0xf

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 13438
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    :cond_1
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->cachedSize:I

    .line 13439
    return v2
.end method

.method public hasInstallAsset()Z
    .locals 1

    .prologue
    .line 13340
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->hasInstallAsset:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13447
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 13448
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 13452
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13453
    :sswitch_0
    return-object p0

    .line 13458
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;-><init>()V

    .line 13459
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 13460
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->setInstallAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    goto :goto_0

    .line 13464
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;-><init>()V

    .line 13465
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 13466
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->addAdditionalFile(Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    goto :goto_0

    .line 13448
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0x7a -> :sswitch_2
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
    .line 12852
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setInstallAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 13343
    if-nez p1, :cond_0

    .line 13344
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13346
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->hasInstallAsset:Z

    .line 13347
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->installAsset_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    .line 13348
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
    .line 13409
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->hasInstallAsset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13410
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getInstallAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 13412
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getAdditionalFileList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    .line 13413
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 13415
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    :cond_1
    return-void
.end method
