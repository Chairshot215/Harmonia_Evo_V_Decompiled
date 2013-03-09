.class public final Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "VxxConfigPB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1167
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3600(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 1

    .prologue
    .line 1162
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->create()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1217
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 3

    .prologue
    .line 1170
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    invoke-direct {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;-><init>()V

    .line 1171
    .local v0, builder:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    new-instance v1, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;-><init>(Lcom/futuredial/serializer/VxxConfigPB$1;)V

    iput-object v1, v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    .line 1172
    return-object v0
.end method


# virtual methods
.method public build()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1208
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 3

    .prologue
    .line 1221
    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    if-nez v1, :cond_0

    .line 1222
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    .line 1226
    .local v0, returnMe:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    .line 1227
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    if-nez v0, :cond_0

    .line 1181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1184
    :cond_0
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;-><init>(Lcom/futuredial/serializer/VxxConfigPB$1;)V

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    .line 1185
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->clear()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->clear()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->clear()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDateIsUtc()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 2

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasDateIsUtc:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->access$4302(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z

    .line 1345
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->dateIsUtc_:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->access$4402(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z

    .line 1346
    return-object p0
.end method

.method public clearHasXNokDt()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 2

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasHasXNokDt:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->access$4102(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z

    .line 1327
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasXNokDt_:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->access$4202(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z

    .line 1328
    return-object p0
.end method

.method public clearPolicyName()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 2

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasPolicyName:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->access$3902(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z

    .line 1309
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->policyName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->access$4002(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 1310
    return-object p0
.end method

.method public clone()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 2

    .prologue
    .line 1189
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->create()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    invoke-virtual {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

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
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDateIsUtc()Z
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getDateIsUtc()Z

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1

    .prologue
    .line 1198
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1194
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHasXNokDt()Z
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getHasXNokDt()Z

    move-result v0

    return v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDateIsUtc()Z
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasDateIsUtc()Z

    move-result v0

    return v0
.end method

.method public hasHasXNokDt()Z
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasHasXNokDt()Z

    move-result v0

    return v0
.end method

.method public hasPolicyName()Z
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasPolicyName()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->internalGetResult()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1240
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1251
    :goto_0
    return-object p0

    .line 1241
    :cond_0
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasPolicyName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->setPolicyName(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    .line 1244
    :cond_1
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasHasXNokDt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1245
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getHasXNokDt()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->setHasXNokDt(Z)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    .line 1247
    :cond_2
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasDateIsUtc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1248
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getDateIsUtc()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->setDateIsUtc(Z)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    .line 1250
    :cond_3
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1258
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 1262
    .local v1, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1263
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1268
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1270
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1271
    :goto_1
    return-object p0

    .line 1265
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1276
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->setPolicyName(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    goto :goto_0

    .line 1280
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->setHasXNokDt(Z)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    goto :goto_0

    .line 1284
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->setDateIsUtc(Z)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    goto :goto_0

    .line 1263
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1231
    instance-of v0, p1, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    if-eqz v0, :cond_0

    .line 1232
    check-cast p1, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object p0

    .line 1235
    .end local p0
    :goto_0
    return-object p0

    .line 1234
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1162
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
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
    .line 1162
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1162
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

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
    .line 1162
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDateIsUtc(Z)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasDateIsUtc:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->access$4302(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z

    .line 1340
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->dateIsUtc_:Z
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->access$4402(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z

    .line 1341
    return-object p0
.end method

.method public setHasXNokDt(Z)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasHasXNokDt:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->access$4102(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z

    .line 1322
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasXNokDt_:Z
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->access$4202(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z

    .line 1323
    return-object p0
.end method

.method public setPolicyName(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1300
    if-nez p1, :cond_0

    .line 1301
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->hasPolicyName:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->access$3902(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Z)Z

    .line 1304
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->policyName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->access$4002(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 1305
    return-object p0
.end method
