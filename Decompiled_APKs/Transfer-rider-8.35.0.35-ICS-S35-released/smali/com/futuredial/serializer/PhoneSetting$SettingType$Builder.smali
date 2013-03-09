.class public final Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PhoneSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/PhoneSetting$SettingType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/futuredial/serializer/PhoneSetting$SettingType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->create()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 3

    .prologue
    .line 776
    new-instance v0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    invoke-direct {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;-><init>()V

    .line 777
    .local v0, builder:Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    new-instance v1, Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/futuredial/serializer/PhoneSetting$SettingType;-><init>(Lcom/futuredial/serializer/PhoneSetting$1;)V

    iput-object v1, v0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    .line 778
    return-object v0
.end method


# virtual methods
.method public build()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 3

    .prologue
    .line 827
    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    if-nez v1, :cond_0

    .line 828
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    .line 832
    .local v0, returnMe:Lcom/futuredial/serializer/PhoneSetting$SettingType;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    .line 833
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_0
    new-instance v0, Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;-><init>(Lcom/futuredial/serializer/PhoneSetting$1;)V

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    .line 791
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->clear()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->clear()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->clear()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBookMark()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2702(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1133
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->bookMark_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2802(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1134
    return-object p0
.end method

.method public clearCalendar()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2302(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1059
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->calendar_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2402(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1060
    return-object p0
.end method

.method public clearMusic()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3102(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1207
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->music_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3202(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1208
    return-object p0
.end method

.method public clearPhoneBook()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2102(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1022
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->phoneBook_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2202(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1023
    return-object p0
.end method

.method public clearPhoto()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2902(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1170
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->photo_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3002(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1171
    return-object p0
.end method

.method public clearSms()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2502(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1096
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->sms_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2602(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1097
    return-object p0
.end method

.method public clearTask()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3302(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1244
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->task_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3402(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1245
    return-object p0
.end method

.method public clearTypeName()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTypeName:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$1902(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 985
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getTypeName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->typeName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2002(Lcom/futuredial/serializer/PhoneSetting$SettingType;Ljava/lang/String;)Ljava/lang/String;

    .line 986
    return-object p0
.end method

.method public clone()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2

    .prologue
    .line 795
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->create()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

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
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBookMark()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getBookMark()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public getCalendar()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getCalendar()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1

    .prologue
    .line 804
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 800
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMusic()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getMusic()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneBook()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getPhoneBook()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getPhoto()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public getSms()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getSms()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public getTask()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getTask()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBookMark()Z
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark()Z

    move-result v0

    return v0
.end method

.method public hasCalendar()Z
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar()Z

    move-result v0

    return v0
.end method

.method public hasMusic()Z
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic()Z

    move-result v0

    return v0
.end method

.method public hasPhoneBook()Z
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook()Z

    move-result v0

    return v0
.end method

.method public hasPhoto()Z
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto()Z

    move-result v0

    return v0
.end method

.method public hasSms()Z
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms()Z

    move-result v0

    return v0
.end method

.method public hasTask()Z
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask()Z

    move-result v0

    return v0
.end method

.method public hasTypeName()Z
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTypeName()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->internalGetResult()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeBookMark(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->bookMark_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2800(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->bookMark_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2800(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->bookMark_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2802(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1128
    :goto_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2702(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1129
    return-object p0

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->bookMark_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2802(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    goto :goto_0
.end method

.method public mergeCalendar(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->calendar_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2400(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->calendar_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2400(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->calendar_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2402(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1054
    :goto_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2302(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1055
    return-object p0

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->calendar_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2402(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 846
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 872
    :goto_0
    return-object p0

    .line 847
    :cond_0
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTypeName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->setTypeName(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    .line 850
    :cond_1
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 851
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getPhoneBook()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergePhoneBook(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    .line 853
    :cond_2
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 854
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getCalendar()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeCalendar(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    .line 856
    :cond_3
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 857
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getSms()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeSms(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    .line 859
    :cond_4
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 860
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getBookMark()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeBookMark(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    .line 862
    :cond_5
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 863
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getPhoto()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergePhoto(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    .line 865
    :cond_6
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 866
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getMusic()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeMusic(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    .line 868
    :cond_7
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 869
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getTask()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeTask(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    .line 871
    :cond_8
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 883
    .local v2, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 884
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 889
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 891
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 892
    :goto_1
    return-object p0

    .line 886
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 897
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->setTypeName(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    goto :goto_0

    .line 901
    :sswitch_2
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    .line 902
    .local v0, subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->hasPhoneBook()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 903
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->getPhoneBook()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    .line 905
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 906
    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->setPhoneBook(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    goto :goto_0

    .line 910
    .end local v0           #subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    :sswitch_3
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    .line 911
    .restart local v0       #subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->hasCalendar()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 912
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->getCalendar()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    .line 914
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 915
    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->setCalendar(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    goto :goto_0

    .line 919
    .end local v0           #subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    :sswitch_4
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    .line 920
    .restart local v0       #subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->hasSms()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 921
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->getSms()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    .line 923
    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 924
    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->setSms(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    goto :goto_0

    .line 928
    .end local v0           #subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    :sswitch_5
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    .line 929
    .restart local v0       #subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->hasBookMark()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 930
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->getBookMark()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    .line 932
    :cond_4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 933
    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->setBookMark(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    goto/16 :goto_0

    .line 937
    .end local v0           #subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    :sswitch_6
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    .line 938
    .restart local v0       #subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->hasPhoto()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 939
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->getPhoto()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    .line 941
    :cond_5
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 942
    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->setPhoto(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    goto/16 :goto_0

    .line 946
    .end local v0           #subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    :sswitch_7
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    .line 947
    .restart local v0       #subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->hasMusic()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 948
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->getMusic()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    .line 950
    :cond_6
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 951
    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->setMusic(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    goto/16 :goto_0

    .line 955
    .end local v0           #subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    :sswitch_8
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    .line 956
    .restart local v0       #subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->hasTask()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 957
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->getTask()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    .line 959
    :cond_7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 960
    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->setTask(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    goto/16 :goto_0

    .line 884
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 837
    instance-of v0, p1, Lcom/futuredial/serializer/PhoneSetting$SettingType;

    if-eqz v0, :cond_0

    .line 838
    check-cast p1, Lcom/futuredial/serializer/PhoneSetting$SettingType;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object p0

    .line 841
    .end local p0
    :goto_0
    return-object p0

    .line 840
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
    .line 768
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 768
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

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
    .line 768
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

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
    .line 768
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 768
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

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
    .line 768
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMusic(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->music_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3200(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->music_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3200(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->music_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3202(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1202
    :goto_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3102(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1203
    return-object p0

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->music_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3202(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    goto :goto_0
.end method

.method public mergePhoneBook(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->phoneBook_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2200(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->phoneBook_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2200(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->phoneBook_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2202(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1017
    :goto_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2102(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1018
    return-object p0

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->phoneBook_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2202(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    goto :goto_0
.end method

.method public mergePhoto(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->photo_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3000(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->photo_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3000(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->photo_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3002(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1165
    :goto_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2902(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1166
    return-object p0

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->photo_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3002(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    goto :goto_0
.end method

.method public mergeSms(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->sms_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2600(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->sms_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2600(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->sms_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2602(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1091
    :goto_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2502(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1092
    return-object p0

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->sms_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2602(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    goto :goto_0
.end method

.method public mergeTask(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->task_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3400(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->task_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3400(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->task_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3402(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1239
    :goto_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3302(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1240
    return-object p0

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->task_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3402(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    goto :goto_0
.end method

.method public setBookMark(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2702(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1117
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->bookMark_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2802(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1118
    return-object p0
.end method

.method public setBookMark(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1108
    if-nez p1, :cond_0

    .line 1109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2702(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1112
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->bookMark_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2802(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1113
    return-object p0
.end method

.method public setCalendar(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2302(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1043
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->calendar_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2402(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1044
    return-object p0
.end method

.method public setCalendar(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1034
    if-nez p1, :cond_0

    .line 1035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2302(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1038
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->calendar_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2402(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1039
    return-object p0
.end method

.method public setMusic(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3102(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1191
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->music_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3202(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1192
    return-object p0
.end method

.method public setMusic(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1182
    if-nez p1, :cond_0

    .line 1183
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3102(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1186
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->music_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3202(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1187
    return-object p0
.end method

.method public setPhoneBook(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2102(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1006
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->phoneBook_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2202(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1007
    return-object p0
.end method

.method public setPhoneBook(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 997
    if-nez p1, :cond_0

    .line 998
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2102(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1001
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->phoneBook_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2202(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1002
    return-object p0
.end method

.method public setPhoto(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2902(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1154
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->photo_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3002(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1155
    return-object p0
.end method

.method public setPhoto(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1145
    if-nez p1, :cond_0

    .line 1146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2902(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1149
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->photo_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3002(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1150
    return-object p0
.end method

.method public setSms(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2502(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1080
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->sms_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2602(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1081
    return-object p0
.end method

.method public setSms(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1071
    if-nez p1, :cond_0

    .line 1072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2502(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1075
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->sms_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2602(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1076
    return-object p0
.end method

.method public setTask(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3302(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1228
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->task_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3402(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1229
    return-object p0
.end method

.method public setTask(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1219
    if-nez p1, :cond_0

    .line 1220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3302(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 1223
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->task_:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$3402(Lcom/futuredial/serializer/PhoneSetting$SettingType;Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 1224
    return-object p0
.end method

.method public setTypeName(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 976
    if-nez p1, :cond_0

    .line 977
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTypeName:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$1902(Lcom/futuredial/serializer/PhoneSetting$SettingType;Z)Z

    .line 980
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingType;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingType;->typeName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->access$2002(Lcom/futuredial/serializer/PhoneSetting$SettingType;Ljava/lang/String;)Ljava/lang/String;

    .line 981
    return-object p0
.end method
