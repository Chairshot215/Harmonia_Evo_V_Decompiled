.class public Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;
.super Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;
.source "LoadingState.java"


# instance fields
.field private mEmptyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method private constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V
    .locals 0
    .parameter "base"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    .line 21
    return-void
.end method

.method public static createState(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    .locals 2
    .parameter "host"

    .prologue
    .line 87
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;

    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;

    invoke-direct {v1, p0}, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)V

    invoke-direct {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;-><init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "LoadingState"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfiguration"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v2

    .line 41
    .local v2, host:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 42
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "timeline.main_page"

    aput-object v5, v0, v6

    const-string v5, "textlabel.empty_page"

    aput-object v5, v0, v7

    .line 43
    .local v0, controlNames:[Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    .line 44
    .local v3, objects:[Lcom/htc/fusion/fx/FxObject;
    aget-object v5, v3, v6

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 45
    aget-object v5, v3, v7

    check-cast v5, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->mEmptyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 46
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, emptyMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->mEmptyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v5, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 48
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 49
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onContentChanged()V

    .line 75
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 24
    invoke-super {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->onCreate()V

    .line 26
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v2

    .line 27
    .local v2, host:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 28
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "timeline.main_page"

    aput-object v5, v0, v6

    const-string v5, "textlabel.empty_page"

    aput-object v5, v0, v7

    .line 29
    .local v0, controlNames:[Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    .line 30
    .local v3, objects:[Lcom/htc/fusion/fx/FxObject;
    aget-object v5, v3, v6

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 31
    aget-object v5, v3, v7

    check-cast v5, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->mEmptyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 32
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, emptyMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->mEmptyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v5, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 34
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 35
    return-void
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->setContent(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v0

    .line 54
    .local v0, host:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    if-eqz p1, :cond_1

    move-object v1, p1

    .line 55
    check-cast v1, Ljava/util/ArrayList;

    .line 56
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, nextState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;->createState(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v2

    .line 64
    :goto_0
    invoke-interface {v2, v1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->setContent(Ljava/lang/Object;)V

    .line 65
    invoke-interface {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->setState(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    .line 71
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    .end local v2           #nextState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    :goto_1
    return-void

    .line 62
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    .restart local v2       #nextState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    :cond_0
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;->createState(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v2

    goto :goto_0

    .line 70
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    .end local v2           #nextState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    :cond_1
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->createState(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->setState(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    goto :goto_1
.end method
