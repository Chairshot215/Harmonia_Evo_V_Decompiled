.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4532
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$12400()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    .locals 1

    .prologue
    .line 4526
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    .locals 3

    .prologue
    .line 4535
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;-><init>()V

    .line 4536
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    .line 4537
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    .locals 1

    .prologue
    .line 4565
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4566
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4568
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4526
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    .locals 3

    .prologue
    .line 4581
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    if-nez v1, :cond_0

    .line 4582
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4585
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    .line 4586
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    .line 4587
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    .locals 2

    .prologue
    .line 4554
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4526
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4526
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

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
    .line 4526
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    .locals 1

    .prologue
    .line 4558
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4526
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4562
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4591
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4592
    :cond_0
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4600
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4601
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 4605
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4606
    :pswitch_0
    return-object p0

    .line 4601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
    .line 4526
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4526
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

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
    .line 4526
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    return-object v0
.end method
