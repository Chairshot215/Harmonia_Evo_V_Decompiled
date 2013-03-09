.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7776
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$19500()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    .locals 1

    .prologue
    .line 7770
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    .locals 3

    .prologue
    .line 7779
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;-><init>()V

    .line 7780
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    .line 7781
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    .locals 1

    .prologue
    .line 7809
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7810
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7812
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7770
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    .locals 3

    .prologue
    .line 7825
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    if-nez v1, :cond_0

    .line 7826
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7829
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    .line 7830
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    .line 7831
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    .locals 2

    .prologue
    .line 7798
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7770
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7770
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

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
    .line 7770
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    .locals 1

    .prologue
    .line 7802
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 7770
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7806
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7835
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 7845
    :cond_0
    :goto_0
    return-object p0

    .line 7836
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7837
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->setEmail(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    .line 7839
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7840
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    .line 7842
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7843
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->setObfuscatedId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7853
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 7854
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7858
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7859
    :sswitch_0
    return-object p0

    .line 7864
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->setEmail(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    goto :goto_0

    .line 7868
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    goto :goto_0

    .line 7872
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->setObfuscatedId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    goto :goto_0

    .line 7854
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 7770
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7770
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

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
    .line 7770
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7909
    if-nez p1, :cond_0

    .line 7910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7912
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->access$19902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;Z)Z

    .line 7913
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->displayName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->access$20002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;Ljava/lang/String;)Ljava/lang/String;

    .line 7914
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7888
    if-nez p1, :cond_0

    .line 7889
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7891
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->access$19702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;Z)Z

    .line 7892
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->email_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->access$19802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;Ljava/lang/String;)Ljava/lang/String;

    .line 7893
    return-object p0
.end method

.method public setObfuscatedId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7930
    if-nez p1, :cond_0

    .line 7931
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7933
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasObfuscatedId:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->access$20102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;Z)Z

    .line 7934
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->obfuscatedId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->access$20202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;Ljava/lang/String;)Ljava/lang/String;

    .line 7935
    return-object p0
.end method
