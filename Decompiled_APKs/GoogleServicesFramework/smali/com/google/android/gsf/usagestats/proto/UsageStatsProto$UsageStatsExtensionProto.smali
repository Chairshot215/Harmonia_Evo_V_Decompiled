.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UsageStatsExtensionProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private dataUsage_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

.field private hasDataUsage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1853
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1858
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->dataUsage_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .line 1895
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->cachedSize:I

    .line 1853
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1897
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 1899
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->getSerializedSize()I

    .line 1901
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->cachedSize:I

    return v0
.end method

.method public getDataUsage()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->dataUsage_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1905
    const/4 v0, 0x0

    .line 1906
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->hasDataUsage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1907
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->getDataUsage()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1910
    :cond_0
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->cachedSize:I

    .line 1911
    return v0
.end method

.method public hasDataUsage()Z
    .locals 1

    .prologue
    .line 1859
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->hasDataUsage:Z

    return v0
.end method

.method public setDataUsage(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1862
    if-nez p1, :cond_0

    .line 1863
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1865
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->hasDataUsage:Z

    .line 1866
    iput-object p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->dataUsage_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .line 1867
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
    .line 1890
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->hasDataUsage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->getDataUsage()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1893
    :cond_0
    return-void
.end method
