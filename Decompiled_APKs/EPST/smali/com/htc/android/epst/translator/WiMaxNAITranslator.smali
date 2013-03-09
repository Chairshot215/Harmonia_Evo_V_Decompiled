.class public Lcom/htc/android/epst/translator/WiMaxNAITranslator;
.super Ljava/lang/Object;
.source "WiMaxNAITranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/WiMaxNAITranslator$NAIVerifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WiMaxNAITranslator"


# instance fields
.field private DBG:Z

.field private mMAC:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mRealm:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->DBG:Z

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/epst/translator/WiMaxNAITranslator;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->bCheckNAIFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/epst/translator/WiMaxNAITranslator;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->bCheckMACFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/epst/translator/WiMaxNAITranslator;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->bCheckRealmFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bCheckMACFormat(Ljava/lang/String;)Z
    .locals 8
    .parameter "iMAC"

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_0

    .line 142
    const-string v5, "WiMaxNAITranslator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iMAC format is wrong:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return v4

    .line 145
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v5, 0x6

    if-ge v1, v5, :cond_1

    .line 146
    const/4 v2, 0x0

    .local v2, j:I
    mul-int/lit8 v3, v1, 0x2

    .line 148
    .local v3, k:I
    add-int/lit8 v5, v3, 0x2

    :try_start_0
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "WiMaxNAITranslator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index of IMAC is not integer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #j:I
    .end local v3           #k:I
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private bCheckNAIFormat(Ljava/lang/String;)Z
    .locals 5
    .parameter "iNAI"

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_1

    .line 166
    :cond_0
    const-string v2, "WiMaxNAITranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NAI length is wrong:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return v1

    .line 169
    :cond_1
    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, nNAI:[Ljava/lang/String;
    array-length v2, v0

    if-eqz v2, :cond_2

    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    .line 171
    :cond_2
    const-string v2, "WiMaxNAITranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NAI format is wrong:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private bCheckRealmFormat(Ljava/lang/String;)Z
    .locals 1
    .parameter "iRealm"

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/htc/android/epst/translator/WiMaxNAITranslator$NAIVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/WiMaxNAITranslator$NAIVerifier;-><init>(Lcom/htc/android/epst/translator/WiMaxNAITranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mRealm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 179
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 182
    iput-object p2, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 183
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->sendReadRequest(I)V

    .line 184
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 187
    iput-object p2, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 188
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 189
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 194
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 6
    .parameter "itemId"

    .prologue
    const/4 v5, 0x6

    .line 85
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v2

    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    sget v4, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_MAC_ADDRESS:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/wimax/WiMaxController;->getWiMaxValueByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, nMAC:[Ljava/lang/String;
    array-length v2, v1

    if-eq v2, v5, :cond_1

    .line 88
    const-string v2, "WiMaxNAITranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReadRequest mMAC length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v2

    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    sget v4, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_REALM:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/wimax/WiMaxController;->getWiMaxValueByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mRealm:Ljava/lang/String;

    .line 98
    iget-boolean v2, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WiMaxNAITranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReadRequest mMAC and Realm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mRealm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->retrieveItemAndUpdate(II)V

    .line 100
    return-void

    .line 90
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_2

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_2
    const-string v2, "WiMaxNAITranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReadRequest mMAC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 10
    .parameter "modifiedValue"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 103
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, nValue:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->bCheckNAIFormat(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, nNAI:[Ljava/lang/String;
    aget-object v5, v3, v9

    invoke-direct {p0, v5}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->bCheckMACFormat(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    aget-object v5, v3, v8

    invoke-direct {p0, v5}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->bCheckRealmFormat(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    const-string v5, ""

    iput-object v5, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    .line 118
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v5, 0x6

    if-ge v1, v5, :cond_3

    .line 119
    mul-int/lit8 v2, v1, 0x2

    .line 120
    .local v2, j:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v9

    add-int/lit8 v7, v2, 0x2

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x5

    if-eq v1, v5, :cond_2

    const-string v5, ":"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    :cond_2
    const-string v5, ""

    goto :goto_2

    .line 123
    .end local v2           #j:I
    :cond_3
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v5

    sget-object v6, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    sget v7, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_MAC_ADDRESS:I

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/epst/wimax/WiMaxController;->storeModifiedProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 124
    .local v0, bResult:Z
    if-nez v0, :cond_4

    .line 125
    const-string v5, "WiMaxNAITranslator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WimaxNative.setWimaxProp (persist.wimax.0.MAC):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_4
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v5

    sget-object v6, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    sget v7, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_REALM:I

    aget-object v6, v6, v7

    aget-object v7, v3, v8

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/epst/wimax/WiMaxController;->storeModifiedProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 129
    if-nez v0, :cond_5

    .line 130
    const-string v5, "WiMaxNAITranslator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WimaxNative.setWimaxProp (persist.wimax.0.Realm):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_5
    iget-boolean v5, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "WiMaxNAITranslator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendWriteRequest MAC@Realm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->mMAC:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_6
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v5

    invoke-virtual {p0, v5, v9}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->retrieveItemAndUpdate(II)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->refreshGroupSettings()V

    goto/16 :goto_0
.end method
