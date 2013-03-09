.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidUsageStatsReport"
.end annotation


# instance fields
.field private androidId_:J

.field private cachedSize:I

.field private hasAndroidId:Z

.field private hasLoggingId:Z

.field private hasUsageStats:Z

.field private loggingId_:J

.field private usageStats_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1953
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1958
    iput-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->androidId_:J

    .line 1975
    iput-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->loggingId_:J

    .line 1992
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->usageStats_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    .line 2037
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->cachedSize:I

    .line 1953
    return-void
.end method


# virtual methods
.method public getAndroidId()J
    .locals 2

    .prologue
    .line 1959
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->androidId_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2039
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->cachedSize:I

    if-gez v0, :cond_0

    .line 2041
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getSerializedSize()I

    .line 2043
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->cachedSize:I

    return v0
.end method

.method public getLoggingId()J
    .locals 2

    .prologue
    .line 1976
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->loggingId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2047
    const/4 v0, 0x0

    .line 2048
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasAndroidId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2049
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getAndroidId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2052
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasLoggingId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2053
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getLoggingId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2056
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasUsageStats()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2057
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getUsageStats()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2060
    :cond_2
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->cachedSize:I

    .line 2061
    return v0
.end method

.method public getUsageStats()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
    .locals 1

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->usageStats_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    return-object v0
.end method

.method public hasAndroidId()Z
    .locals 1

    .prologue
    .line 1960
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasAndroidId:Z

    return v0
.end method

.method public hasLoggingId()Z
    .locals 1

    .prologue
    .line 1977
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasLoggingId:Z

    return v0
.end method

.method public hasUsageStats()Z
    .locals 1

    .prologue
    .line 1993
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasUsageStats:Z

    return v0
.end method

.method public setAndroidId(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;
    .locals 1
    .parameter "value"

    .prologue
    .line 1962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasAndroidId:Z

    .line 1963
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->androidId_:J

    .line 1964
    return-object p0
.end method

.method public setLoggingId(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;
    .locals 1
    .parameter "value"

    .prologue
    .line 1979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasLoggingId:Z

    .line 1980
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->loggingId_:J

    .line 1981
    return-object p0
.end method

.method public setUsageStats(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;
    .locals 1
    .parameter "value"

    .prologue
    .line 1996
    if-nez p1, :cond_0

    .line 1997
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1999
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasUsageStats:Z

    .line 2000
    iput-object p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->usageStats_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    .line 2001
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
    .line 2026
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasAndroidId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2027
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getAndroidId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2029
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasLoggingId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2030
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getLoggingId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2032
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasUsageStats()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2033
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getUsageStats()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2035
    :cond_2
    return-void
.end method
