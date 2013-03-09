.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3798
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$10300()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 1

    .prologue
    .line 3792
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 3

    .prologue
    .line 3801
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;-><init>()V

    .line 3802
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    .line 3803
    return-object v0
.end method


# virtual methods
.method public addAllFromProgressMarker(Ljava/lang/Iterable;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;",
            ">;)",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 4117
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;>;"
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4118
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Ljava/util/List;)Ljava/util/List;

    .line 4120
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4121
    return-object p0
.end method

.method public addFromProgressMarker(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 4109
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4110
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Ljava/util/List;)Ljava/util/List;

    .line 4112
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4113
    return-object p0
.end method

.method public addFromProgressMarker(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4099
    if-nez p1, :cond_0

    .line 4100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4102
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4103
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Ljava/util/List;)Ljava/util/List;

    .line 4105
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4106
    return-object p0
.end method

.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    .locals 1

    .prologue
    .line 3831
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3832
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3834
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3792
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    .locals 3

    .prologue
    .line 3847
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    if-nez v1, :cond_0

    .line 3848
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3851
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 3852
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    iget-object v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Ljava/util/List;)Ljava/util/List;

    .line 3855
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    .line 3856
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    .line 3857
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2

    .prologue
    .line 3820
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3792
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3792
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

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
    .line 3792
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCallerInfo()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    .locals 1

    .prologue
    .line 3972
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getCallerInfo()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    .locals 1

    .prologue
    .line 3824
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3792
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedTypes()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 1

    .prologue
    .line 4027
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getRequestedTypes()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    return-object v0
.end method

.method public hasCallerInfo()Z
    .locals 1

    .prologue
    .line 3969
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasCallerInfo()Z

    move-result v0

    return v0
.end method

.method public hasRequestedTypes()Z
    .locals 1

    .prologue
    .line 4024
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasRequestedTypes()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3828
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeCallerInfo(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3988
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasCallerInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->callerInfo_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10900(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3990
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->callerInfo_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10900(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->callerInfo_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    .line 3995
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasCallerInfo:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z

    .line 3996
    return-object p0

    .line 3993
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->callerInfo_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 3861
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3886
    :cond_0
    :goto_0
    return-object p0

    .line 3862
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasFromTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3863
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getFromTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->setFromTimestamp(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    .line 3865
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasCallerInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3866
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getCallerInfo()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->mergeCallerInfo(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    .line 3868
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasFetchFolders()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3869
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getFetchFolders()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->setFetchFolders(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    .line 3871
    :cond_4
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasRequestedTypes()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3872
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getRequestedTypes()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->mergeRequestedTypes(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    .line 3874
    :cond_5
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasBatchSize()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3875
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getBatchSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->setBatchSize(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    .line 3877
    :cond_6
    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3878
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3879
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Ljava/util/List;)Ljava/util/List;

    .line 3881
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3883
    :cond_8
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3884
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->setStreaming(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3894
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3895
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 3899
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3900
    :sswitch_0
    return-object p0

    .line 3905
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->setFromTimestamp(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    goto :goto_0

    .line 3909
    :sswitch_2
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    .line 3910
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->hasCallerInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3911
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->getCallerInfo()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    .line 3913
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3914
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->setCallerInfo(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    goto :goto_0

    .line 3918
    .end local v0           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->setFetchFolders(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    goto :goto_0

    .line 3922
    :sswitch_4
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    .line 3923
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->hasRequestedTypes()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3924
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->getRequestedTypes()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    .line 3926
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3927
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->setRequestedTypes(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    goto :goto_0

    .line 3931
    .end local v0           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->setBatchSize(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    goto :goto_0

    .line 3935
    :sswitch_6
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    .line 3936
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3937
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->addFromProgressMarker(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    goto :goto_0

    .line 3941
    .end local v0           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->setStreaming(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    goto :goto_0

    .line 3895
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
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
    .line 3792
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3792
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

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
    .line 3792
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeRequestedTypes(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4043
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasRequestedTypes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->requestedTypes_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4045
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->requestedTypes_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->requestedTypes_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .line 4050
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasRequestedTypes:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z

    .line 4051
    return-object p0

    .line 4048
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->requestedTypes_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    goto :goto_0
.end method

.method public setBatchSize(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4067
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasBatchSize:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z

    .line 4068
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->batchSize_:I
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;I)I

    .line 4069
    return-object p0
.end method

.method public setCallerInfo(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3983
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasCallerInfo:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z

    .line 3984
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->callerInfo_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    .line 3985
    return-object p0
.end method

.method public setCallerInfo(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3975
    if-nez p1, :cond_0

    .line 3976
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3978
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasCallerInfo:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z

    .line 3979
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->callerInfo_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    .line 3980
    return-object p0
.end method

.method public setFetchFolders(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4012
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasFetchFolders:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z

    .line 4013
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fetchFolders_:Z
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z

    .line 4014
    return-object p0
.end method

.method public setFromProgressMarker(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4095
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4096
    return-object p0
.end method

.method public setFromProgressMarker(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4088
    if-nez p2, :cond_0

    .line 4089
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4091
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4092
    return-object p0
.end method

.method public setFromTimestamp(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3957
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasFromTimestamp:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z

    .line 3958
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromTimestamp_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$10702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;J)J

    .line 3959
    return-object p0
.end method

.method public setRequestedTypes(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 4038
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasRequestedTypes:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z

    .line 4039
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->requestedTypes_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .line 4040
    return-object p0
.end method

.method public setRequestedTypes(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4030
    if-nez p1, :cond_0

    .line 4031
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4033
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasRequestedTypes:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z

    .line 4034
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->requestedTypes_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .line 4035
    return-object p0
.end method

.method public setStreaming(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasStreaming:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z

    .line 4137
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->streaming_:Z
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->access$11702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z

    .line 4138
    return-object p0
.end method
