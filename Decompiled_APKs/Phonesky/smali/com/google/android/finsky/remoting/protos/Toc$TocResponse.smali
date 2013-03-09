.class public final Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TocResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private corpus_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private experiments_:Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

.field private hasExperiments:Z

.field private hasHomeUrl:Z

.field private hasIconOverrideUrl:Z

.field private hasRequiresUploadDeviceConfig:Z

.field private hasSelfUpdateConfig:Z

.field private hasTosCheckboxTextMarketingEmails:Z

.field private hasTosContent:Z

.field private hasTosToken:Z

.field private hasTosVersionDeprecated:Z

.field private hasUserSettings:Z

.field private homeUrl_:Ljava/lang/String;

.field private iconOverrideUrl_:Ljava/lang/String;

.field private requiresUploadDeviceConfig_:Z

.field private selfUpdateConfig_:Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;

.field private tosCheckboxTextMarketingEmails_:Ljava/lang/String;

.field private tosContent_:Ljava/lang/String;

.field private tosToken_:Ljava/lang/String;

.field private tosVersionDeprecated_:I

.field private userSettings_:Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    .line 48
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosVersionDeprecated_:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosContent_:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails_:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosToken_:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->homeUrl_:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->experiments_:Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    .line 153
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->userSettings_:Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->iconOverrideUrl_:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->selfUpdateConfig_:Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;

    .line 210
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->requiresUploadDeviceConfig_:Z

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addCorpus(Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getSerializedSize()I

    .line 292
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->cachedSize:I

    return v0
.end method

.method public getCorpusCount()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCorpusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    return-object v0
.end method

.method public getExperiments()Lcom/google/android/finsky/remoting/protos/Toc$Experiments;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->experiments_:Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    return-object v0
.end method

.method public getHomeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->homeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIconOverrideUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->iconOverrideUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiresUploadDeviceConfig()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->requiresUploadDeviceConfig_:Z

    return v0
.end method

.method public getSelfUpdateConfig()Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->selfUpdateConfig_:Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 297
    const/4 v2, 0x0

    .line 298
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getCorpusList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 299
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 302
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosVersionDeprecated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosVersionDeprecated()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosContent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasHomeUrl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 311
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getHomeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 314
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasExperiments()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 315
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getExperiments()Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 318
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 319
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosCheckboxTextMarketingEmails()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 322
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosToken()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 323
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 326
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasUserSettings()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 327
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getUserSettings()Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 330
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasIconOverrideUrl()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 331
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getIconOverrideUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 334
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasSelfUpdateConfig()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 335
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getSelfUpdateConfig()Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 338
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasRequiresUploadDeviceConfig()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 339
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getRequiresUploadDeviceConfig()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 342
    :cond_a
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->cachedSize:I

    .line 343
    return v2
.end method

.method public getTosCheckboxTextMarketingEmails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails_:Ljava/lang/String;

    return-object v0
.end method

.method public getTosContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosContent_:Ljava/lang/String;

    return-object v0
.end method

.method public getTosToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getTosVersionDeprecated()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosVersionDeprecated_:I

    return v0
.end method

.method public getUserSettings()Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->userSettings_:Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    return-object v0
.end method

.method public hasExperiments()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasExperiments:Z

    return v0
.end method

.method public hasHomeUrl()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasHomeUrl:Z

    return v0
.end method

.method public hasIconOverrideUrl()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasIconOverrideUrl:Z

    return v0
.end method

.method public hasRequiresUploadDeviceConfig()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasRequiresUploadDeviceConfig:Z

    return v0
.end method

.method public hasSelfUpdateConfig()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasSelfUpdateConfig:Z

    return v0
.end method

.method public hasTosCheckboxTextMarketingEmails()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails:Z

    return v0
.end method

.method public hasTosContent()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosContent:Z

    return v0
.end method

.method public hasTosToken()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosToken:Z

    return v0
.end method

.method public hasTosVersionDeprecated()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosVersionDeprecated:Z

    return v0
.end method

.method public hasUserSettings()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasUserSettings:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 352
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 356
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    :sswitch_0
    return-object p0

    .line 362
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;-><init>()V

    .line 363
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 364
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->addCorpus(Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 368
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setTosVersionDeprecated(I)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 372
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setTosContent(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 376
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setHomeUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 380
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;-><init>()V

    .line 381
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Toc$Experiments;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 382
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setExperiments(Lcom/google/android/finsky/remoting/protos/Toc$Experiments;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 386
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Toc$Experiments;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setTosCheckboxTextMarketingEmails(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 390
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setTosToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 394
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;-><init>()V

    .line 395
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 396
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setUserSettings(Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 400
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setIconOverrideUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 404
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;-><init>()V

    .line 405
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 406
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setSelfUpdateConfig(Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 410
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setRequiresUploadDeviceConfig(Z)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 352
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    move-result-object v0

    return-object v0
.end method

.method public setExperiments(Lcom/google/android/finsky/remoting/protos/Toc$Experiments;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 140
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasExperiments:Z

    .line 141
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->experiments_:Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    .line 142
    return-object p0
.end method

.method public setHomeUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasHomeUrl:Z

    .line 121
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->homeUrl_:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public setIconOverrideUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasIconOverrideUrl:Z

    .line 178
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->iconOverrideUrl_:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public setRequiresUploadDeviceConfig(Z)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasRequiresUploadDeviceConfig:Z

    .line 215
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->requiresUploadDeviceConfig_:Z

    .line 216
    return-object p0
.end method

.method public setSelfUpdateConfig(Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 197
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasSelfUpdateConfig:Z

    .line 198
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->selfUpdateConfig_:Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;

    .line 199
    return-object p0
.end method

.method public setTosCheckboxTextMarketingEmails(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails:Z

    .line 87
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails_:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setTosContent(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosContent:Z

    .line 70
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosContent_:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public setTosToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosToken:Z

    .line 104
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosToken_:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setTosVersionDeprecated(I)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosVersionDeprecated:Z

    .line 53
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosVersionDeprecated_:I

    .line 54
    return-object p0
.end method

.method public setUserSettings(Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasUserSettings:Z

    .line 161
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->userSettings_:Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    .line 162
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
    .line 250
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getCorpusList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 251
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 253
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosVersionDeprecated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosVersionDeprecated()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosContent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasHomeUrl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 260
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getHomeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 262
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasExperiments()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getExperiments()Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 265
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 266
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosCheckboxTextMarketingEmails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 268
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosToken()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 269
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 271
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasUserSettings()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 272
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getUserSettings()Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 274
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasIconOverrideUrl()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 275
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getIconOverrideUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 277
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasSelfUpdateConfig()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 278
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getSelfUpdateConfig()Lcom/google/android/finsky/remoting/protos/Toc$SelfUpdateConfig;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 280
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasRequiresUploadDeviceConfig()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 281
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getRequiresUploadDeviceConfig()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 283
    :cond_a
    return-void
.end method
