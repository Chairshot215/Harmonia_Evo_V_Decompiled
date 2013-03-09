.class public Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;
.super Ljava/lang/Object;
.source "SearchHistoryRefresher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$RefreshService;
    }
.end annotation


# static fields
.field public static final REFRESH_SEARCH_HISTORY_INTENT:Landroid/content/Intent;


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private mPendingRefresh:Landroid/app/PendingIntent;

.field private final mSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.googlequicksearchbox.REFRESH_SEARCH_HISTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->REFRESH_SEARCH_HISTORY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V
    .locals 0
    .parameter "context"
    .parameter "config"
    .parameter "source"
    .parameter "executor"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 64
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->mSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    .line 65
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->refreshSearchHistory()V

    return-void
.end method

.method private refreshSearchHistory()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->mSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    const-string v1, ""

    new-instance v2, Lcom/google/android/googlequicksearchbox/util/NoOpConsumer;

    invoke-direct {v2}, Lcom/google/android/googlequicksearchbox/util/NoOpConsumer;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 103
    return-void
.end method

.method private refreshSearchHistoryAsync()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    new-instance v1, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$1;-><init>(Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    .line 98
    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 4
    .parameter "refreshNow"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->REFRESH_SEARCH_HISTORY_INTENT:Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->mPendingRefresh:Landroid/app/PendingIntent;

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->refreshSearchHistoryAsync()V

    .line 78
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 7

    .prologue
    .line 82
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 83
    .local v0, alarms:Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/Config;->getRefreshSearchHistoryDelay()J

    move-result-wide v5

    add-long v1, v3, v5

    .line 84
    .local v1, triggerAtTime:J
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->mPendingRefresh:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 85
    return-void
.end method
