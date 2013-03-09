.class public Lcom/android/phone/assist/EnhancedPlusCodeUtils;
.super Ljava/lang/Object;
.source "EnhancedPlusCodeUtils.java"


# static fields
.field public static final ADAPTER_ENTRY:Ljava/lang/String; = "entry"

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryIso"

.field public static final DIAG_BUNDLE:Ljava/lang/String; = "diagBundle"

.field public static final DIAG_ID:Ljava/lang/String; = "diagId"

.field public static final DIAG_RESULT:Ljava/lang/String; = "diagResult"

.field public static final ENHANCED_PLUS_CODE_PREFIX_COUNTRY:Ljava/lang/String; = "enhanced_plus_code_prefix_country"

.field private static final LOG_TAG:Ljava/lang/String; = "EnhancedPlusCodeUtils"

.field private static final mInstance:Lcom/android/phone/assist/EnhancedPlusCodeUtils; = null

.field private static final mTokenIso:Ljava/lang/String; = ","

.field private static final mTokenNumberBegin:Ljava/lang/String; = "("

.field private static final mTokenNumberEnd:Ljava/lang/String; = ")"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCountryList:[Ljava/lang/String;

.field private mCurrentPrefixCountryIso:Ljava/lang/String;

.field private mIsoIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMoPlusCodeDialingRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlusCodePrefixNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    invoke-direct {v0}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;-><init>()V

    sput-object v0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mInstance:Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mMoPlusCodeDialingRecordMap:Ljava/util/Map;

    return-void
.end method

.method public static final getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mInstance:Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    return-object v0
.end method

.method private initPlusCodePrefixData()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 108
    iget-object v8, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    if-nez v8, :cond_0

    .line 109
    const-string v8, "EnhancedPlusCodeUtils"

    const-string v9, "initPlusCodePrefixData - EnhancedPlusCodeUtils not initialized"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mIsoIndexMap:Ljava/util/Map;

    .line 115
    iget-object v8, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070025

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, countryList:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, countries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    array-length v0, v3

    .line 120
    .local v0, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 121
    aget-object v7, v3, v5

    .line 122
    .local v7, item:Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 123
    .local v6, isoPos:I
    invoke-virtual {v7, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, entryValue:Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, countryIso:Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v8, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mIsoIndexMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 134
    .end local v2           #countryIso:Ljava/lang/String;
    .end local v4           #entryValue:Ljava/lang/String;
    .end local v6           #isoPos:I
    .end local v7           #item:Ljava/lang/String;
    :cond_1
    new-array v8, v10, [Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mCountryList:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public clearPlusCodeDialingRecord()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mMoPlusCodeDialingRecordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 317
    return-void
.end method

.method public getCountryIsoIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .parameter "countryIso"

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 217
    const-string v1, "EnhancedPlusCodeUtils"

    const-string v2, "getCountryIsoIndex - EnhancedPlusCodeUtils not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-object v0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mIsoIndexMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->initPlusCodePrefixData()V

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mIsoIndexMap:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 226
    const-string v1, "EnhancedPlusCodeUtils"

    const-string v2, "country list is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mIsoIndexMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 235
    .local v0, pos:Ljava/lang/Integer;
    goto :goto_0
.end method

.method public getCountryList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "EnhancedPlusCodeUtils"

    const-string v1, "getCountryListAdapter - EnhancedPlusCodeUtils not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mCountryList:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->initPlusCodePrefixData()V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mCountryList:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentPrefixCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 66
    const-string v1, "EnhancedPlusCodeUtils"

    const-string v2, "getCurrentPrefixCountryIso - EnhancedPlusCodeUtils not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x0

    .line 81
    :goto_0
    return-object v1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mCurrentPrefixCountryIso:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "enhanced_plus_code_prefix_country"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mCurrentPrefixCountryIso:Ljava/lang/String;

    .line 81
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mCurrentPrefixCountryIso:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlusCodeDialingRecord(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "convertedDialingNumber"

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mMoPlusCodeDialingRecordMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    .local v0, record:Ljava/lang/String;
    return-object v0
.end method

.method public getPlusCodePrefixNumber()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 177
    iget-object v6, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 178
    const-string v6, "EnhancedPlusCodeUtils"

    const-string v7, "getPlusCodePrefixNumber - EnhancedPlusCodeUtils not initialized"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-object v5

    .line 182
    :cond_0
    iget-object v6, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mPlusCodePrefixNumber:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 183
    iget-object v6, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 184
    .local v4, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getCountryIsoIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 187
    .local v3, selectedCountry:Ljava/lang/Integer;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 188
    :cond_1
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 190
    :cond_2
    iget-object v6, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mCountryList:[Ljava/lang/String;

    if-nez v6, :cond_3

    .line 191
    const-string v6, "EnhancedPlusCodeUtils"

    const-string v7, "country list is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_3
    iget-object v5, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mCountryList:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v1, v5, v6

    .line 196
    .local v1, countryListString:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->retrievePrefixNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, number:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setPlusCodePrefixNumber(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setCurrentPrefixCountryIso(Ljava/lang/String;)V

    .line 208
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #countryListString:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v3           #selectedCountry:Ljava/lang/Integer;
    .end local v4           #telMgr:Landroid/telephony/TelephonyManager;
    :cond_4
    iget-object v5, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mPlusCodePrefixNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public putPlusCodeDialingRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "convertedDialingNumber"
    .parameter "orginalDialingNumber"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mMoPlusCodeDialingRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-void
.end method

.method public retrievePrefixNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "countryListEntry"

    .prologue
    .line 243
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 244
    :cond_0
    const/4 v1, 0x0

    .line 257
    :cond_1
    :goto_0
    return-object v1

    .line 247
    :cond_2
    const/4 v1, 0x0

    .line 248
    .local v1, result:Ljava/lang/String;
    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 249
    .local v2, start:I
    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 250
    .local v0, end:I
    if-ltz v2, :cond_1

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_1

    .line 251
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setAppContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public setCurrentPrefixCountryIso(Ljava/lang/String;)V
    .locals 4
    .parameter "countryIso"

    .prologue
    .line 89
    iget-object v2, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 90
    const-string v2, "EnhancedPlusCodeUtils"

    const-string v3, "setCurrentPrefixCountryIso - EnhancedPlusCodeUtils not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 95
    :cond_1
    const-string v2, "EnhancedPlusCodeUtils"

    const-string v3, "setCurrentPrefixCountryIso - ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "enhanced_plus_code_prefix_country"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    iput-object p1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mCurrentPrefixCountryIso:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPlusCodePrefixNumber(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 158
    iget-object v2, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 159
    const-string v2, "EnhancedPlusCodeUtils"

    const-string v3, "setPlusCodePrefixNumber - EnhancedPlusCodeUtils not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return-void

    .line 163
    :cond_0
    if-nez p1, :cond_1

    .line 164
    const-string v2, "EnhancedPlusCodeUtils"

    const-string v3, "setPlusCodePrefixNumber - ignore null number"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 169
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cdma_plus_code_dialing_number_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    iput-object p1, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mPlusCodePrefixNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPrefixDirectly(Ljava/lang/String;)Z
    .locals 6
    .parameter "countryIso"

    .prologue
    .line 270
    iget-object v4, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mAppContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 271
    const-string v4, "EnhancedPlusCodeUtils"

    const-string v5, "setPrefixDirectly - EnhancedPlusCodeUtils not initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v2, 0x0

    .line 292
    :cond_0
    :goto_0
    return v2

    .line 275
    :cond_1
    const/4 v2, 0x0

    .line 278
    .local v2, ret:Z
    invoke-virtual {p0, p1}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getCountryIsoIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 279
    .local v0, pos:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    .line 280
    iget-object v4, p0, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->mCountryList:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v4, v5

    .line 281
    .local v3, value:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->retrievePrefixNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, prefix:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setPlusCodePrefixNumber(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setCurrentPrefixCountryIso(Ljava/lang/String;)V

    .line 285
    const/4 v2, 0x1

    goto :goto_0
.end method
