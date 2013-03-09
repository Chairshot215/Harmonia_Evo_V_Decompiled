.class public Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;
.super Ljava/lang/Object;
.source "SearchBoxPreloader.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;


# static fields
.field private static final ANDROID_BROWSER_PACKAGES:[Ljava/lang/String;


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private mLastQuery:Ljava/lang/String;

.field private mPreloadComponent:Landroid/content/ComponentName;

.field private mStarting:Z

.field private final mStrategy:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;

.field private final mUriRewriter:Lcom/google/android/googlequicksearchbox/google/UriRewriter;

.field private final mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.browser"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->ANDROID_BROWSER_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;Lcom/google/android/googlequicksearchbox/google/UriRewriter;)V
    .locals 0
    .parameter "context"
    .parameter "urlHelper"
    .parameter "strategy"
    .parameter "uriRewriter"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 75
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 76
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStrategy:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;

    .line 77
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mUriRewriter:Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    .line 78
    return-void
.end method

.method private static browserPackageMatch(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageFound"

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->ANDROID_BROWSER_PACKAGES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 82
    .local v3, packageName:Ljava/lang/String;
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    const/4 v4, 0x1

    .line 86
    .end local v3           #packageName:Ljava/lang/String;
    :goto_1
    return v4

    .line 81
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v3           #packageName:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private cancelPreload()V
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStrategy:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;->shouldPrefetchNow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getPreloadIntentBase()Landroid/content/Intent;

    move-result-object v0

    .line 216
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 217
    const-string v1, "searchbox_cancel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mLastQuery:Ljava/lang/String;

    .line 223
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static create(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;Lcom/google/android/googlequicksearchbox/google/UriRewriter;)Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;
    .locals 12
    .parameter "context"
    .parameter "urlHelper"
    .parameter "strategy"
    .parameter "uriRewriter"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 92
    .local v3, pacman:Landroid/content/pm/PackageManager;
    if-nez v3, :cond_0

    .line 93
    const-string v9, "QSB.SearchBoxPreloader"

    const-string v10, "No package manager, not preloading"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 125
    :goto_0
    return-object v7

    .line 98
    :cond_0
    new-instance v7, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;Lcom/google/android/googlequicksearchbox/google/UriRewriter;)V

    .line 99
    .local v7, self:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;
    const-string v9, "q"

    invoke-direct {v7, v9, v10}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getSearchResultsPageIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 100
    .local v1, browseIntent:Landroid/content/Intent;
    const/high16 v9, 0x1

    invoke-virtual {v3, v1, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 101
    .local v6, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_1

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v9, :cond_2

    .line 102
    :cond_1
    const-string v9, "QSB.SearchBoxPreloader"

    const-string v10, "No browser installed?"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 103
    goto :goto_0

    .line 106
    :cond_2
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->browserPackageMatch(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 107
    const-string v9, "QSB.SearchBoxPreloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t preload due to non-Android browser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 108
    goto :goto_0

    .line 110
    :cond_3
    new-instance v5, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.android.browser.PreloadRequestReceiver"

    invoke-direct {v5, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v5, preloadComponent:Landroid/content/ComponentName;
    invoke-static {v5}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getPreloadIntentBase(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 115
    .local v4, preload:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 116
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_4

    .line 117
    new-instance v9, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v10, "ActivityInfo is null"

    invoke-direct {v9, v10}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v2

    .line 120
    .local v2, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "QSB.SearchBoxPreloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receiver "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 122
    goto/16 :goto_0

    .line 124
    .end local v2           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_4
    iput-object v5, v7, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mPreloadComponent:Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method private getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 299
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    .line 302
    .local v0, settings:Lcom/google/android/googlequicksearchbox/SearchSettings;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldSendLocation(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    const/4 v1, 0x0

    .line 307
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->getLastFix()Landroid/location/Location;

    move-result-object v1

    goto :goto_0
.end method

.method private getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "query"

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getPreloadPageUri()Landroid/net/Uri;

    move-result-object v0

    .line 245
    .local v0, basePage:Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 246
    const/4 v2, 0x0

    .line 266
    :cond_0
    :goto_0
    return-object v2

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getPreloadIntentBase()Landroid/content/Intent;

    move-result-object v2

    .line 249
    .local v2, i:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 251
    .local v3, location:Landroid/location/Location;
    if-eqz v3, :cond_2

    .line 252
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v1, headers:Landroid/os/Bundle;
    const-string v4, "X-Geo"

    invoke-static {v3}, Lcom/google/android/googlequicksearchbox/google/XGeoEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v4, "Geo-Position"

    invoke-static {v3}, Lcom/google/android/googlequicksearchbox/google/GeoPositionEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v4, "com.android.browser.headers"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 262
    .end local v1           #headers:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 263
    if-eqz p1, :cond_0

    .line 264
    const-string v4, "searchbox_query"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getPreloadIntentBase()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mPreloadComponent:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getPreloadIntentBase(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getPreloadIntentBase(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 3
    .parameter "preloadComponent"

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 280
    const-string v1, "preload_id"

    const-string v2, "qsb_srp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    return-object v0
.end method

.method private getPreloadPageUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 195
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mAppSearchData:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchBoxBaseUrl(Landroid/os/Bundle;Z)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, baseUrl:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 197
    const/4 v1, 0x0

    .line 199
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mUriRewriter:Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/google/UriRewriter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private getSearchResultsPageIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 4
    .parameter "query"
    .parameter "includeLocation"

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mAppSearchData:Landroid/os/Bundle;

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->createWebSearchIntent(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/QsbContext;Landroid/os/Bundle;Lcom/google/android/googlequicksearchbox/Clock;)Landroid/content/Intent;

    move-result-object v0

    .line 291
    .local v0, i:Landroid/content/Intent;
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 292
    .local v1, loc:Landroid/location/Location;
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->createLaunchUriIntentFromSearchIntent(Landroid/content/Intent;Landroid/content/Context;Landroid/location/Location;Lcom/google/android/googlequicksearchbox/QsbApplication;)Landroid/content/Intent;

    move-result-object v0

    .line 294
    const-string v2, "preload_id"

    const-string v3, "qsb_srp"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    return-object v0
.end method

.method private loadBasePageIfNeeded()V
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStarting:Z

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->preloadResults(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStarting:Z

    .line 153
    :cond_0
    return-void
.end method

.method private preloadResults(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStrategy:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;->shouldPrefetchNow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 205
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mLastQuery:Ljava/lang/String;

    .line 211
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "newQuery"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->loadBasePageIfNeeded()V

    .line 132
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mLastQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mLastQuery:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->cancelPreload()V

    .line 139
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStarting:Z

    .line 145
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStarting:Z

    .line 163
    return-void
.end method

.method public onSuggestionsDone()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->loadBasePageIfNeeded()V

    .line 169
    return-void
.end method

.method public performSearch(Ljava/lang/String;)Z
    .locals 4
    .parameter "query"

    .prologue
    const/4 v2, 0x1

    .line 177
    invoke-direct {p0, p1, v2}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getSearchResultsPageIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 178
    .local v1, i:Landroid/content/Intent;
    const-string v3, "searchbox_query"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    :try_start_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v3, v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->startActivity(Landroid/content/Intent;)V

    .line 181
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mLastQuery:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return v2

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public prefetch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "query"
    .parameter "suggestion"

    .prologue
    .line 191
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->preloadResults(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "appSearchData"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mAppSearchData:Landroid/os/Bundle;

    .line 228
    return-void
.end method
