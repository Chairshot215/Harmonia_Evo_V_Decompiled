.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageInfo"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPkgName:Z

.field private hasVersionCode:Z

.field private pkgName_:Ljava/lang/String;

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->pkgName_:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->versionCode_:I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->getSerializedSize()I

    .line 73
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->cachedSize:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->pkgName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasPkgName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_1
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->cachedSize:I

    .line 87
    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->versionCode_:I

    return v0
.end method

.method public hasPkgName()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasPkgName:Z

    return v0
.end method

.method public hasVersionCode()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasVersionCode:Z

    return v0
.end method

.method public setPkgName(Ljava/lang/String;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasPkgName:Z

    .line 19
    iput-object p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->pkgName_:Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasVersionCode:Z

    .line 36
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->versionCode_:I

    .line 37
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
    .line 59
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasPkgName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 65
    :cond_1
    return-void
.end method
