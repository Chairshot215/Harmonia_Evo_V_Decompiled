.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 3

    .prologue
    .line 216
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;-><init>()V

    .line 217
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    .line 218
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    .locals 3

    .prologue
    .line 262
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    if-nez v1, :cond_0

    .line 263
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    .line 267
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    .line 268
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 272
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-object p0

    .line 273
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasMetaDataWriteTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getMetaDataWriteTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->setMetaDataWriteTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    .line 276
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasFileDataWriteTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getFileDataWriteTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->setFileDataWriteTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    .line 279
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasUserLookupTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getUserLookupTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->setUserLookupTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    .line 282
    :cond_4
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasMetaDataReadTime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 283
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getMetaDataReadTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->setMetaDataReadTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    .line 285
    :cond_5
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasFileDataReadTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 286
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getFileDataReadTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->setFileDataReadTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    .line 288
    :cond_6
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasTotalRequestTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getTotalRequestTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->setTotalRequestTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 300
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 304
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    :sswitch_0
    return-object p0

    .line 310
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->setMetaDataWriteTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    goto :goto_0

    .line 314
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->setFileDataWriteTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    goto :goto_0

    .line 318
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->setUserLookupTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    goto :goto_0

    .line 322
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->setMetaDataReadTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    goto :goto_0

    .line 326
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->setFileDataReadTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    goto :goto_0

    .line 330
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->setTotalRequestTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    goto :goto_0

    .line 300
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 207
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFileDataReadTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasFileDataReadTime:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->access$1102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;Z)Z

    .line 419
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->fileDataReadTime_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->access$1202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;J)J

    .line 420
    return-object p0
.end method

.method public setFileDataWriteTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasFileDataWriteTime:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->access$502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;Z)Z

    .line 365
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->fileDataWriteTime_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->access$602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;J)J

    .line 366
    return-object p0
.end method

.method public setMetaDataReadTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasMetaDataReadTime:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->access$902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;Z)Z

    .line 401
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->metaDataReadTime_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->access$1002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;J)J

    .line 402
    return-object p0
.end method

.method public setMetaDataWriteTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasMetaDataWriteTime:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->access$302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;Z)Z

    .line 347
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->metaDataWriteTime_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->access$402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;J)J

    .line 348
    return-object p0
.end method

.method public setTotalRequestTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasTotalRequestTime:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->access$1302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;Z)Z

    .line 437
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->totalRequestTime_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->access$1402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;J)J

    .line 438
    return-object p0
.end method

.method public setUserLookupTime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasUserLookupTime:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->access$702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;Z)Z

    .line 383
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->userLookupTime_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->access$802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;J)J

    .line 384
    return-object p0
.end method
