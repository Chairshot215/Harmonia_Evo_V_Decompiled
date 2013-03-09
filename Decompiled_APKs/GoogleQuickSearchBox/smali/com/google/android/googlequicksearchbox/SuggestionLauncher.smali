.class public Lcom/google/android/googlequicksearchbox/SuggestionLauncher;
.super Ljava/lang/Object;
.source "SuggestionLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;,
        Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;,
        Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Applications;
    }
.end annotation


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private final mClock:Lcom/google/android/googlequicksearchbox/Clock;

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private mListener:Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;

.field private final mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

.field private mSuggestionToRemoveFromHistory:Lcom/google/android/googlequicksearchbox/Suggestion;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;Lcom/google/android/googlequicksearchbox/Clock;)V
    .locals 0
    .parameter "context"
    .parameter "presenter"
    .parameter "clock"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 60
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    .line 61
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/SuggestionLauncher;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->removeFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/SuggestionLauncher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->removeFromHistoryDone(Z)V

    return-void
.end method

.method private createIntent(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, data:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, query:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, extraData:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    if-eqz v1, :cond_0

    .line 136
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 138
    :cond_0
    const-string v5, "user_query"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    if-eqz v4, :cond_1

    .line 140
    const-string v5, "query"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :cond_1
    if-eqz v2, :cond_2

    .line 143
    const-string v5, "intent_extra_data_key"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    :cond_2
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 146
    const-string v5, "app_data"

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 149
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 150
    return-object v3
.end method

.method public static createWebSearchIntent(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/QsbContext;Landroid/os/Bundle;Lcom/google/android/googlequicksearchbox/Clock;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    const-string v1, "user_query"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "query"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "app_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 231
    const-string v1, "from_self"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    if-eqz p3, :cond_0

    .line 233
    const-string v1, "query_submit_ts"

    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 235
    :cond_0
    return-object v0
.end method

.method private getContext()Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    return-object v0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private removeFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 3
    .parameter "suggestion"

    .prologue
    .line 286
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;->removeFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, query:Ljava/lang/String;
    new-instance v1, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionLauncher;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 300
    .end local v0           #query:Ljava/lang/String;
    :goto_0
    return-void

    .line 298
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->removeFromHistoryDone(Z)V

    goto :goto_0
.end method

.method private removeFromHistoryDone(Z)V
    .locals 3
    .parameter "ok"

    .prologue
    .line 303
    const-string v0, "QSB.SuggestionLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed query from history, success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;->setForceSuggestionFetch()V

    .line 305
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;->updateSuggestionsNow()V

    .line 306
    if-nez p1, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    const v1, 0x7f0b000b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method public clickedRefineSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 4
    .parameter "suggestion"

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, query:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, queryWithSpace:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mListener:Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mListener:Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;

    invoke-interface {v2, v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;->changedQuery(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clickedRemoveFromHistory(Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/Suggestion;)Landroid/app/Dialog;
    .locals 5
    .parameter "activity"
    .parameter "suggestion"

    .prologue
    .line 257
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mSuggestionToRemoveFromHistory:Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 259
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v1

    .line 260
    .local v1, title:Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0031

    new-instance v4, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$1;

    invoke-direct {v4, p0, p2}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$1;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionLauncher;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0032

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 271
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 272
    return-object v0
.end method

.method public clickedSuggestion(Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 6
    .parameter "a"
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClickLog()Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    move-result-object v3

    invoke-interface {v3, p2, p3}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->reportClick(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v2

    .line 101
    .local v2, source:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->logClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPrefetcher()Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    move-result-object v1

    .line 104
    .local v1, prefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->performSearch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    .end local v1           #prefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;
    .end local v2           #source:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    :goto_0
    return-void

    .line 108
    .restart local v1       #prefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;
    .restart local v2       #source:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->showResultsInBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v1           #prefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;
    .end local v2           #source:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getAppIntent(Lcom/google/android/googlequicksearchbox/Suggestion;)Landroid/content/Intent;

    move-result-object v0

    .line 114
    .local v0, appIntent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->launchIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->createIntent(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->launchIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method getAppIntent(Lcom/google/android/googlequicksearchbox/Suggestion;)Landroid/content/Intent;
    .locals 7
    .parameter "suggestion"

    .prologue
    const/4 v3, 0x0

    .line 160
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-object v3

    .line 163
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v4

    .line 164
    .local v4, source:Lcom/google/android/googlequicksearchbox/Source;
    if-eqz v4, :cond_0

    .line 165
    const-string v5, "applications"

    invoke-interface {v4}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, dataString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 170
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, data:Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Applications;->uriToComponentName(Landroid/net/Uri;)Landroid/content/ComponentName;

    move-result-object v0

    .line 172
    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 175
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v3, intent:Landroid/content/Intent;
    const/high16 v5, 0x1020

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public launchIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .parameter "a"
    .parameter "intent"

    .prologue
    .line 82
    if-nez p2, :cond_0

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 90
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.SuggestionLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openUrlInBrowser(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .parameter "url"
    .parameter "a"

    .prologue
    .line 247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, p2, v0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->launchIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 253
    return-void
.end method

.method public reshowRemoveFromHistoryDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1
    .parameter "activity"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mSuggestionToRemoveFromHistory:Lcom/google/android/googlequicksearchbox/Suggestion;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mSuggestionToRemoveFromHistory:Lcom/google/android/googlequicksearchbox/Suggestion;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->clickedRemoveFromHistory(Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/Suggestion;)Landroid/app/Dialog;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "appSearchData"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mAppSearchData:Landroid/os/Bundle;

    .line 70
    return-void
.end method

.method public setListener(Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mListener:Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;

    .line 74
    return-void
.end method

.method public showResultsInBrowser(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "a"
    .parameter "query"

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mAppSearchData:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-static {p2, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->createWebSearchIntent(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/QsbContext;Landroid/os/Bundle;Lcom/google/android/googlequicksearchbox/Clock;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->launchIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 244
    return-void
.end method
