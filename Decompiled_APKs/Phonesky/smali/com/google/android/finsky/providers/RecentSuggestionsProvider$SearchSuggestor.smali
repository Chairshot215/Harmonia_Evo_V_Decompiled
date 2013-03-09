.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;
.super Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchSuggestor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;
    }
.end annotation


# static fields
.field private static BACKEND_ID_TO_ICON_PACKAGE_NAME:[Ljava/lang/String;

.field private static final BASE_URI:Landroid/net/Uri;


# instance fields
.field private final mAppsOnly:Z

.field private final mBackendId:Ljava/lang/String;

.field private final mBlobSize:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    const-string v0, "https://market.android.com/suggest/SuggRequest"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->BASE_URI:Landroid/net/Uri;

    .line 294
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.apps.books"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.videos"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.apps.magazines"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.videos"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->BACKEND_ID_TO_ICON_PACKAGE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "backendId"
    .parameter "query"

    .prologue
    const/4 v3, 0x0

    .line 247
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;-><init>(Landroid/content/Context;Ljava/lang/String;ZZI)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZI)V
    .locals 2
    .parameter "context"
    .parameter "query"
    .parameter "showDescription"
    .parameter "appsOnly"
    .parameter "backendId"

    .prologue
    .line 252
    invoke-direct {p0, p2, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 253
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mDescription:Ljava/lang/String;

    .line 257
    iput-boolean p4, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mAppsOnly:Z

    .line 258
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mBackendId:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mBlobSize:Ljava/lang/String;

    .line 263
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->getIconUri(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mAppsOnly:Z

    return v0
.end method

.method private getBackendCanonicalIconUri(I)Landroid/net/Uri;
    .locals 7
    .parameter "backendId"

    .prologue
    .line 309
    :try_start_0
    sget-object v5, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->BACKEND_ID_TO_ICON_PACKAGE_NAME:[Ljava/lang/String;

    aget-object v2, v5, p1

    .line 310
    .local v2, pkgName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 311
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 313
    .local v4, rinfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 314
    .local v3, rinfo:Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 315
    .local v0, icon:I
    if-eqz v0, :cond_0

    .line 316
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "android.resource"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 325
    .end local v0           #icon:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v3           #rinfo:Landroid/content/pm/ResolveInfo;
    .end local v4           #rinfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v5

    .line 322
    :catch_0
    move-exception v5

    .line 325
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getIconUri(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)Landroid/net/Uri;
    .locals 7
    .parameter "suggestedObject"
    .parameter "docid"
    .parameter "listener"

    .prologue
    .line 332
    const-string v6, "b"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "u"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v4, 0x1

    .line 337
    .local v4, noIcon:Z
    :goto_0
    invoke-static {p2}, Lcom/google/android/finsky/utils/DocUtils;->docidToBackend(Ljava/lang/String;)I

    move-result v0

    .line 338
    .local v0, backendId:I
    if-eqz v4, :cond_1

    .line 339
    invoke-direct {p0, v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->getBackendCanonicalIconUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 370
    :goto_1
    return-object v3

    .line 332
    .end local v0           #backendId:I
    .end local v4           #noIcon:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 345
    .restart local v0       #backendId:I
    .restart local v4       #noIcon:Z
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->addProducer()V

    .line 346
    sget-object v6, Lcom/google/android/finsky/providers/AppIconProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 352
    .local v3, iconUri:Landroid/net/Uri;
    new-instance v2, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;

    iget-object v6, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, p2}, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    .local v2, iconLoader:Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;
    new-instance v5, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$1;

    invoke-direct {v5, p0, p3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$1;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)V

    .line 360
    .local v5, onComplete:Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;
    :try_start_0
    const-string v6, "b"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 361
    const-string v6, "b"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->loadToFileFromBlob(Ljava/lang/String;Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 366
    :catch_0
    move-exception v1

    .line 368
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v5}, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;->onComplete()V

    goto :goto_1

    .line 364
    .end local v1           #e:Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v6, "u"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->loadToFileFromUrl(Ljava/lang/String;Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private isGoogleTv()Z
    .locals 2

    .prologue
    .line 374
    invoke-static {}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 377
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    .line 382
    sget-object v3, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "query"

    iget-object v5, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mQuery:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "json"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "blob"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "blob_sz"

    iget-object v5, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mBlobSize:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "hl"

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "gl"

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ct"

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->getCarrierCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "c"

    iget-object v5, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mBackendId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 390
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-direct {p0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->isGoogleTv()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/finsky/config/G;->gtvNavigationalSuggestEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 391
    :cond_0
    const-string v3, "type"

    const-string v4, "aq"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 393
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mQuery:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    invoke-interface {p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    .line 445
    :goto_0
    return-void

    .line 397
    :cond_2
    new-instance v1, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    invoke-direct {v1, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V

    .line 399
    .local v1, rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;
    new-instance v2, Lcom/android/volley/toolbox/JsonArrayRequest;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;

    invoke-direct {v4, p0, v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)V

    new-instance v5, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$3;

    invoke-direct {v5, p0, v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$3;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/android/volley/toolbox/JsonArrayRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 444
    .local v2, request:Lcom/android/volley/toolbox/JsonArrayRequest;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method
