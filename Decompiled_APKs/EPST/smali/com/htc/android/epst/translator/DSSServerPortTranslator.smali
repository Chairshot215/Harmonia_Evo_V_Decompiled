.class public Lcom/htc/android/epst/translator/DSSServerPortTranslator;
.super Ljava/lang/Object;
.source "DSSServerPortTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/DSSServerPortTranslator$PortVerifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DSSServerPortTranslator"


# instance fields
.field private final DSA_PROXY_URL:Ljava/lang/String;

.field private ServerPort:Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->ServerPort:Ljava/lang/String;

    .line 32
    const-string v0, "dsa_proxy_url"

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->DSA_PROXY_URL:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private getDSAPort(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 4
    .parameter "contentResolver"

    .prologue
    .line 99
    const-string v2, "dsa_proxy_url"

    invoke-static {p1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, ServerURL:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 101
    const-string v2, ""

    .line 106
    :goto_0
    return-object v2

    .line 103
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

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "DSSServerPortTranslator"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 35
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/htc/android/epst/translator/DSSServerPortTranslator$PortVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/DSSServerPortTranslator$PortVerifier;-><init>(Lcom/htc/android/epst/translator/DSSServerPortTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->ServerPort:Ljava/lang/String;

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 83
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 1
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 77
    iput-object p2, p0, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 78
    sget-object v0, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->getDSAPort(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->ServerPort:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->retrieveItemAndUpdate(II)V

    .line 80
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 2
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->ServerPort:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->ServerPort:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->setDSAPort(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->refreshGroupSettings()V

    .line 91
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/DSSServerPortTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 95
    return-void
.end method

.method public setDSAPort(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 6
    .parameter "contentResolver"
    .parameter "value"

    .prologue
    .line 111
    const-string v3, "dsa_proxy_url"

    invoke-static {p1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, strDSAIPAddress:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    :goto_0
    const/4 v0, 0x1

    .line 117
    .local v0, blStore:Z
    :try_start_0
    const-string v3, "dsa_proxy_url"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    :goto_1
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :goto_2
    return v3

    .line 114
    .end local v0           #blStore:Z
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 118
    .restart local v0       #blStore:Z
    :catch_0
    move-exception v1

    .line 119
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "DSSServerPortTranslator"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 122
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v3, -0x1

    goto :goto_2
.end method
