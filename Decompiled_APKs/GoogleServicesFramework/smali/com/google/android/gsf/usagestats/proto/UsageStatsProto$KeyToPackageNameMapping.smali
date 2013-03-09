.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyToPackageNameMapping"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPackageKey:Z

.field private hasUidName:Z

.field private packageKey_:I

.field private sharedPackageList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private uidName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->packageKey_:I

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->uidName_:Ljava/lang/String;

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->sharedPackageList_:Ljava/util/List;

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->cachedSize:I

    .line 131
    return-void
.end method


# virtual methods
.method public addSharedPackageList(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    .locals 1
    .parameter "value"

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->sharedPackageList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->sharedPackageList_:Ljava/util/List;

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->sharedPackageList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->cachedSize:I

    if-gez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getSerializedSize()I

    .line 235
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->cachedSize:I

    return v0
.end method

.method public getPackageKey()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->packageKey_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 240
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasPackageKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getPackageKey()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasUidName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getUidName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getSharedPackageListList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    .line 249
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 252
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    :cond_2
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->cachedSize:I

    .line 253
    return v2
.end method

.method public getSharedPackageListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->sharedPackageList_:Ljava/util/List;

    return-object v0
.end method

.method public getUidName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->uidName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasPackageKey()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasPackageKey:Z

    return v0
.end method

.method public hasUidName()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasUidName:Z

    return v0
.end method

.method public setPackageKey(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    .locals 1
    .parameter "value"

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasPackageKey:Z

    .line 141
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->packageKey_:I

    .line 142
    return-object p0
.end method

.method public setUidName(Ljava/lang/String;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    .locals 1
    .parameter "value"

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasUidName:Z

    .line 158
    iput-object p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->uidName_:Ljava/lang/String;

    .line 159
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
    .line 218
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasPackageKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getPackageKey()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasUidName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getUidName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getSharedPackageListList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    .line 225
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 227
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    :cond_2
    return-void
.end method
