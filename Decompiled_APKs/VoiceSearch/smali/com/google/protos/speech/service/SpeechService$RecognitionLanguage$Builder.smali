.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionLanguageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

.field private localizedName_:Ljava/lang/Object;

.field private matchingLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10884
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11008
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    .line 11061
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 11104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    .line 11193
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    .line 10885
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->maybeForceBuilderInitialization()V

    .line 10886
    return-void
.end method

.method static synthetic access$12400()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1

    .prologue
    .line 10879
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1

    .prologue
    .line 10891
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMatchingLanguageIsMutable()V
    .locals 2

    .prologue
    .line 11107
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 11108
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    .line 11109
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11111
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10889
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 2

    .prologue
    .line 10916
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    .line 10917
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10918
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10920
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 5

    .prologue
    .line 10924
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 10925
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10926
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10927
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10928
    or-int/lit8 v2, v2, 0x1

    .line 10930
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12602(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10931
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 10932
    or-int/lit8 v2, v2, 0x2

    .line 10934
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12702(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 10935
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 10936
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    .line 10937
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10939
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12802(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Ljava/util/List;)Ljava/util/List;

    .line 10940
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 10941
    or-int/lit8 v2, v2, 0x4

    .line 10943
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12902(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10944
    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$13002(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;I)I

    .line 10945
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 2

    .prologue
    .line 10908
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

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
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10879
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1

    .prologue
    .line 10912
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    return-object v0
.end method

.method public hasLanguageTag()Z
    .locals 2

    .prologue
    .line 11063
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11010
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    .line 10977
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->hasName()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10985
    :cond_0
    :goto_0
    return v0

    .line 10981
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->hasLanguageTag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10985
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
    .line 10879
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10879
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

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
    .line 10879
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10992
    const/4 v2, 0x0

    .line 10994
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10999
    if-eqz v2, :cond_0

    .line 11000
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    .line 11003
    :cond_0
    return-object p0

    .line 10995
    :catch_0
    move-exception v1

    .line 10996
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-object v2, v0

    .line 10997
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10999
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 11000
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 10949
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 10973
    :cond_0
    :goto_0
    return-object p0

    .line 10950
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10951
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10952
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12600(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->name_:Ljava/lang/Object;

    .line 10955
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->hasLanguageTag()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10956
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getLanguageTag()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeLanguageTag(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    .line 10958
    :cond_3
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12800(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10959
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10960
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12800(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    .line 10961
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10968
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->hasLocalizedName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10969
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 10970
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12900(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->localizedName_:Ljava/lang/Object;

    goto :goto_0

    .line 10963
    :cond_5
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->ensureMatchingLanguageIsMutable()V

    .line 10964
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->matchingLanguage_:Ljava/util/List;

    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->access$12800(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public mergeLanguageTag(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11085
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11087
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->newBuilder(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 11093
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->bitField0_:I

    .line 11094
    return-object p0

    .line 11090
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    goto :goto_0
.end method
