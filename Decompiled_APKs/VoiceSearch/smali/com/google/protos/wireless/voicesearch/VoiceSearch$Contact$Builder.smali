.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

.field private sentence_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5217
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5333
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    .line 5386
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->MOBILE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 5410
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 5434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    .line 5218
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->maybeForceBuilderInitialization()V

    .line 5219
    return-void
.end method

.method static synthetic access$5700()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1

    .prologue
    .line 5212
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1

    .prologue
    .line 5224
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5222
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    .locals 2

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    .line 5250
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5251
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5253
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    .locals 5

    .prologue
    .line 5257
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 5258
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5259
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5260
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5261
    or-int/lit8 v2, v2, 0x1

    .line 5263
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$5902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5264
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5265
    or-int/lit8 v2, v2, 0x2

    .line 5267
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$6002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 5268
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5269
    or-int/lit8 v2, v2, 0x4

    .line 5271
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$6102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 5272
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5273
    or-int/lit8 v2, v2, 0x8

    .line 5275
    :cond_3
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->sentence_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$6202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5276
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$6302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;I)I

    .line 5277
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 2

    .prologue
    .line 5241
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

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
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    .locals 1

    .prologue
    .line 5245
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5335
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSentence()Z
    .locals 2

    .prologue
    .line 5436
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5302
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->hasName()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5310
    :cond_0
    :goto_0
    return v0

    .line 5306
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->hasSentence()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5310
    const/4 v0, 0x1

    goto :goto_0
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
    .line 5212
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5212
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

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
    .line 5212
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5317
    const/4 v2, 0x0

    .line 5319
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5324
    if-eqz v2, :cond_0

    .line 5325
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    .line 5328
    :cond_0
    return-object p0

    .line 5320
    :catch_0
    move-exception v1

    .line 5321
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-object v2, v0

    .line 5322
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5324
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 5325
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5281
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5298
    :cond_0
    :goto_0
    return-object p0

    .line 5282
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5283
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5284
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$5900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    .line 5287
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->hasPhoneNumberType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5288
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getPhoneNumberType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->setPhoneNumberType(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    .line 5290
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5291
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    .line 5293
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->hasSentence()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5294
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5295
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->sentence_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$6200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5418
    if-nez p1, :cond_0

    .line 5419
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5421
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5422
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 5424
    return-object p0
.end method

.method public setPhoneNumberType(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5394
    if-nez p1, :cond_0

    .line 5395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5397
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5398
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 5400
    return-object p0
.end method
