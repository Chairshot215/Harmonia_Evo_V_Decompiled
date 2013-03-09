.class public Lcom/htc/android/epst/translator/MMSURLTranslator;
.super Ljava/lang/Object;
.source "MMSURLTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/MMSURLTranslator$URLVerifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MMSURLTranslator"

.field private static final queryMMSCFields:[Ljava/lang/String;


# instance fields
.field protected DSA_URL_COLNAME:Ljava/lang/String;

.field private gHttp:Ljava/lang/String;

.field private gHttps:Ljava/lang/String;

.field private gURL:Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

.field private tm:Landroid/telephony/HtcIfTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/epst/translator/MMSURLTranslator;->queryMMSCFields:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->gURL:Ljava/lang/String;

    .line 46
    const-string v0, "http://"

    iput-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->gHttp:Ljava/lang/String;

    .line 48
    const-string v0, "https:/"

    iput-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->gHttps:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/HtcIfTelephonyManager;

    iput-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->tm:Landroid/telephony/HtcIfTelephonyManager;

    .line 137
    const-string v0, "DSA_SERVER_URL"

    iput-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->DSA_URL_COLNAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/epst/translator/MMSURLTranslator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->gHttp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/epst/translator/MMSURLTranslator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->gHttps:Ljava/lang/String;

    return-object v0
.end method

.method private getMMSC(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .parameter "contentResolver"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 157
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->DSA_URL_COLNAME:Ljava/lang/String;

    aput-object v0, v8, v9

    .line 158
    .local v8, project:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "current"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/android/epst/translator/MMSURLTranslator;->queryMMSCFields:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 160
    .local v6, cursor:Landroid/database/Cursor;
    const-string v7, ""

    .line 162
    .local v7, mmsc:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 165
    const-string v0, "Jerry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mmsc >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_1
    return-object v7
.end method

.method private queryDatabaseWhereString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->tm:Landroid/telephony/HtcIfTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/HtcIfTelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 145
    const-string v0, "type = \'mms\' "

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "type = \'mms\' AND current = 1"

    goto :goto_0
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 51
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 52
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/htc/android/epst/translator/MMSURLTranslator$URLVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/MMSURLTranslator$URLVerifier;-><init>(Lcom/htc/android/epst/translator/MMSURLTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->gURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 113
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 116
    iput-object p2, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 117
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/MMSURLTranslator;->sendReadRequest(I)V

    .line 118
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 122
    iput-object p2, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 123
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/MMSURLTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 124
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/MMSURLTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 129
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 95
    sget-object v0, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/epst/translator/MMSURLTranslator;->getMMSC(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->gURL:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/MMSURLTranslator;->retrieveItemAndUpdate(II)V

    .line 99
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 2
    .parameter "modifiedValue"

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->gURL:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/translator/MMSURLTranslator;->gURL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/epst/translator/MMSURLTranslator;->setMMSC(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/epst/translator/MMSURLTranslator;->retrieveItemAndUpdate(II)V

    .line 108
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/MMSURLTranslator;->refreshGroupSettings()V

    .line 109
    return-void
.end method

.method public setMMSC(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 5
    .parameter "contentResolver"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 176
    const-string v1, "MMSURLTranslator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO setMMSC ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "mmsc"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "current"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 183
    const/4 v1, -0x1

    return v1
.end method
