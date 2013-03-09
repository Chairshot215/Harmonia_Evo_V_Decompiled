.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckLicenseRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasNonce:Z

.field private hasPackageName:Z

.field private hasVersionCode:Z

.field private nonce_:J

.field private packageName_:Ljava/lang/String;

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14876
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14881
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->packageName_:Ljava/lang/String;

    .line 14898
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->versionCode_:I

    .line 14915
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->nonce_:J

    .line 14958
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->cachedSize:I

    .line 14876
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 14961
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 14963
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getSerializedSize()I

    .line 14965
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->cachedSize:I

    return v0
.end method

.method public getNonce()J
    .locals 2

    .prologue
    .line 14916
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->nonce_:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14882
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 14970
    const/4 v0, 0x0

    .line 14971
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14972
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14975
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14976
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14979
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasNonce()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14980
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getNonce()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14983
    :cond_2
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->cachedSize:I

    .line 14984
    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 14899
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->versionCode_:I

    return v0
.end method

.method public hasNonce()Z
    .locals 1

    .prologue
    .line 14917
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasNonce:Z

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 14883
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasPackageName:Z

    return v0
.end method

.method public hasVersionCode()Z
    .locals 1

    .prologue
    .line 14900
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14992
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 14993
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 14997
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14998
    :sswitch_0
    return-object p0

    .line 15003
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    goto :goto_0

    .line 15007
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    goto :goto_0

    .line 15011
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    goto :goto_0

    .line 14993
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 14874
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 14919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasNonce:Z

    .line 14920
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->nonce_:J

    .line 14921
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 14885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasPackageName:Z

    .line 14886
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->packageName_:Ljava/lang/String;

    .line 14887
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 14902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasVersionCode:Z

    .line 14903
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->versionCode_:I

    .line 14904
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
    .line 14947
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14948
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 14950
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14951
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 14953
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->hasNonce()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14954
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->getNonce()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 14956
    :cond_2
    return-void
.end method
