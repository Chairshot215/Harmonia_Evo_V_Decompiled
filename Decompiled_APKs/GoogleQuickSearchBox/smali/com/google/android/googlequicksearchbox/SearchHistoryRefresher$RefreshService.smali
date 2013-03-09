.class public Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$RefreshService;
.super Landroid/app/IntentService;
.source "SearchHistoryRefresher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefreshService"
.end annotation


# instance fields
.field private mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

.field private mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "RefreshService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private declared-synchronized getRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$RefreshService;->mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$RefreshService;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchHistoryRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$RefreshService;->mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$RefreshService;->mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 118
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;I)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$RefreshService;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    .line 119
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$RefreshService;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->allowSuggestionLogicCreation()V

    .line 138
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$RefreshService;->getRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    move-result-object v0

    #calls: Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->refreshSearchHistory()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->access$000(Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;)V

    .line 139
    return-void
.end method
