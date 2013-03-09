.class public Lcom/google/android/googlequicksearchbox/SearchableSource;
.super Ljava/lang/Object;
.source "SearchableSource.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/Source;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/SearchableSource$ShortcutSourceResultBuilder;
    }
.end annotation


# instance fields
.field private final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private final mEnabledByDefault:Z

.field private mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

.field private final mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private final mIgnoreIcon1:Z

.field private final mIsTrusted:Z

.field private final mName:Ljava/lang/String;

.field private final mSearchable:Landroid/app/SearchableInfo;

.field private final mShouldShortcutResults:Z

.field private final mShowSingleLine:Z

.field private mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

.field private mSuggestUriBase:Landroid/net/Uri;

.field private final mSuggestionFilterProvider:Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;

.field private final mUiThread:Landroid/os/Handler;

.field private final mVersionCode:I


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Config;Landroid/app/SearchableInfo;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;)V
    .locals 5
    .parameter "context"
    .parameter "config"
    .parameter "searchable"
    .parameter "uiThread"
    .parameter "iconLoader"
    .parameter "suggestionFilterProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 78
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 79
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 80
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mUiThread:Landroid/os/Handler;

    .line 81
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 82
    invoke-virtual {p3}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 84
    .local v0, componentName:Landroid/content/ComponentName;
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    .line 85
    iput-object p6, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSuggestionFilterProvider:Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;

    .line 86
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 88
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 89
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 90
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mVersionCode:I

    .line 91
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v4, p0}, Lcom/google/android/googlequicksearchbox/Config;->isSourceEnabledByDefault(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mEnabledByDefault:Z

    .line 92
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v4, p0}, Lcom/google/android/googlequicksearchbox/Config;->isSourceShowSingleLine(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mShowSingleLine:Z

    .line 93
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v4, p0}, Lcom/google/android/googlequicksearchbox/Config;->isSourceIgnoreIcon1(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIgnoreIcon1:Z

    .line 94
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v4, p0}, Lcom/google/android/googlequicksearchbox/Config;->isSourceTrusted(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIsTrusted:Z

    .line 95
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v4, p0}, Lcom/google/android/googlequicksearchbox/Config;->isNeverShortcutSource(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mShouldShortcutResults:Z

    .line 96
    return-void
.end method

.method private canRead(Landroid/net/Uri;)Z
    .locals 14
    .parameter "uri"

    .prologue
    .line 130
    iget-object v11, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v11}, Lcom/google/android/googlequicksearchbox/QsbContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 132
    .local v8, provider:Landroid/content/pm/ProviderInfo;
    if-nez v8, :cond_0

    .line 133
    const-string v11, "QSB.SearchableSource"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has bad suggestion authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v11, 0x0

    .line 166
    :goto_0
    return v11

    .line 136
    :cond_0
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 137
    .local v9, readPermission:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 139
    const/4 v11, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 142
    .local v7, pid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    .line 143
    .local v10, uid:I
    iget-object v11, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v11, v9, v7, v10}, Lcom/google/android/googlequicksearchbox/QsbContext;->checkPermission(Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_2

    .line 146
    const/4 v11, 0x1

    goto :goto_0

    .line 148
    :cond_2
    iget-object v4, v8, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 149
    .local v4, pathPermissions:[Landroid/content/pm/PathPermission;
    if-eqz v4, :cond_3

    array-length v11, v4

    if-nez v11, :cond_4

    .line 152
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, path:Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Landroid/content/pm/PathPermission;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v6, v0, v1

    .line 156
    .local v6, perm:Landroid/content/pm/PathPermission;
    invoke-virtual {v6}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, pathReadPermission:Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v6, v3}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v11, v5, v7, v10}, Lcom/google/android/googlequicksearchbox/QsbContext;->checkPermission(Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_5

    .line 162
    const/4 v11, 0x1

    goto :goto_0

    .line 155
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    .end local v5           #pathReadPermission:Ljava/lang/String;
    .end local v6           #perm:Landroid/content/pm/PathPermission;
    :cond_6
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private getIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;
    .locals 7

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getIconPackage()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, iconPackage:Ljava/lang/String;
    new-instance v6, Lcom/google/android/googlequicksearchbox/CachingIconLoader;

    new-instance v0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mUiThread:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/PackageIconLoader;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V

    invoke-direct {v6, v0}, Lcom/google/android/googlequicksearchbox/CachingIconLoader;-><init>(Lcom/google/android/googlequicksearchbox/IconLoader;)V

    iput-object v6, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    .line 221
    .end local v3           #iconPackage:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    return-object v0
.end method

.method private getIconPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestPackage()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, iconPackage:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 253
    .end local v0           #iconPackage:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #iconPackage:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSourceIconResource()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    return v0
.end method

.method private declared-synchronized getSuggestUriBase(Landroid/app/SearchableInfo;)Landroid/net/Uri;
    .locals 5
    .parameter "searchable"

    .prologue
    const/4 v3, 0x0

    .line 376
    monitor-enter p0

    if-nez p1, :cond_1

    .line 400
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 379
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSuggestUriBase:Landroid/net/Uri;

    if-nez v4, :cond_3

    .line 381
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, authority:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 386
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 391
    .local v2, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, contentPath:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 393
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 397
    :cond_2
    const-string v3, "search_suggest_query"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 398
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSuggestUriBase:Landroid/net/Uri;

    .line 400
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #contentPath:Ljava/lang/String;
    .end local v2           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_3
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSuggestUriBase:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getSuggestionFilterForQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionFilter;
    .locals 1
    .parameter "query"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSuggestionFilterProvider:Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;->getFilter(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionFilter;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestions(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9
    .parameter "context"
    .parameter "searchable"
    .parameter "query"
    .parameter "queryLimit"

    .prologue
    const/4 v2, 0x0

    .line 409
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getSuggestUriBase(Landroid/app/SearchableInfo;)Landroid/net/Uri;

    move-result-object v6

    .line 410
    .local v6, base:Landroid/net/Uri;
    if-nez v6, :cond_0

    .line 434
    :goto_0
    return-object v2

    .line 411
    :cond_0
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 414
    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 417
    .local v4, selArgs:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 418
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p3, v4, v0

    .line 423
    .restart local v4       #selArgs:[Ljava/lang/String;
    :goto_1
    const-string v0, "limit"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 425
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 432
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, c:Landroid/database/Cursor;
    move-object v2, v7

    .line 434
    goto :goto_0

    .line 420
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v8, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "id"

    .prologue
    .line 485
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 486
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private static getValidationCursor(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "context"
    .parameter "searchable"
    .parameter "shortcutId"
    .parameter "extraData"

    .prologue
    const/4 v2, 0x0

    .line 439
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    .line 440
    .local v6, authority:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 464
    :goto_0
    return-object v2

    .line 444
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 449
    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, contentPath:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 451
    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 455
    :cond_1
    const-string v0, "search_suggest_shortcut"

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 456
    invoke-virtual {v8, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 458
    const-string v0, "suggest_intent_extra_data"

    invoke-virtual {v8, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 464
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0
.end method

.method private loadSourceIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getSourceIconResource()I

    move-result v0

    .line 289
    .local v0, iconRes:I
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 291
    :goto_0
    return-object v2

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 291
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method private static safeClose(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 310
    if-eqz p0, :cond_0

    .line 312
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 315
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.SearchableSource"

    const-string v2, "cursor close() failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDefaultIntentAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 474
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 476
    .end local v0           #action:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #action:Ljava/lang/String;
    :cond_0
    const-string v0, "android.intent.action.SEARCH"

    goto :goto_0
.end method

.method public getDefaultIntentData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;
    .locals 1
    .parameter "drawableId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/googlequicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/IconLoader;->getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    move-result-object v0

    return-object v0
.end method

.method public getIconUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "drawableId"

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/IconLoader;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryThreshold()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v0

    return v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSettingsDescriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v2, :cond_2

    .line 275
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->loadSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 276
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 277
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 280
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 284
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getSourceIconUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getSourceIconResource()I

    move-result v0

    .line 298
    .local v0, resourceId:I
    if-nez v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    const v2, 0x7f020040

    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 301
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v2, v0}, Lcom/google/android/googlequicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getSuggestAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getSuggestUriBase(Landroid/app/SearchableInfo;)Landroid/net/Uri;

    move-result-object v0

    .line 366
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 367
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSuggestions(Ljava/lang/String;I)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 8
    .parameter "query"
    .parameter "queryLimit"

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 324
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Lcom/google/android/googlequicksearchbox/LatencyTracker;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/google/android/googlequicksearchbox/LatencyTracker;-><init>(Lcom/google/android/googlequicksearchbox/Clock;)V

    .line 325
    .local v2, latency:Lcom/google/android/googlequicksearchbox/LatencyTracker;
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-direct {p0, v5, v6, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getSuggestions(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 327
    new-instance v5, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getSuggestionFilterForQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionFilter;

    move-result-object v6

    invoke-direct {v5, p0, p1, v0, v6}, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;-><init>(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/googlequicksearchbox/SuggestionFilter;)V

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/Config;->getMaxResultsPerSource()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->build(I)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v4

    .line 329
    .local v4, result:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/LatencyTracker;->getLatency()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/android/googlequicksearchbox/SuggestionList;->setLatency(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    .end local v2           #latency:Lcom/google/android/googlequicksearchbox/LatencyTracker;
    .end local v4           #result:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :goto_0
    return-object v4

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, ex:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v5, "QSB.SearchableSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    new-instance v3, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, p1}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .local v3, list:Lcom/google/android/googlequicksearchbox/SuggestionListImpl;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->setRequestFailed(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    move-object v4, v3

    goto :goto_0

    .end local v1           #ex:Ljava/lang/RuntimeException;
    .end local v3           #list:Lcom/google/android/googlequicksearchbox/SuggestionListImpl;
    :catchall_0
    move-exception v5

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    throw v5
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mVersionCode:I

    return v0
.end method

.method public isEnabledByDefault()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mEnabledByDefault:Z

    return v0
.end method

.method public isHiddenFromSettings()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnoreIcon1()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIgnoreIcon1:Z

    return v0
.end method

.method public isInternalSource()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public isReadable()Z
    .locals 6

    .prologue
    .line 103
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, authority:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 107
    const/4 v4, 0x1

    .line 121
    :goto_0
    return v4

    .line 110
    :cond_0
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 114
    .local v3, uriBuilder:Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, contentPath:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    :cond_1
    const-string v4, "search_suggest_query"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 121
    .local v2, uri:Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/SearchableSource;->canRead(Landroid/net/Uri;)Z

    move-result v4

    goto :goto_0
.end method

.method public isShowSingleLine()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mShowSingleLine:Z

    return v0
.end method

.method public isTrusted()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIsTrusted:Z

    return v0
.end method

.method public isVersionCodeCompatible(I)Z
    .locals 1
    .parameter "version"

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getVersionCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->queryAfterZeroResults()Z

    move-result v0

    return v0
.end method

.method public refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 6
    .parameter "shortcutId"
    .parameter "extraData"

    .prologue
    const/4 v2, 0x0

    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-static {v3, v4, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getValidationCursor(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 348
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 349
    new-instance v3, Lcom/google/android/googlequicksearchbox/SearchableSource$ShortcutSourceResultBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getSuggestionFilterForQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionFilter;

    move-result-object v5

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/google/android/googlequicksearchbox/SearchableSource$ShortcutSourceResultBuilder;-><init>(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/googlequicksearchbox/SuggestionFilter;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/SearchableSource$ShortcutSourceResultBuilder;->build(I)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 359
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, ex:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v3, "QSB.SearchableSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    throw v2
.end method

.method public shouldShortcutResults()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mShouldShortcutResults:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchableSource["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
