.class public Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;
.super Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;
.source "EmptyState.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"


# instance fields
.field private mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mAppHitboxTapListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mListView:Lcom/htc/fusion/fx/controls/FxListView;

.field private mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method private constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V
    .locals 1
    .parameter "base"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    .line 31
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState$1;

    invoke-direct {v0, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState$1;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;)V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitboxTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 50
    return-void
.end method

.method public static createState(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    .locals 2
    .parameter "host"

    .prologue
    .line 147
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;

    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;

    invoke-direct {v1, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)V

    invoke-direct {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "EmptyState"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfiguration"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 77
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v5, :cond_0

    .line 78
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 81
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v2

    .line 85
    .local v2, host:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 86
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "ListViewViewPort"

    aput-object v5, v0, v6

    const-string v5, "timeline.main_page"

    aput-object v5, v0, v7

    const-string v5, "textlabel.empty_page"

    aput-object v5, v0, v8

    const-string v5, "app.hitbox"

    aput-object v5, v0, v9

    .line 87
    .local v0, controlNames:[Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    .line 89
    .local v3, objects:[Lcom/htc/fusion/fx/FxObject;
    aget-object v5, v3, v6

    check-cast v5, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 90
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 91
    aget-object v5, v3, v7

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 92
    aget-object v5, v3, v8

    check-cast v5, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mEmptyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 93
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, emptyMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mEmptyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v5, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 95
    aget-object v5, v3, v9

    check-cast v5, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 96
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v5, :cond_1

    .line 97
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 99
    :cond_1
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 100
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 101
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitboxTapListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v5, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 102
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 103
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onContentChanged()V

    .line 135
    return-void
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 53
    invoke-super {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onCreate()V

    .line 55
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v2

    .line 56
    .local v2, host:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 57
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "ListViewViewPort"

    aput-object v5, v0, v6

    const-string v5, "timeline.main_page"

    aput-object v5, v0, v7

    const-string v5, "textlabel.empty_page"

    aput-object v5, v0, v8

    const-string v5, "app.hitbox"

    aput-object v5, v0, v9

    .line 58
    .local v0, controlNames:[Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    .line 59
    .local v3, objects:[Lcom/htc/fusion/fx/FxObject;
    aget-object v5, v3, v6

    check-cast v5, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 60
    aget-object v5, v3, v7

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 61
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 62
    aget-object v5, v3, v8

    check-cast v5, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mEmptyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 63
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, emptyMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mEmptyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v5, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 65
    aget-object v5, v3, v9

    check-cast v5, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 67
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v5, :cond_0

    .line 68
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 70
    :cond_0
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 71
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 72
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitboxTapListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v5, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 73
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 111
    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->setContent(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v0

    .line 116
    .local v0, host:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    if-eqz p1, :cond_0

    move-object v1, p1

    .line 117
    check-cast v1, Ljava/util/ArrayList;

    .line 118
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, nextState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->createState(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v2

    .line 126
    :goto_0
    invoke-interface {v2, v1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->setContent(Ljava/lang/Object;)V

    .line 127
    invoke-interface {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->setState(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    .line 131
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    .end local v2           #nextState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    :cond_0
    return-void

    .line 124
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    .restart local v2       #nextState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    :cond_1
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->createState(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v2

    goto :goto_0
.end method
