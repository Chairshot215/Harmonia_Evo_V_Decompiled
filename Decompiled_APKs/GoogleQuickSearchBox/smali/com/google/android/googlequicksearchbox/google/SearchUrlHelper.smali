.class public Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;
.super Ljava/lang/Object;
.source "SearchUrlHelper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;,
        Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$SearchDomainChangeWatcher;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private mCurrentDomainFetch:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

.field private final mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

.field private final mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private final mWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$SearchDomainChangeWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "context"
    .parameter "helper"
    .parameter "config"
    .parameter "searchSettings"
    .parameter "prefs"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 69
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 70
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 71
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mWatchers:Ljava/util/ArrayList;

    .line 77
    invoke-interface {p5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->maybeUpdateBaseDomainSetting(Z)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mCurrentDomainFetch:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->handleDomainAndCountryCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 184
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_0
    return-void
.end method

.method private checkSearchDomain()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mCurrentDomainFetch:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

    if-eqz v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 333
    :cond_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;-><init>(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mCurrentDomainFetch:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

    .line 335
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$1;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$1;-><init>(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getDomainCheckServerUri()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 342
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$2;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$2;-><init>(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getCountryCodeCheckServerUri()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private formatUrlBase(ILandroid/os/Bundle;ZJ)Ljava/lang/String;
    .locals 6
    .parameter "patternResourceId"
    .parameter "appSearchData"
    .parameter "fromSelf"
    .parameter "submissionTime"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->formatUrlBase(Ljava/lang/String;Landroid/os/Bundle;ZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatUrlBase(Ljava/lang/String;Landroid/os/Bundle;ZJ)Ljava/lang/String;
    .locals 5
    .parameter "format"
    .parameter "appSearchData"
    .parameter "fromSelf"
    .parameter "submissionTime"

    .prologue
    const/4 v4, 0x0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchDomain(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, url:Ljava/lang/StringBuilder;
    const-string v1, "client"

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getClientParam()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "source"

    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSourceParam(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "rlz"

    invoke-direct {p0, p3}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getRlzParam(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "v"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-wide/16 v1, -0x1

    cmp-long v1, p4, v1

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "qsubts"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getClientParam()Ljava/lang/String;
    .locals 4

    .prologue
    .line 200
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "search_client_id"

    invoke-static {v1, v2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, searchClientId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 205
    .end local v0           #searchClientId:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #searchClientId:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ms-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "client_id"

    invoke-static {v2, v3}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentSearchDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getFixedSearchDomain()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, domain:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getSearchDomain()Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_0
    return-object v0
.end method

.method private getDefaultCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSearchDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 149
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 150
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, language:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, hl:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2, v0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->useLangCountryHl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const/16 v4, 0x2d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getRlzParam(Z)Ljava/lang/String;
    .locals 8
    .parameter "searchIsFromQsb"

    .prologue
    .line 210
    const/4 v7, 0x0

    .line 211
    .local v7, rlz:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 215
    const/4 v6, 0x0

    .line 217
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getRlzUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 218
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 222
    :cond_0
    if-eqz v6, :cond_1

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 227
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_1
    return-object v7

    .line 222
    .restart local v6       #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getRlzUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/QsbContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, rlzAp:Ljava/lang/String;
    sget-object v1, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->RLZ_PROVIDER_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getSourceParam(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .parameter "appSearchData"

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, source:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v1, "source"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    if-nez v0, :cond_1

    const-string v0, "unknown"

    .line 193
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleDomainAndCountryCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "domain"
    .parameter "countryCode"

    .prologue
    .line 351
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->resetSearchDomainApplyTime()V

    .line 358
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mCurrentDomainFetch:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

    .line 359
    return-void

    .line 356
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->setSearchDomain(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private normalizeSearchDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "base"

    .prologue
    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getDefaultSearchDomain()Ljava/lang/String;

    move-result-object p1

    .line 284
    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "www"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 291
    :cond_1
    return-object p1
.end method

.method private notifyDomainWatchers()V
    .locals 2

    .prologue
    .line 384
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 385
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$SearchDomainChangeWatcher;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$SearchDomainChangeWatcher;->onSearchDomainChanged()V

    .line 384
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method

.method private setSearchDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "domain"
    .parameter "countryCode"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setSearchDomain(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->notifyDomainWatchers()V

    .line 380
    return-void
.end method

.method private shouldUseGoogleCom()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldUseGoogleCom()Z

    move-result v0

    return v0
.end method

.method private static useLangCountryHl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "language"
    .parameter "country"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 165
    const-string v2, "en"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    const-string v0, "GB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    const-string v2, "zh"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    const-string v2, "CN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TW"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 169
    :cond_3
    const-string v2, "pt"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "BR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "PT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public formatUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "format"
    .parameter "forceDefaultDomain"

    .prologue
    .line 304
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchDomain(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSearchDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getCurrentSearchDomain()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->normalizeSearchDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBaseUrl(Landroid/os/Bundle;ZJ)Ljava/lang/String;
    .locals 6
    .parameter "appSearchData"
    .parameter "fromSelf"
    .parameter "submissionTime"

    .prologue
    .line 240
    const v1, 0x7f0b0002

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->formatUrlBase(ILandroid/os/Bundle;ZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBoxBaseUrl(Landroid/os/Bundle;Z)Ljava/lang/String;
    .locals 6
    .parameter "appSearchData"
    .parameter "fromSelf"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getSearchBoxPageUrlFormat()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, format:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->formatUrlBase(Ljava/lang/String;Landroid/os/Bundle;ZJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchDomain(Z)Ljava/lang/String;
    .locals 2
    .parameter "forceDefaultDomain"

    .prologue
    .line 268
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->shouldUseGoogleCom()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getDefaultSearchDomain()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, domain:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->normalizeSearchDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 268
    .end local v0           #domain:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getCurrentSearchDomain()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchDomainCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->shouldUseGoogleCom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getSearchDomainCountryCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDotComAnyway()Z
    .locals 2

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getDefaultSearchDomain()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getCurrentSearchDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public maybeUpdateBaseDomainSetting(Z)V
    .locals 8
    .parameter "force"

    .prologue
    .line 105
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Config;->getFixedSearchDomain()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v4}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getSearchDomainApplyTime()J

    move-result-wide v2

    .line 110
    .local v2, lastUpdateTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 112
    .local v0, currentTime:J
    if-nez p1, :cond_2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 116
    :cond_2
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->checkSearchDomain()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "pref"
    .parameter "key"

    .prologue
    .line 393
    const-string v0, "use_google_com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->maybeUpdateBaseDomainSetting(Z)V

    .line 396
    :cond_0
    return-void
.end method
