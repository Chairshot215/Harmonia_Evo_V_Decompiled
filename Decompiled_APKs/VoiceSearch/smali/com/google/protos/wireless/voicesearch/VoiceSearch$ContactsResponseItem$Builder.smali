.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10954
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11046
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 11099
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->MOBILE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 10955
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->maybeForceBuilderInitialization()V

    .line 10956
    return-void
.end method

.method static synthetic access$12900()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    .locals 1

    .prologue
    .line 10949
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    .locals 1

    .prologue
    .line 10961
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10959
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10949
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .locals 2

    .prologue
    .line 10982
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    .line 10983
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10984
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10986
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10949
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .locals 5

    .prologue
    .line 10990
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 10991
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->bitField0_:I

    .line 10992
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10993
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10994
    or-int/lit8 v2, v2, 0x1

    .line 10996
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->access$13102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10997
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 10998
    or-int/lit8 v2, v2, 0x2

    .line 11000
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->access$13202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 11001
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->access$13302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;I)I

    .line 11002
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10949
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10949
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    .locals 2

    .prologue
    .line 10974
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

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
    .line 10949
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 10949
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10949
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .locals 1

    .prologue
    .line 10978
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11048
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 11019
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11021
    const/4 v0, 0x0

    .line 11023
    :goto_0
    return v0

    :cond_0
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
    .line 10949
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10949
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

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
    .line 10949
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11030
    const/4 v2, 0x0

    .line 11032
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11037
    if-eqz v2, :cond_0

    .line 11038
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    .line 11041
    :cond_0
    return-object p0

    .line 11033
    :catch_0
    move-exception v1

    .line 11034
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-object v2, v0

    .line 11035
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11037
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 11038
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 11006
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 11015
    :cond_0
    :goto_0
    return-object p0

    .line 11007
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11008
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->bitField0_:I

    .line 11009
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->access$13100(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 11012
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->hasPhoneNumberType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11013
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getPhoneNumberType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->setPhoneNumberType(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11073
    if-nez p1, :cond_0

    .line 11074
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11076
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->bitField0_:I

    .line 11077
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 11079
    return-object p0
.end method

.method public setPhoneNumberType(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11107
    if-nez p1, :cond_0

    .line 11108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11110
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->bitField0_:I

    .line 11111
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 11113
    return-object p0
.end method
