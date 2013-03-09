.class public Lcom/futuredial/publicobj/TaskParameter;
.super Ljava/lang/Object;
.source "TaskParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/publicobj/TaskParameter$WriteParameters;,
        Lcom/futuredial/publicobj/TaskParameter$ParserParameters;,
        Lcom/futuredial/publicobj/TaskParameter$ReadParameters;
    }
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "TaskParameter"


# instance fields
.field public contentName:Ljava/lang/String;

.field public contentType:I

.field public context:Landroid/content/Context;

.field public pPara:Lcom/futuredial/publicobj/TaskParameter$ParserParameters;

.field public rPara:Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

.field public retryTimes:I

.field public strAccountName:Ljava/lang/String;

.field public strAccountType:Ljava/lang/String;

.field public strSPhoneInfo:Ljava/lang/String;

.field public uiHandler:Landroid/os/Handler;

.field public wPara:Lcom/futuredial/publicobj/TaskParameter$WriteParameters;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/futuredial/publicobj/ParametersFromUI;)V
    .locals 3
    .parameter "iContentType"
    .parameter "sContentName"
    .parameter "uiPara"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    .line 18
    const-string v0, "pb"

    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->contentName:Ljava/lang/String;

    .line 20
    const-string v0, "Unknown XXX"

    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->strSPhoneInfo:Ljava/lang/String;

    .line 23
    const-string v0, "com.htc.android.pcsc"

    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->strAccountType:Ljava/lang/String;

    .line 24
    const-string v0, "pcsc"

    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->strAccountName:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/futuredial/publicobj/TaskParameter;->context:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

    invoke-direct {v0, p0}, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->rPara:Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

    .line 30
    new-instance v0, Lcom/futuredial/publicobj/TaskParameter$ParserParameters;

    invoke-direct {v0, p0}, Lcom/futuredial/publicobj/TaskParameter$ParserParameters;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->pPara:Lcom/futuredial/publicobj/TaskParameter$ParserParameters;

    .line 31
    iput-object v2, p0, Lcom/futuredial/publicobj/TaskParameter;->wPara:Lcom/futuredial/publicobj/TaskParameter$WriteParameters;

    .line 35
    iput v1, p0, Lcom/futuredial/publicobj/TaskParameter;->retryTimes:I

    .line 39
    iput p1, p0, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    .line 40
    iput-object p2, p0, Lcom/futuredial/publicobj/TaskParameter;->contentName:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p3}, Lcom/futuredial/publicobj/TaskParameter;->InitFromUIPara(Lcom/futuredial/publicobj/ParametersFromUI;)V

    .line 44
    return-void
.end method

.method private InitFromUIPara(Lcom/futuredial/publicobj/ParametersFromUI;)V
    .locals 3
    .parameter "uiPara"

    .prologue
    .line 48
    iget-object v0, p1, Lcom/futuredial/publicobj/ParametersFromUI;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->context:Landroid/content/Context;

    .line 49
    iget-object v0, p1, Lcom/futuredial/publicobj/ParametersFromUI;->uiHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->uiHandler:Landroid/os/Handler;

    .line 51
    iget-object v0, p1, Lcom/futuredial/publicobj/ParametersFromUI;->strSPhoneInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->strSPhoneInfo:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/futuredial/publicobj/ParametersFromUI;->strAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->strAccountType:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/futuredial/publicobj/ParametersFromUI;->strAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->strAccountName:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->rPara:Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

    iget-object v1, p1, Lcom/futuredial/publicobj/ParametersFromUI;->btDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v1, v0, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 58
    iget-object v0, p0, Lcom/futuredial/publicobj/TaskParameter;->pPara:Lcom/futuredial/publicobj/TaskParameter$ParserParameters;

    iget-object v1, p1, Lcom/futuredial/publicobj/ParametersFromUI;->sParserPolicy:[Ljava/lang/String;

    iget v2, p0, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/futuredial/publicobj/TaskParameter$ParserParameters;->parserPolicy:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public InitFromPhoneSetting(Lcom/futuredial/serializer/PhoneSetting$SettingType;)V
    .locals 5
    .parameter "settingType"

    .prologue
    .line 95
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v1, 0x0

    .line 97
    .local v1, module:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    iget v3, p0, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoneBook()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getPhoneBook()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    .line 112
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 115
    iget-object v3, p0, Lcom/futuredial/publicobj/TaskParameter;->rPara:Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->commuClassName:Ljava/lang/String;

    .line 116
    iget-object v3, p0, Lcom/futuredial/publicobj/TaskParameter;->rPara:Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComPolicy()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->commuPolicy:Ljava/lang/String;

    .line 117
    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComUuidCount()I

    move-result v2

    .line 118
    .local v2, uuidCount:I
    iget-object v3, p0, Lcom/futuredial/publicobj/TaskParameter;->rPara:Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, v3, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->uuid:[Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_9

    .line 121
    iget-object v3, p0, Lcom/futuredial/publicobj/TaskParameter;->rPara:Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

    iget-object v3, v3, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->uuid:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComUuid(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 99
    .end local v0           #i:I
    .end local v2           #uuidCount:I
    :cond_3
    iget v3, p0, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasCalendar()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getCalendar()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    goto :goto_1

    .line 101
    :cond_4
    iget v3, p0, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasSms()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 102
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getSms()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    goto :goto_1

    .line 103
    :cond_5
    iget v3, p0, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasBookMark()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 104
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getBookMark()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    goto :goto_1

    .line 105
    :cond_6
    iget v3, p0, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasPhoto()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 106
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getPhoto()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    goto :goto_1

    .line 107
    :cond_7
    iget v3, p0, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasMusic()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 108
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getMusic()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    goto :goto_1

    .line 109
    :cond_8
    iget v3, p0, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->hasTask()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->getTask()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    goto/16 :goto_1

    .line 124
    .restart local v0       #i:I
    .restart local v2       #uuidCount:I
    :cond_9
    iget-object v3, p0, Lcom/futuredial/publicobj/TaskParameter;->pPara:Lcom/futuredial/publicobj/TaskParameter$ParserParameters;

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getParserClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/futuredial/publicobj/TaskParameter$ParserParameters;->parserClassName:Ljava/lang/String;

    goto/16 :goto_0
.end method
