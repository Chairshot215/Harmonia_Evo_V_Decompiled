.class public Lcom/google/android/googlequicksearchbox/QsbApplication;
.super Ljava/lang/Object;
.source "QsbApplication.java"


# static fields
.field private static volatile mThreadChecksDisabled:Z


# instance fields
.field private volatile mAllowSuggestionLogicCreation:Z

.field private mBackgroundExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private mBucketingClickLog:Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;

.field private mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

.field private mClock:Lcom/google/android/googlequicksearchbox/Clock;

.field private mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private mGoogleMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

.field private mGoogleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

.field private mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

.field private mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

.field private mLastAccessValidator:Lcom/google/android/googlequicksearchbox/LastAccessValidator;

.field private mListEntryViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

.field private mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

.field private mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

.field private mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

.field private mLogger:Lcom/google/android/googlequicksearchbox/Logger;

.field private mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field private mNewSourceWatcher:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

.field private mNonQueryBoundSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private mQsbDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

.field private mQsbNotificationsSource:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

.field private mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private mSearchHistoryChangedObservable:Landroid/database/DataSetObservable;

.field private mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

.field private mSearchPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

.field private mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private mShortcutRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

.field private mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

.field private mShouldQueryStrategy:Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

.field private mSourceRanker:Lcom/google/android/googlequicksearchbox/SourceRanker;

.field private mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private mSources:Lcom/google/android/googlequicksearchbox/Sources;

.field private mSuggestionFormatter:Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

.field private mSuggestionLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

.field private mSuggestionsPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

.field private mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

.field private mTextAppearanceFactory:Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mUriRewriter:Lcom/google/android/googlequicksearchbox/google/UriRewriter;

.field private mVersionCode:I

.field private mVoiceSearch:Lcom/google/android/googlequicksearchbox/VoiceSearch;

.field private mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

.field private mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbContext;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0e001e

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/googlequicksearchbox/QsbContext;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mUiThreadHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Lcom/google/android/googlequicksearchbox/GservicesConfig;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 177
    new-instance v0, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;-><init>(Lcom/google/android/googlequicksearchbox/Config;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQsbDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    .line 178
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchHistoryChangedObservable:Landroid/database/DataSetObservable;

    .line 179
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;-><init>(Lcom/google/android/googlequicksearchbox/QsbApplication;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    .line 180
    return-void
.end method

.method private checkSuggestLogicAllowed()V
    .locals 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mAllowSuggestionLogicCreation:Z

    const-string v1, "Suggestion logic not allowed during initial setup"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 241
    return-void
.end method

.method public static checkThread()V
    .locals 3

    .prologue
    .line 228
    sget-boolean v0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mThreadChecksDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessed Application object from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 231
    return-void

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;I)Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 201
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->get(I)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private getBucketingClickLog()Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;
    .locals 6

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mBucketingClickLog:Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getBackgroundExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Clock;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mBucketingClickLog:Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mBucketingClickLog:Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;

    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 217
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 218
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 219
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 220
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 223
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isGingerbreadOrLater()Z
    .locals 2

    .prologue
    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoneycombOrLater()Z
    .locals 2

    .prologue
    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIceCreamSandwichOrLater()Z
    .locals 2

    .prologue
    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setThreadChecksDisabled(Z)V
    .locals 0
    .parameter "disabled"

    .prologue
    .line 245
    sput-boolean p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mThreadChecksDisabled:Z

    .line 246
    return-void
.end method


# virtual methods
.method public allowSuggestionLogicCreation()V
    .locals 2

    .prologue
    .line 234
    const-string v0, "QSB.QsbApplication"

    const-string v1, "allowSuggestionLoginCreation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mAllowSuggestionLogicCreation:Z

    .line 236
    return-void
.end method

.method protected close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 250
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->stopListening()V

    .line 252
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->close()V

    .line 256
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->close()V

    .line 260
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->close()V

    .line 264
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProvider;->close()V

    .line 268
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    if-eqz v0, :cond_5

    .line 271
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->close()V

    .line 272
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    .line 274
    :cond_5
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    if-eqz v0, :cond_6

    .line 275
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;->close()V

    .line 276
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    .line 278
    :cond_6
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    if-eqz v0, :cond_7

    .line 279
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->close()V

    .line 280
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    .line 282
    :cond_7
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    if-eqz v0, :cond_8

    .line 283
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->close()V

    .line 284
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 286
    :cond_8
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mNonQueryBoundSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    if-eqz v0, :cond_9

    .line 287
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mNonQueryBoundSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->close()V

    .line 288
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mNonQueryBoundSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 290
    :cond_9
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    if-eqz v0, :cond_a

    .line 291
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->close()V

    .line 292
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 294
    :cond_a
    return-void
.end method

.method protected createBackgroundExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .locals 3

    .prologue
    .line 308
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;-><init>(I)V

    .line 310
    .local v0, backgroundThreadFactory:Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->factory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/android/googlequicksearchbox/util/Factory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;-><init>(Lcom/google/android/googlequicksearchbox/util/Factory;)V

    return-object v1
.end method

.method protected createClickLog()Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;
    .locals 4

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 418
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getBucketingClickLog()Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;

    move-result-object v0

    .line 419
    .local v0, clickLog:Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->areShortcutsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 420
    new-instance v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Sources;)V

    .line 422
    .local v1, migrator:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;
    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->migrateClickLogData(Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;)V

    .line 425
    .end local v1           #migrator:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->areShortcutsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    new-instance v2, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;-><init>(Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;)V

    move-object v0, v2

    .line 428
    .end local v0           #clickLog:Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;
    :cond_1
    return-object v0
.end method

.method protected createClock()Lcom/google/android/googlequicksearchbox/Clock;
    .locals 1

    .prologue
    .line 702
    new-instance v0, Lcom/google/android/googlequicksearchbox/GenericClock;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/GenericClock;-><init>()V

    return-object v0
.end method

.method protected createGoogleMaps()Lcom/google/android/googlequicksearchbox/google/Maps;
    .locals 2

    .prologue
    .line 844
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/Maps;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/google/Maps;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 1

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 628
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v0

    return-object v0
.end method

.method protected createHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;
    .locals 7

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v6

    .line 714
    .local v6, c:Lcom/google/android/googlequicksearchbox/Config;
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getUriRewriter()Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/Config;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/Config;->getHttpConnectTimeout()I

    move-result v3

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/Config;->getHttpReadTimeout()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;-><init>(Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;Ljava/lang/String;IILandroid/content/Context;)V

    return-object v0
.end method

.method protected createIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;
    .locals 7

    .prologue
    .line 929
    new-instance v6, Lcom/google/android/googlequicksearchbox/CachingIconLoader;

    new-instance v0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getBackgroundExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/PackageIconLoader;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V

    invoke-direct {v6, v0}, Lcom/google/android/googlequicksearchbox/CachingIconLoader;-><init>(Lcom/google/android/googlequicksearchbox/IconLoader;)V

    return-object v6
.end method

.method protected createLastAccessValidator()Lcom/google/android/googlequicksearchbox/LastAccessValidator;
    .locals 4

    .prologue
    .line 955
    new-instance v0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getNonQueryBoundSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V

    return-object v0
.end method

.method protected createListEntryViewFactory()Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;
    .locals 4

    .prologue
    .line 582
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Lcom/google/android/googlequicksearchbox/QsbContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getDebugging()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;-><init>(Landroid/view/LayoutInflater;Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;Landroid/content/res/Resources;)V

    return-object v1
.end method

.method protected createLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;
    .locals 3

    .prologue
    .line 791
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationManager()Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;)V

    return-object v0
.end method

.method protected createLocationManager()Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;
    .locals 2

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 857
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 858
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;

    invoke-direct {v1, v0}, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;-><init>(Landroid/location/LocationManager;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected createLocationOptIn()Lcom/google/android/googlequicksearchbox/google/LocationSettings;
    .locals 3

    .prologue
    .line 760
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryStrategy()Lcom/google/android/googlequicksearchbox/QueryStrategy;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/QueryStrategy;)V

    return-object v0
.end method

.method protected createLogger()Lcom/google/android/googlequicksearchbox/Logger;
    .locals 3

    .prologue
    .line 657
    new-instance v0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Config;)V

    return-object v0
.end method

.method protected createLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    .locals 6

    .prologue
    .line 775
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)V

    return-object v0
.end method

.method protected createNewSourceWatcher()Lcom/google/android/googlequicksearchbox/NewSourceWatcher;
    .locals 7

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 379
    new-instance v0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getBackgroundExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQsbNotificationsSource()Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;)V

    return-object v0
.end method

.method public createPreferenceControllerFactory(Landroid/app/Activity;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;
    .locals 7
    .parameter "activity"

    .prologue
    .line 683
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getNewSourceWatcher()Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    move-result-object v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/NewSourceWatcher;Landroid/app/Activity;)V

    return-object v0
.end method

.method protected createPrefetchStrategy()Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;
    .locals 6

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 904
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/prefetch/AggregatePrefetchStrategy;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/googlequicksearchbox/google/prefetch/ConfigBasedPrefetchStrategy;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/googlequicksearchbox/google/prefetch/ConfigBasedPrefetchStrategy;-><init>(Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchWhenWebSourceEnabled;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchWhenWebSourceEnabled;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/google/prefetch/AggregatePrefetchStrategy;-><init>([Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;)V

    return-object v0
.end method

.method protected createPrefetcher()Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;
    .locals 5

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 912
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createPrefetchStrategy()Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getUriRewriter()Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->create(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;Lcom/google/android/googlequicksearchbox/google/UriRewriter;)Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;

    move-result-object v0

    .line 914
    .local v0, srpp:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;
    if-nez v0, :cond_0

    .line 915
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/prefetch/NopPrefetcher;

    .end local v0           #srpp:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;
    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/NopPrefetcher;-><init>()V

    .line 917
    .restart local v0       #srpp:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;
    :cond_0
    return-object v0
.end method

.method protected createQsbNotificationsSource()Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;
    .locals 6

    .prologue
    .line 942
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVersionCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/IconLoader;ILcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Clock;)V

    return-object v0
.end method

.method protected createQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 4

    .prologue
    .line 541
    const-string v0, "QSB #%d"

    .line 542
    .local v0, nameFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getQueryThreadPriority()I

    move-result v1

    .line 543
    .local v1, priority:I
    new-instance v2, Lcom/google/common/util/concurrent/NamingThreadFactory;

    new-instance v3, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;

    invoke-direct {v3, v1}, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;-><init>(I)V

    invoke-direct {v2, v0, v3}, Lcom/google/common/util/concurrent/NamingThreadFactory;-><init>(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;)V

    return-object v2
.end method

.method protected createSearchHistoryRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;
    .locals 5

    .prologue
    .line 887
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getNonQueryBoundSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V

    return-object v0
.end method

.method protected createSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;
    .locals 6

    .prologue
    .line 744
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method protected createSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 4

    .prologue
    .line 337
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationOptIn()Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/LocationSettings;)V

    return-object v0
.end method

.method protected createShortcutRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;
    .locals 2

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 490
    new-instance v0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getNonQueryBoundSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;-><init>(Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V

    return-object v0
.end method

.method protected createShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;
    .locals 14

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 450
    new-instance v11, Lcom/google/common/util/concurrent/NamingThreadFactory;

    const-string v0, "ShortcutRepository #%d"

    new-instance v1, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;-><init>(I)V

    invoke-direct {v11, v0, v1}, Lcom/google/common/util/concurrent/NamingThreadFactory;-><init>(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;)V

    .line 452
    .local v11, logThreadFactory:Ljava/util/concurrent/ThreadFactory;
    invoke-static {v11}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 453
    .local v4, logExecutor:Ljava/util/concurrent/Executor;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShortcutRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchHistoryChangedObservable()Landroid/database/DataSetObservable;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVersionCode()I

    move-result v9

    new-instance v10, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getBucketingClickLog()Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;

    move-result-object v12

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;-><init>(Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;Lcom/google/android/googlequicksearchbox/Sources;)V

    invoke-static/range {v0 .. v10}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->create(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/googlequicksearchbox/Clock;Landroid/database/DataSetObservable;Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;ILcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;)Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    move-result-object v0

    return-object v0
.end method

.method protected createShouldQueryStrategy()Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;
    .locals 4

    .prologue
    .line 967
    new-instance v0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLastAccessValidator()Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/LastAccessValidator;)V

    return-object v0
.end method

.method protected createSourceRanker()Lcom/google/android/googlequicksearchbox/SourceRanker;
    .locals 4

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 397
    new-instance v0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClickLog()Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;)V

    return-object v0
.end method

.method protected createSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .locals 3

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 527
    .local v0, queryThreadFactory:Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->factory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/android/googlequicksearchbox/util/Factory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;-><init>(Lcom/google/android/googlequicksearchbox/util/Factory;)V

    return-object v1
.end method

.method protected createSources()Lcom/google/android/googlequicksearchbox/Sources;
    .locals 7

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 361
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQsbNotificationsSource()Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 362
    .local v4, internalSources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    new-instance v5, Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 364
    .local v5, filterProvider:Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchableSources;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getBackgroundExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/SearchableSources;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Ljava/util/List;Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 366
    .local v0, sources:Lcom/google/android/googlequicksearchbox/Sources;
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Sources;->update()V

    .line 367
    return-object v0
.end method

.method protected createSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;
    .locals 2

    .prologue
    .line 668
    new-instance v0, Lcom/google/android/googlequicksearchbox/LevenshteinSuggestionFormatter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getTextAppearanceFactory()Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/LevenshteinSuggestionFormatter;-><init>(Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;)V

    return-object v0
.end method

.method protected createSuggestionLauncher()Lcom/google/android/googlequicksearchbox/SuggestionLauncher;
    .locals 4

    .prologue
    .line 979
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSuggestionsPresenter()Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;Lcom/google/android/googlequicksearchbox/Clock;)V

    return-object v0
.end method

.method protected createSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;
    .locals 6

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 562
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShouldQueryStrategy()Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;-><init>(Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/Logger;)V

    return-object v0
.end method

.method public createSummonsPromoter()Lcom/google/android/googlequicksearchbox/Promoter;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 593
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 594
    new-instance v2, Lcom/google/android/googlequicksearchbox/SummonsFilter;

    invoke-direct {v2}, Lcom/google/android/googlequicksearchbox/SummonsFilter;-><init>()V

    .line 596
    .local v2, summonsFilter:Lcom/google/android/googlequicksearchbox/SuggestionFilter;
    new-instance v0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClickLog()Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchHistoryChangedObservable()Landroid/database/DataSetObservable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLastAccessValidator()Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getDebugging()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;Landroid/database/DataSetObservable;Lcom/google/android/googlequicksearchbox/LastAccessValidator;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;)V

    .line 601
    .local v0, superResultsPromoter:Lcom/google/android/googlequicksearchbox/Promoter;
    new-instance v8, Lcom/google/android/googlequicksearchbox/WebResultPromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-direct {v8, v1, v2, v0, v3}, Lcom/google/android/googlequicksearchbox/WebResultPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 605
    .local v8, webResultsPromoter:Lcom/google/android/googlequicksearchbox/Promoter;
    new-instance v4, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getDebugging()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;)V

    .line 608
    .local v4, resultsPromoter:Lcom/google/android/googlequicksearchbox/Promoter;
    new-instance v10, Lcom/google/android/googlequicksearchbox/QsbInternalPromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-direct {v10, v1, v3, v4}, Lcom/google/android/googlequicksearchbox/QsbInternalPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/Promoter;)V

    .line 611
    .local v10, qsbInternalPromoter:Lcom/google/android/googlequicksearchbox/Promoter;
    return-object v10
.end method

.method protected createTextAppearanceFactory()Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;
    .locals 2

    .prologue
    .line 679
    new-instance v0, Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createUriRewriter()Lcom/google/android/googlequicksearchbox/google/UriRewriter;
    .locals 2

    .prologue
    .line 730
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/google/UriRewriter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;
    .locals 3

    .prologue
    .line 643
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    return-object v0
.end method

.method protected createWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;
    .locals 6

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 469
    new-instance v2, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;

    new-instance v0, Lcom/google/common/util/concurrent/NamingThreadFactory;

    const-string v1, "WebHistoryRepository"

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/NamingThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 471
    .local v2, executor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    new-instance v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Clock;)V

    return-object v0
.end method

.method public createWebPromoter()Lcom/google/android/googlequicksearchbox/Promoter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 588
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 589
    new-instance v0, Lcom/google/android/googlequicksearchbox/WebPromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/android/googlequicksearchbox/WebPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V

    return-object v0
.end method

.method protected createWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    .locals 8

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkSuggestLogicAllowed()V

    .line 804
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getUseGenie()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 805
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getGoogleMaps()Lcom/google/android/googlequicksearchbox/google/Maps;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Lcom/google/android/googlequicksearchbox/google/Maps;)V

    .line 822
    .local v0, source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    :goto_0
    new-instance v1, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchHistoryChangedObservable()Landroid/database/DataSetObservable;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;Lcom/google/android/googlequicksearchbox/Clock;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Landroid/database/DataSetObservable;)V

    .line 824
    .end local v0           #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    .local v1, source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchHistoryChangedObservable()Landroid/database/DataSetObservable;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Landroid/database/DataSetObservable;)V

    .line 827
    .end local v1           #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    .restart local v0       #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    new-instance v1, Lcom/google/android/googlequicksearchbox/google/ResultsPagePrefetchingWebSource;

    invoke-direct {v1, p0, v0}, Lcom/google/android/googlequicksearchbox/google/ResultsPagePrefetchingWebSource;-><init>(Lcom/google/android/googlequicksearchbox/QsbApplication;Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;)V

    .line 830
    .end local v0           #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    .restart local v1       #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->shouldDedupeUserQuery()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 831
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;)V

    .line 833
    .end local v1           #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    .restart local v0       #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    :goto_1
    return-object v0

    .line 813
    .end local v0           #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    :cond_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V

    .restart local v0       #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    goto :goto_0

    .end local v0           #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    .restart local v1       #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    :cond_1
    move-object v0, v1

    .end local v1           #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    .restart local v0       #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    goto :goto_1
.end method

.method public declared-synchronized getBackgroundExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mBackgroundExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createBackgroundExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mBackgroundExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mBackgroundExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getClickLog()Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;
    .locals 1

    .prologue
    .line 401
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 402
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createClickLog()Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    return-object v0
.end method

.method public declared-synchronized getClock()Lcom/google/android/googlequicksearchbox/Clock;
    .locals 1

    .prologue
    .line 695
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    if-nez v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mClock:Lcom/google/android/googlequicksearchbox/Clock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfig()Lcom/google/android/googlequicksearchbox/Config;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    return-object v0
.end method

.method public getContext()Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    return-object v0
.end method

.method public getDebugging()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQsbDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    return-object v0
.end method

.method public declared-synchronized getGoogleMaps()Lcom/google/android/googlequicksearchbox/google/Maps;
    .locals 1

    .prologue
    .line 837
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mGoogleMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

    if-nez v0, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createGoogleMaps()Lcom/google/android/googlequicksearchbox/google/Maps;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mGoogleMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mGoogleMaps:Lcom/google/android/googlequicksearchbox/google/Maps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 1

    .prologue
    .line 619
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 620
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mGoogleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    if-nez v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mGoogleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mGoogleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    return-object v0
.end method

.method public getHelp()Lcom/google/android/googlequicksearchbox/Help;
    .locals 3

    .prologue
    .line 863
    new-instance v0, Lcom/google/android/googlequicksearchbox/Help;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/Help;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    return-object v0
.end method

.method public declared-synchronized getHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;
    .locals 1

    .prologue
    .line 706
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    if-nez v0, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    if-nez v0, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    return-object v0
.end method

.method public getLastAccessValidator()Lcom/google/android/googlequicksearchbox/LastAccessValidator;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLastAccessValidator:Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    if-nez v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createLastAccessValidator()Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLastAccessValidator:Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLastAccessValidator:Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    return-object v0
.end method

.method public getListEntryViewFactory()Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;
    .locals 1

    .prologue
    .line 574
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 575
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mListEntryViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createListEntryViewFactory()Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mListEntryViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mListEntryViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    return-object v0
.end method

.method public declared-synchronized getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;
    .locals 1

    .prologue
    .line 784
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    if-nez v0, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocationManager()Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    if-nez v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createLocationManager()Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    return-object v0
.end method

.method public declared-synchronized getLocationOptIn()Lcom/google/android/googlequicksearchbox/google/LocationSettings;
    .locals 1

    .prologue
    .line 753
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    if-nez v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createLocationOptIn()Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLogger()Lcom/google/android/googlequicksearchbox/Logger;
    .locals 1

    .prologue
    .line 650
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;

    if-nez v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    .locals 1

    .prologue
    .line 768
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    if-nez v0, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMainThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNewSourceWatcher()Lcom/google/android/googlequicksearchbox/NewSourceWatcher;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mNewSourceWatcher:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    if-nez v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createNewSourceWatcher()Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mNewSourceWatcher:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mNewSourceWatcher:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    return-object v0
.end method

.method public declared-synchronized getNonQueryBoundSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mNonQueryBoundSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    if-nez v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mNonQueryBoundSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mNonQueryBoundSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrefetcher()Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;
    .locals 1

    .prologue
    .line 896
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-nez v0, :cond_0

    .line 897
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createPrefetcher()Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQsbNotificationsSource()Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQsbNotificationsSource:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    if-nez v0, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createQsbNotificationsSource()Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQsbNotificationsSource:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQsbNotificationsSource:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    return-object v0
.end method

.method public getQueryStrategy()Lcom/google/android/googlequicksearchbox/QueryStrategy;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    return-object v0
.end method

.method protected declared-synchronized getQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchHistoryChangedObservable()Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchHistoryChangedObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method public declared-synchronized getSearchHistoryRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;
    .locals 1

    .prologue
    .line 880
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    if-nez v0, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSearchHistoryRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;
    .locals 1

    .prologue
    .line 734
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    if-nez v0, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 2

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 330
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryStrategy()Lcom/google/android/googlequicksearchbox/QueryStrategy;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 331
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->upgradeSettingsIfNeeded()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/QsbContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->areShortcutsEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 481
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 482
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createShortcutRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    return-object v0
.end method

.method public getShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 438
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->areShortcutsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    .line 444
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShouldQueryStrategy()Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShouldQueryStrategy:Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    if-nez v0, :cond_0

    .line 961
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createShouldQueryStrategy()Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShouldQueryStrategy:Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShouldQueryStrategy:Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    return-object v0
.end method

.method public getSourceRanker()Lcom/google/android/googlequicksearchbox/SourceRanker;
    .locals 1

    .prologue
    .line 388
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 389
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceRanker:Lcom/google/android/googlequicksearchbox/SourceRanker;

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSourceRanker()Lcom/google/android/googlequicksearchbox/SourceRanker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceRanker:Lcom/google/android/googlequicksearchbox/SourceRanker;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceRanker:Lcom/google/android/googlequicksearchbox/SourceRanker;

    return-object v0
.end method

.method public getSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 507
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    if-nez v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    return-object v0
.end method

.method public getSources()Lcom/google/android/googlequicksearchbox/Sources;
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 353
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    return-object v0
.end method

.method public getSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionFormatter:Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    if-nez v0, :cond_0

    .line 662
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionFormatter:Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionFormatter:Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    return-object v0
.end method

.method public getSuggestionLauncher()Lcom/google/android/googlequicksearchbox/SuggestionLauncher;
    .locals 1

    .prologue
    .line 971
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 972
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    if-nez v0, :cond_0

    .line 973
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSuggestionLauncher()Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    return-object v0
.end method

.method public getSuggestionsPresenter()Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    return-object v0
.end method

.method protected getSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;
    .locals 1

    .prologue
    .line 553
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 554
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    return-object v0
.end method

.method public getTextAppearanceFactory()Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mTextAppearanceFactory:Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    if-nez v0, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createTextAppearanceFactory()Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mTextAppearanceFactory:Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mTextAppearanceFactory:Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    return-object v0
.end method

.method public declared-synchronized getUriRewriter()Lcom/google/android/googlequicksearchbox/google/UriRewriter;
    .locals 1

    .prologue
    .line 723
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mUriRewriter:Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    if-nez v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createUriRewriter()Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mUriRewriter:Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mUriRewriter:Lcom/google/android/googlequicksearchbox/google/UriRewriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVersionCode()I
    .locals 1

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mVersionCode:I

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mVersionCode:I

    .line 212
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mVersionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;
    .locals 1

    .prologue
    .line 635
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 636
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mVoiceSearch:Lcom/google/android/googlequicksearchbox/VoiceSearch;

    if-nez v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mVoiceSearch:Lcom/google/android/googlequicksearchbox/VoiceSearch;

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mVoiceSearch:Lcom/google/android/googlequicksearchbox/VoiceSearch;

    return-object v0
.end method

.method public declared-synchronized getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;
    .locals 1

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    .locals 1

    .prologue
    .line 795
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    if-nez v0, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStartupComplete()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public resetShortcutRefresher()V
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->areShortcutsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShortcutRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ShortcutRefresher;->reset()V

    .line 497
    :cond_0
    return-void
.end method

.method public updateSources()V
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 346
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Sources;->update()V

    .line 349
    :cond_0
    return-void
.end method
