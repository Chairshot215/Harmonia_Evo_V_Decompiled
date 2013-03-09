.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2267
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    .locals 1

    .prologue
    .line 2261
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    .locals 3

    .prologue
    .line 2270
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;-><init>()V

    .line 2271
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    .line 2272
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;
    .locals 1

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2301
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2303
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2261
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;
    .locals 3

    .prologue
    .line 2316
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    if-nez v1, :cond_0

    .line 2317
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2320
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    .line 2321
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    .line 2322
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    .locals 2

    .prologue
    .line 2289
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2261
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2261
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

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
    .line 2261
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;
    .locals 1

    .prologue
    .line 2293
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2261
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2326
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2333
    :cond_0
    :goto_0
    return-object p0

    .line 2327
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->hasExtensionId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2328
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->getExtensionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->setExtensionId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    .line 2330
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->hasBookmarkWritesSinceLastCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2331
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->getBookmarkWritesSinceLastCommit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->setBookmarkWritesSinceLastCommit(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2341
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2342
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2346
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2347
    :sswitch_0
    return-object p0

    .line 2352
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->setExtensionId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    goto :goto_0

    .line 2356
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->setBookmarkWritesSinceLastCommit(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    goto :goto_0

    .line 2342
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 2261
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2261
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

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
    .line 2261
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBookmarkWritesSinceLastCommit(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->hasBookmarkWritesSinceLastCommit:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->access$7502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;Z)Z

    .line 2394
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->bookmarkWritesSinceLastCommit_:I
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->access$7602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;I)I

    .line 2395
    return-object p0
.end method

.method public setExtensionId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2372
    if-nez p1, :cond_0

    .line 2373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2375
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->hasExtensionId:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->access$7302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;Z)Z

    .line 2376
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->extensionId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->access$7402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2377
    return-object p0
.end method
