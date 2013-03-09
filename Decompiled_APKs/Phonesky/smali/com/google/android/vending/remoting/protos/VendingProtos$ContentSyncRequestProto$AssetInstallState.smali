.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetInstallState"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private assetReferrer_:Ljava/lang/String;

.field private assetState_:I

.field private cachedSize:I

.field private hasAssetId:Z

.field private hasAssetReferrer:Z

.field private hasAssetState:Z

.field private hasInstallTime:Z

.field private hasPackageName:Z

.field private hasUninstallTime:Z

.field private hasVersionCode:Z

.field private installTime_:J

.field private packageName_:Ljava/lang/String;

.field private uninstallTime_:J

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 750
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 755
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetId_:Ljava/lang/String;

    .line 772
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetState_:I

    .line 789
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime_:J

    .line 806
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->uninstallTime_:J

    .line 823
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName_:Ljava/lang/String;

    .line 840
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode_:I

    .line 857
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetReferrer_:Ljava/lang/String;

    .line 915
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->cachedSize:I

    .line 750
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetReferrer_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetState()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetState_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->cachedSize:I

    if-gez v0, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getSerializedSize()I

    .line 922
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->cachedSize:I

    return v0
.end method

.method public getInstallTime()J
    .locals 2

    .prologue
    .line 790
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime_:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 932
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getAssetState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 936
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 937
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getInstallTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 940
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 941
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getUninstallTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 944
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 945
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 948
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 949
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 952
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 953
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getAssetReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 956
    :cond_6
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->cachedSize:I

    .line 957
    return v0
.end method

.method public getUninstallTime()J
    .locals 2

    .prologue
    .line 807
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->uninstallTime_:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode_:I

    return v0
.end method

.method public hasAssetId()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetId:Z

    return v0
.end method

.method public hasAssetReferrer()Z
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer:Z

    return v0
.end method

.method public hasAssetState()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetState:Z

    return v0
.end method

.method public hasInstallTime()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime:Z

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName:Z

    return v0
.end method

.method public hasUninstallTime()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime:Z

    return v0
.end method

.method public hasVersionCode()Z
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 965
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 966
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 970
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 971
    :sswitch_0
    return-object p0

    .line 976
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 980
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setAssetState(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 984
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setInstallTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 988
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setUninstallTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 992
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 996
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 1000
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setAssetReferrer(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 966
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
        0x20 -> :sswitch_2
        0x28 -> :sswitch_3
        0x30 -> :sswitch_4
        0x3a -> :sswitch_5
        0x40 -> :sswitch_6
        0x4a -> :sswitch_7
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
    .line 748
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .locals 1
    .parameter "value"

    .prologue
    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetId:Z

    .line 760
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetId_:Ljava/lang/String;

    .line 761
    return-object p0
.end method

.method public setAssetReferrer(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .locals 1
    .parameter "value"

    .prologue
    .line 861
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer:Z

    .line 862
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetReferrer_:Ljava/lang/String;

    .line 863
    return-object p0
.end method

.method public setAssetState(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .locals 1
    .parameter "value"

    .prologue
    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetState:Z

    .line 777
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetState_:I

    .line 778
    return-object p0
.end method

.method public setInstallTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .locals 1
    .parameter "value"

    .prologue
    .line 793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime:Z

    .line 794
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime_:J

    .line 795
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .locals 1
    .parameter "value"

    .prologue
    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName:Z

    .line 828
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName_:Ljava/lang/String;

    .line 829
    return-object p0
.end method

.method public setUninstallTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .locals 1
    .parameter "value"

    .prologue
    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime:Z

    .line 811
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->uninstallTime_:J

    .line 812
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .locals 1
    .parameter "value"

    .prologue
    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode:Z

    .line 845
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode_:I

    .line 846
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getAssetState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 898
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 899
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getInstallTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 901
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 902
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getUninstallTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 904
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 905
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 907
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 908
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 910
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 911
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getAssetReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 913
    :cond_6
    return-void
.end method
