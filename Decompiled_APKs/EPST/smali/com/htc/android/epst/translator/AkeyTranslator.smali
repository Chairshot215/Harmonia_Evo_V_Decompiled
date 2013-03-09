.class public Lcom/htc/android/epst/translator/AkeyTranslator;
.super Ljava/lang/Object;
.source "AkeyTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;
    }
.end annotation


# instance fields
.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field private mAkey:Ljava/lang/String;

.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mNative:Lcom/htc/android/epst/internal/NativeBridge;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 33
    new-instance v0, Lcom/htc/android/epst/internal/NativeBridge;

    invoke-direct {v0}, Lcom/htc/android/epst/internal/NativeBridge;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->mNative:Lcom/htc/android/epst/internal/NativeBridge;

    .line 35
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->DBG:Z

    .line 36
    const-string v0, "AkeyTranslator"

    iput-object v0, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->LOG_TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/epst/translator/AkeyTranslator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/epst/translator/AkeyTranslator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/epst/translator/AkeyTranslator;)Lcom/htc/android/epst/nvitem/NvItemController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/epst/translator/AkeyTranslator;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/android/epst/translator/AkeyTranslator;->getESNFromMEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/epst/translator/AkeyTranslator;)Lcom/htc/android/epst/internal/NativeBridge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->mNative:Lcom/htc/android/epst/internal/NativeBridge;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/epst/translator/AkeyTranslator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->mAkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/android/epst/translator/AkeyTranslator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->mAkey:Ljava/lang/String;

    return-object p1
.end method

.method private getESNFromMEID(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "iMEID"

    .prologue
    const-wide/16 v11, 0x10

    const/16 v10, 0x9

    const/4 v8, 0x7

    const/16 v9, 0x8

    .line 143
    const-wide/16 v3, 0x0

    .line 144
    .local v3, nlESN:J
    new-array v1, v9, [B

    .line 145
    .local v1, nESN:[B
    const/16 v5, 0xf

    new-array v2, v5, [B

    .line 147
    .local v2, nMEID:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 148
    iget-boolean v5, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->DBG:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getESNFromMEID:MEID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    const/4 v5, 0x0

    aget-byte v6, v2, v10

    and-int/lit8 v6, v6, 0xf

    or-int/lit8 v6, v6, 0x30

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 151
    const/4 v5, 0x1

    aget-byte v6, v2, v8

    and-int/lit8 v6, v6, 0xf

    or-int/lit8 v6, v6, 0x30

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 152
    const/4 v5, 0x2

    const/16 v6, 0xd

    aget-byte v6, v2, v6

    aput-byte v6, v1, v5

    .line 153
    const/4 v5, 0x3

    const/16 v6, 0xc

    aget-byte v6, v2, v6

    aput-byte v6, v1, v5

    .line 154
    const/4 v5, 0x4

    const/16 v6, 0xb

    aget-byte v6, v2, v6

    aput-byte v6, v1, v5

    .line 155
    const/4 v5, 0x5

    const/16 v6, 0xa

    aget-byte v6, v2, v6

    aput-byte v6, v1, v5

    .line 156
    const/4 v5, 0x6

    aget-byte v6, v2, v10

    aput-byte v6, v1, v5

    .line 157
    aget-byte v5, v2, v9

    aput-byte v5, v1, v8

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v9, :cond_3

    .line 161
    aget-byte v5, v1, v0

    const/16 v6, 0x30

    if-lt v5, v6, :cond_2

    aget-byte v5, v1, v0

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2

    .line 163
    mul-long v5, v3, v11

    aget-byte v7, v1, v0

    add-int/lit8 v7, v7, -0x30

    int-to-long v7, v7

    add-long v3, v5, v7

    .line 159
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_2
    aget-byte v5, v1, v0

    const/16 v6, 0x41

    if-lt v5, v6, :cond_1

    aget-byte v5, v1, v0

    const/16 v6, 0x46

    if-gt v5, v6, :cond_1

    .line 167
    mul-long v5, v3, v11

    aget-byte v7, v1, v0

    add-int/lit8 v7, v7, -0x37

    int-to-long v7, v7

    add-long v3, v5, v7

    goto :goto_1

    .line 171
    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 38
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 39
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;-><init>(Lcom/htc/android/epst/translator/AkeyTranslator;)V

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 99
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 4
    .parameter "itemId"
    .parameter "updater"

    .prologue
    const/16 v3, 0x26

    const/4 v2, 0x0

    .line 102
    iput-object p2, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 105
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v2, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 106
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x797

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 107
    invoke-virtual {p0, p1, v2}, Lcom/htc/android/epst/translator/AkeyTranslator;->retrieveItemAndUpdate(II)V

    .line 109
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 6
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    const/16 v5, 0x19

    .line 114
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v2, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;

    .line 117
    .local v0, akey:Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;
    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->setKey(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->mAkey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->setHexKey(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 123
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 4
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 126
    const-string v1, ""

    .line 128
    .local v1, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;

    .line 131
    .local v0, akey:Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 133
    if-nez v1, :cond_0

    .line 134
    const-string v1, ""

    .line 137
    .end local v0           #akey:Lcom/htc/android/epst/nvitem/DM_NVI_ID_AKEY;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/epst/translator/AkeyTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 139
    return-void
.end method
