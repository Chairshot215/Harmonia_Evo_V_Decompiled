.class public Lcom/htc/android/epst/translator/DSSIPAddressTranslator;
.super Ljava/lang/Object;
.source "DSSIPAddressTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DSSIPAddressTranslator"


# instance fields
.field private final DSA_PROXY_URL:Ljava/lang/String;

.field private IPAddress:Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->IPAddress:Ljava/lang/String;

    .line 31
    const-string v0, "dsa_proxy_url"

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->DSA_PROXY_URL:Ljava/lang/String;

    return-void
.end method

.method private getDSA(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 4
    .parameter "contentResolver"

    .prologue
    .line 85
    const-string v2, "dsa_proxy_url"

    invoke-static {p1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, strDSAIPAddress:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 87
    const-string v2, ""

    .line 95
    :goto_0
    return-object v2

    .line 88
    :cond_0
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "DSSIPAddressTranslator"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v2, ""

    goto :goto_0
.end method

.method private setDSA(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 6
    .parameter "contentResolver"
    .parameter "value"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->getPort(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, Port:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, strDSAIPAddress:Ljava/lang/String;
    const/4 v1, 0x0

    .line 104
    .local v1, blStore:Z
    :try_start_0
    const-string v4, "dsa_proxy_url"

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "DSSIPAddressTranslator"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 33
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 34
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/htc/android/epst/IPAddressVerifier;->getSingleton()Lcom/htc/android/epst/IPAddressVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getPort(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 4
    .parameter "contentResolver"

    .prologue
    .line 112
    const-string v2, "dsa_proxy_url"

    invoke-static {p1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, ServerURL:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v2, ""

    .line 118
    :goto_0
    return-object v2

    .line 115
    :cond_0
    :try_start_0
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "DSSIPAddressTranslator"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v2, ""

    goto :goto_0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->IPAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 52
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 1
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 68
    iput-object p2, p0, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 69
    sget-object v0, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->getDSA(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->IPAddress:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->retrieveItemAndUpdate(II)V

    .line 71
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 2
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->IPAddress:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->IPAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->setDSA(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->refreshGroupSettings()V

    .line 80
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/DSSIPAddressTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 59
    return-void
.end method
