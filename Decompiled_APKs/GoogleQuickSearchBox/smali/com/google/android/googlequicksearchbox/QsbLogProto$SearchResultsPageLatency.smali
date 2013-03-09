.class public final Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "QsbLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchResultsPageLatency"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasLatency:Z

.field private hasNetworkType:Z

.field private hasPrefetchAttempted:Z

.field private hasPrefetchSuccess:Z

.field private latency_:I

.field private networkType_:I

.field private prefetchAttempted_:Z

.field private prefetchSuccess_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1085
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1090
    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->latency_:I

    .line 1107
    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->networkType_:I

    .line 1124
    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->prefetchAttempted_:Z

    .line 1141
    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->prefetchSuccess_:Z

    .line 1185
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->cachedSize:I

    .line 1085
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1187
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->cachedSize:I

    if-gez v0, :cond_0

    .line 1189
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->getSerializedSize()I

    .line 1191
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->cachedSize:I

    return v0
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 1091
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->latency_:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 1108
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->networkType_:I

    return v0
.end method

.method public getPrefetchAttempted()Z
    .locals 1

    .prologue
    .line 1125
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->prefetchAttempted_:Z

    return v0
.end method

.method public getPrefetchSuccess()Z
    .locals 1

    .prologue
    .line 1142
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->prefetchSuccess_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1195
    const/4 v0, 0x0

    .line 1196
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->hasLatency()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1197
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->getLatency()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1200
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->hasNetworkType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1201
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->getNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1204
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->hasPrefetchAttempted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1205
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->getPrefetchAttempted()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1208
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->hasPrefetchSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1209
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->getPrefetchSuccess()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1212
    :cond_3
    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->cachedSize:I

    .line 1213
    return v0
.end method

.method public hasLatency()Z
    .locals 1

    .prologue
    .line 1092
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->hasLatency:Z

    return v0
.end method

.method public hasNetworkType()Z
    .locals 1

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->hasNetworkType:Z

    return v0
.end method

.method public hasPrefetchAttempted()Z
    .locals 1

    .prologue
    .line 1126
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->hasPrefetchAttempted:Z

    return v0
.end method

.method public hasPrefetchSuccess()Z
    .locals 1

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->hasPrefetchSuccess:Z

    return v0
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
    .line 1171
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->hasLatency()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->getLatency()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1174
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->hasNetworkType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->getNetworkType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1177
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->hasPrefetchAttempted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1178
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->getPrefetchAttempted()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1180
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->hasPrefetchSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1181
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;->getPrefetchSuccess()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1183
    :cond_3
    return-void
.end method
