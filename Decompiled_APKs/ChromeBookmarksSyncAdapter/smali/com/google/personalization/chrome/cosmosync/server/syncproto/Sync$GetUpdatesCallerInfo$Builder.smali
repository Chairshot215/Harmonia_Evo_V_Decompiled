.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3042
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$8500()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    .locals 1

    .prologue
    .line 3036
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    .locals 3

    .prologue
    .line 3045
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;-><init>()V

    .line 3046
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    .line 3047
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    .locals 1

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3076
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3078
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3036
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    .locals 3

    .prologue
    .line 3091
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    if-nez v1, :cond_0

    .line 3092
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3095
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    .line 3096
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    .line 3097
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    .locals 2

    .prologue
    .line 3064
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3036
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3036
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

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
    .line 3036
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    .locals 1

    .prologue
    .line 3068
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3036
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3072
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3101
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3108
    :cond_0
    :goto_0
    return-object p0

    .line 3102
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3103
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->getSource()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->setSource(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    .line 3105
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3106
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->getNotificationsEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->setNotificationsEnabled(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3116
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3117
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 3121
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3122
    :sswitch_0
    return-object p0

    .line 3127
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3128
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->valueOf(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    move-result-object v2

    .line 3129
    .local v2, value:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;
    if-eqz v2, :cond_0

    .line 3130
    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->setSource(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    goto :goto_0

    .line 3135
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->setNotificationsEnabled(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    goto :goto_0

    .line 3117
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 3036
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3036
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

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
    .line 3036
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationsEnabled(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasNotificationsEnabled:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->access$8902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;Z)Z

    .line 3173
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->notificationsEnabled_:Z
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->access$9002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;Z)Z

    .line 3174
    return-object p0
.end method

.method public setSource(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3151
    if-nez p1, :cond_0

    .line 3152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3154
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasSource:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->access$8702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;Z)Z

    .line 3155
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->source_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->access$8802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    .line 3156
    return-object p0
.end method
