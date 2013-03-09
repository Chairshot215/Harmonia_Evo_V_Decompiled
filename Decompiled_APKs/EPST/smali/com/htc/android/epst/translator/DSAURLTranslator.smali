.class public Lcom/htc/android/epst/translator/DSAURLTranslator;
.super Ljava/lang/Object;
.source "DSAURLTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/DSAURLTranslator$URLVerifier;
    }
.end annotation


# static fields
.field private static CONTENT_URI_NOTES:Landroid/net/Uri; = null

.field private static final LOG_TAG:Ljava/lang/String; = "DSAURLTranslator"

.field private static mCursor:Landroid/database/Cursor;


# instance fields
.field private final DSA_SERVER_URL:Ljava/lang/String;

.field protected DSA_URL_COLNAME:Ljava/lang/String;

.field private gHttp:Ljava/lang/String;

.field private gHttps:Ljava/lang/String;

.field private gURL:Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "content://com.htc.android.provider.omadmlib/commondata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/epst/translator/DSAURLTranslator;->CONTENT_URI_NOTES:Landroid/net/Uri;

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/epst/translator/DSAURLTranslator;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->gURL:Ljava/lang/String;

    .line 34
    const-string v0, "http://"

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->gHttp:Ljava/lang/String;

    .line 36
    const-string v0, "https:/"

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->gHttps:Ljava/lang/String;

    .line 37
    const-string v0, "dsa_server_url"

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->DSA_SERVER_URL:Ljava/lang/String;

    .line 123
    const-string v0, "DSA_SERVER_URL"

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->DSA_URL_COLNAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/epst/translator/DSAURLTranslator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->gHttp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/epst/translator/DSAURLTranslator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->gHttps:Ljava/lang/String;

    return-object v0
.end method

.method private getDSA(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 162
    const-string v1, "dsa_server_url"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, strDSAURL:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 164
    const-string v0, ""

    .line 166
    :cond_0
    return-object v0
.end method


# virtual methods
.method public closeCursor()V
    .locals 2

    .prologue
    .line 201
    :try_start_0
    sget-object v1, Lcom/htc/android/epst/translator/DSAURLTranslator;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 202
    sget-object v1, Lcom/htc/android/epst/translator/DSAURLTranslator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V

    .line 203
    sget-object v1, Lcom/htc/android/epst/translator/DSAURLTranslator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 40
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 41
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/htc/android/epst/translator/DSAURLTranslator$URLVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/DSAURLTranslator$URLVerifier;-><init>(Lcom/htc/android/epst/translator/DSAURLTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->gURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-object v0
.end method

.method public initCommonProvider(Landroid/content/ContentResolver;)V
    .locals 7
    .parameter "contentResolver"

    .prologue
    const/4 v4, 0x0

    .line 129
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 130
    .local v2, project:[Ljava/lang/String;
    sget-object v1, Lcom/htc/android/epst/translator/DSAURLTranslator;->CONTENT_URI_NOTES:Landroid/net/Uri;

    const-string v3, "_id=1"

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/htc/android/epst/translator/DSAURLTranslator;->mCursor:Landroid/database/Cursor;

    .line 131
    sget-object v0, Lcom/htc/android/epst/translator/DSAURLTranslator;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/htc/android/epst/translator/DSAURLTranslator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    .line 134
    .local v6, tIsEntryFound:Z
    if-nez v6, :cond_0

    .line 136
    const-string v0, "DSAURLTranslator"

    const-string v1, "no command data"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/DSAURLTranslator;->closeCursor()V

    .line 145
    .end local v6           #tIsEntryFound:Z
    :cond_1
    return-void
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 101
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 104
    iput-object p2, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 105
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/DSAURLTranslator;->sendReadRequest(I)V

    .line 106
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 110
    iput-object p2, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 111
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/DSAURLTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 112
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/DSAURLTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 117
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 84
    sget-object v0, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/epst/translator/DSAURLTranslator;->getDSA(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->gURL:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/DSAURLTranslator;->retrieveItemAndUpdate(II)V

    .line 88
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 2
    .parameter "modifiedValue"

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->gURL:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/translator/DSAURLTranslator;->gURL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/epst/translator/DSAURLTranslator;->setDSA(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/DSAURLTranslator;->refreshGroupSettings()V

    .line 97
    return-void
.end method

.method public setDSA(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "contentResolver"
    .parameter "value"

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, blStore:Z
    :try_start_0
    const-string v2, "dsa_server_url"

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 196
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v2, -0x1

    goto :goto_1
.end method
