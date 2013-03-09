.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3368
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$9200()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 1

    .prologue
    .line 3362
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 3

    .prologue
    .line 3371
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;-><init>()V

    .line 3372
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    .line 3373
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    .locals 1

    .prologue
    .line 3401
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3402
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3404
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3362
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    .locals 3

    .prologue
    .line 3417
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    if-nez v1, :cond_0

    .line 3418
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3421
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    .line 3422
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    .line 3423
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 2

    .prologue
    .line 3390
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3362
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3362
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

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
    .line 3362
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    .locals 1

    .prologue
    .line 3394
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3362
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3398
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 3427
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3440
    :cond_0
    :goto_0
    return-object p0

    .line 3428
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasDataTypeId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3429
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getDataTypeId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->setDataTypeId(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    .line 3431
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3432
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->setToken(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    .line 3434
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasTimestampTokenForMigration()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3435
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getTimestampTokenForMigration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->setTimestampTokenForMigration(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    .line 3437
    :cond_4
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasNotificationHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3438
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getNotificationHint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->setNotificationHint(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3448
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3449
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3453
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3454
    :sswitch_0
    return-object p0

    .line 3459
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->setDataTypeId(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    goto :goto_0

    .line 3463
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->setToken(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    goto :goto_0

    .line 3467
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->setTimestampTokenForMigration(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    goto :goto_0

    .line 3471
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->setNotificationHint(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    goto :goto_0

    .line 3449
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 3362
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3362
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

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
    .line 3362
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDataTypeId(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3487
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasDataTypeId:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->access$9402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;Z)Z

    .line 3488
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->dataTypeId_:I
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->access$9502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;I)I

    .line 3489
    return-object p0
.end method

.method public setNotificationHint(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3544
    if-nez p1, :cond_0

    .line 3545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3547
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasNotificationHint:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->access$10002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;Z)Z

    .line 3548
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->notificationHint_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->access$10102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;Ljava/lang/String;)Ljava/lang/String;

    .line 3549
    return-object p0
.end method

.method public setTimestampTokenForMigration(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3526
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasTimestampTokenForMigration:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->access$9802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;Z)Z

    .line 3527
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->timestampTokenForMigration_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->access$9902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;J)J

    .line 3528
    return-object p0
.end method

.method public setToken(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3505
    if-nez p1, :cond_0

    .line 3506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3508
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->hasToken:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->access$9602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;Z)Z

    .line 3509
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->token_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->access$9702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 3510
    return-object p0
.end method
