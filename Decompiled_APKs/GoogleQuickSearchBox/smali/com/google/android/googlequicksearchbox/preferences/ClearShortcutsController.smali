.class public Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;
.super Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;
.source "ClearShortcutsController.java"


# instance fields
.field private mClearShortcutsPreference:Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;

.field private final mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

.field private final mHandler:Landroid/os/Handler;

.field private final mQueryStrategy:Lcom/google/android/googlequicksearchbox/QueryStrategy;

.field private final mWebHistory:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;Lcom/google/android/googlequicksearchbox/QueryStrategy;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;)V
    .locals 1
    .parameter "clickLog"
    .parameter "strategy"
    .parameter "webHistory"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    .line 48
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mQueryStrategy:Lcom/google/android/googlequicksearchbox/QueryStrategy;

    .line 49
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mWebHistory:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->clearShortcuts()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mClearShortcutsPreference:Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    return-object v0
.end method

.method private clearShortcuts()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "QSB.ClearShortcutsController"

    const-string v1, "Clearing shortcuts..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mQueryStrategy:Lcom/google/android/googlequicksearchbox/QueryStrategy;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/QueryStrategy;->setForceSuggestionFetch()V

    .line 101
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->clearHistory()V

    .line 102
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mWebHistory:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->deleteAllLocalHistory()V

    .line 103
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mClearShortcutsPreference:Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;->setEnabled(Z)V

    .line 104
    return-void
.end method

.method private updateClearShortcutsPreference()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mWebHistory:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;

    invoke-direct {v2, p0}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;-><init>(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)V

    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/util/Consumers;->createAsyncConsumer(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->hasLocalHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 96
    return-void
.end method


# virtual methods
.method public handlePreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 54
    check-cast p1, Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;

    .end local p1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mClearShortcutsPreference:Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;

    .line 55
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mClearShortcutsPreference:Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;

    new-instance v1, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$1;-><init>(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;->setListener(Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference$Listener;)V

    .line 63
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->updateClearShortcutsPreference()V

    .line 68
    return-void
.end method
