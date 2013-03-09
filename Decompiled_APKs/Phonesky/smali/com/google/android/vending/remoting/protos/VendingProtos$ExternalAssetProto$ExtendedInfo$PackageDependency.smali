.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageDependency"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPackageName:Z

.field private hasSkipPermissions:Z

.field private packageName_:Ljava/lang/String;

.field private skipPermissions_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2202
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->packageName_:Ljava/lang/String;

    .line 2224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->skipPermissions_:Z

    .line 2261
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->cachedSize:I

    .line 2202
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2264
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->cachedSize:I

    if-gez v0, :cond_0

    .line 2266
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->getSerializedSize()I

    .line 2268
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->cachedSize:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2273
    const/4 v0, 0x0

    .line 2274
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2275
    const/16 v1, 0x29

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2278
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasSkipPermissions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2279
    const/16 v1, 0x2a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->getSkipPermissions()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2282
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->cachedSize:I

    .line 2283
    return v0
.end method

.method public getSkipPermissions()Z
    .locals 1

    .prologue
    .line 2225
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->skipPermissions_:Z

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 2209
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasPackageName:Z

    return v0
.end method

.method public hasSkipPermissions()Z
    .locals 1

    .prologue
    .line 2226
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasSkipPermissions:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2291
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2292
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2296
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2297
    :sswitch_0
    return-object p0

    .line 2302
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;

    goto :goto_0

    .line 2306
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->setSkipPermissions(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;

    goto :goto_0

    .line 2292
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14a -> :sswitch_1
        0x150 -> :sswitch_2
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
    .line 2200
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;

    move-result-object v0

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    .locals 1
    .parameter "value"

    .prologue
    .line 2211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasPackageName:Z

    .line 2212
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->packageName_:Ljava/lang/String;

    .line 2213
    return-object p0
.end method

.method public setSkipPermissions(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    .locals 1
    .parameter "value"

    .prologue
    .line 2228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasSkipPermissions:Z

    .line 2229
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->skipPermissions_:Z

    .line 2230
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
    .line 2253
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2254
    const/16 v0, 0x29

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2256
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasSkipPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2257
    const/16 v0, 0x2a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->getSkipPermissions()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2259
    :cond_1
    return-void
.end method
