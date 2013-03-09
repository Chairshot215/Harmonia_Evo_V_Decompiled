.class public Lcom/htc/launcher/WidgetsManager;
.super Ljava/lang/Object;
.source "WidgetsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Widget"

.field private static final localLOGV:Z


# instance fields
.field private mAddAdapter:Lcom/htc/launcher/AddAdapter;

.field private mAreWidgetsPaused:Z

.field private mWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/htc/launcher/WidgetPackageManager;->instanceNoScan()Lcom/htc/launcher/WidgetPackageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/launcher/WidgetsManager;->mWidgets:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/WidgetsManager;->mAreWidgetsPaused:Z

    .line 82
    return-void
.end method

.method private notifyAllWidgets()V
    .locals 7

    .prologue
    .line 204
    iget-object v5, p0, Lcom/htc/launcher/WidgetsManager;->mWidgets:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/launcher/WidgetProxy;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/launcher/WidgetProxy;

    .line 205
    .local v4, widgets:[Lcom/htc/launcher/WidgetProxy;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/launcher/WidgetProxy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 206
    .local v3, widget:Lcom/htc/launcher/WidgetProxy;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    if-eqz v5, :cond_0

    iget-boolean v5, v3, Lcom/htc/launcher/WidgetProxy;->isAddedConfirmed:Z

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v5}, Lcom/htc/home/WidgetVisibilityObserver;->getNotifyType()I

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    .line 205
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_1
    iget-object v5, v3, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    const/16 v6, 0x14

    invoke-interface {v5, v6}, Lcom/htc/home/WidgetVisibilityObserver;->fireOnResume(I)V

    goto :goto_1

    .line 213
    .end local v3           #widget:Lcom/htc/launcher/WidgetProxy;
    :cond_2
    return-void
.end method

.method private notifyWidgets(II)V
    .locals 8
    .parameter "screen1"
    .parameter "screen2"

    .prologue
    const/16 v7, 0x14

    .line 188
    iget-object v5, p0, Lcom/htc/launcher/WidgetsManager;->mWidgets:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/launcher/WidgetProxy;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/launcher/WidgetProxy;

    .line 189
    .local v4, widgets:[Lcom/htc/launcher/WidgetProxy;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/launcher/WidgetProxy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 190
    .local v3, widget:Lcom/htc/launcher/WidgetProxy;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    if-eqz v5, :cond_0

    iget-boolean v5, v3, Lcom/htc/launcher/WidgetProxy;->isAddedConfirmed:Z

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v5}, Lcom/htc/home/WidgetVisibilityObserver;->getNotifyType()I

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    .line 189
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v3}, Lcom/htc/launcher/WidgetProxy;->getScreen()I

    move-result v5

    if-eq v5, p1, :cond_2

    invoke-virtual {v3}, Lcom/htc/launcher/WidgetProxy;->getScreen()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 196
    :cond_2
    iget-object v5, v3, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v5, v7}, Lcom/htc/home/WidgetVisibilityObserver;->fireOnResume(I)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v5, v3, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v5, v7}, Lcom/htc/home/WidgetVisibilityObserver;->fireOnPause(I)V

    goto :goto_1

    .line 201
    .end local v3           #widget:Lcom/htc/launcher/WidgetProxy;
    :cond_4
    return-void
.end method

.method private onOrientationChangedFast(Lcom/htc/launcher/WidgetProxy;I)V
    .locals 2
    .parameter "widget"
    .parameter "orientation"

    .prologue
    .line 358
    invoke-virtual {p1}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v0

    .line 359
    .local v0, widgetView:Lcom/htc/home/WidgetViewInterface;
    instance-of v1, v0, Lcom/htc/home/AbstractWidgetView;

    if-eqz v1, :cond_0

    .line 360
    check-cast v0, Lcom/htc/home/AbstractWidgetView;

    .end local v0           #widgetView:Lcom/htc/home/WidgetViewInterface;
    invoke-virtual {v0, p2}, Lcom/htc/home/AbstractWidgetView;->onOrientationChanged(I)V

    .line 362
    :cond_0
    return-void
.end method

.method private onOrientationChangedLegacy(Lcom/htc/launcher/WidgetProxy;Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;)V
    .locals 12
    .parameter "widget"
    .parameter "launcher"
    .parameter "workspace"

    .prologue
    const/4 v8, 0x0

    .line 365
    const-string v0, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run in legacy orientation - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/launcher/WidgetProxy;->onActivityDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    iget-object v9, p1, Lcom/htc/launcher/WidgetProxy;->mView:Landroid/view/View;

    .line 372
    .local v9, childView:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 373
    .local v10, parentView:Landroid/view/ViewGroup;
    if-eqz v10, :cond_0

    .line 374
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 377
    :cond_0
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {p3, v0}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v0, v8}, Lcom/htc/launcher/WidgetProxy;->inflate(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 379
    .local v1, view2:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p2}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    iget v3, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    iget v4, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v5, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v6, p1, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v7, p1, Lcom/htc/launcher/ItemInfo;->spanY:I

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/launcher/DesktopItemController;->addLegacyItemToDesktop(Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V

    .line 387
    return-void

    .line 368
    .end local v1           #view2:Landroid/view/View;
    .end local v9           #childView:Landroid/view/View;
    .end local v10           #parentView:Landroid/view/ViewGroup;
    :catch_0
    move-exception v11

    .line 369
    .local v11, th:Ljava/lang/Throwable;
    const-string v0, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged Error ! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addWidgetsOnWorkspace(Lcom/htc/launcher/WidgetProxy;)V
    .locals 1
    .parameter "wProxy"

    .prologue
    .line 142
    sget-object v0, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/WidgetPackageManager;->addWidgetsOnWorkspace(Lcom/htc/launcher/WidgetProxy;)V

    .line 150
    return-void
.end method

.method public fireAllVisible()V
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/htc/launcher/WidgetsManager;->mAreWidgetsPaused:Z

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/WidgetsManager;->notifyAllWidgets()V

    goto :goto_0
.end method

.method public fireVisible(I)V
    .locals 1
    .parameter "currentScreen"

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/htc/launcher/WidgetsManager;->mAreWidgetsPaused:Z

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/launcher/WidgetsManager;->notifyWidgets(II)V

    goto :goto_0
.end method

.method public listListItems(I)[Lcom/htc/launcher/AddAdapter$ListItem;
    .locals 13
    .parameter "categoryId"

    .prologue
    const/4 v12, 0x0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    iget-object v9, p0, Lcom/htc/launcher/WidgetsManager;->mWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    invoke-virtual {v9, p1}, Lcom/htc/launcher/WidgetPackageManager;->getWidgetItemList(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 102
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/WidgetItem;>;"
    new-array v9, v12, [Lcom/htc/launcher/WidgetItem;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/launcher/WidgetItem;

    .local v1, arr$:[Lcom/htc/launcher/WidgetItem;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v5, v1, v4

    .line 103
    .local v5, item:Lcom/htc/launcher/WidgetItem;
    iget-object v9, p0, Lcom/htc/launcher/WidgetsManager;->mWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    invoke-virtual {v9, v5}, Lcom/htc/launcher/WidgetPackageManager;->getWidgetCountOnWorkspace(Lcom/htc/launcher/WidgetItem;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 104
    .local v2, count:Ljava/lang/Integer;
    invoke-virtual {v5}, Lcom/htc/launcher/WidgetItem;->getMaxInstances()I

    move-result v8

    .line 105
    .local v8, maxInstance:I
    invoke-virtual {v5}, Lcom/htc/launcher/WidgetItem;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_1

    if-ltz v8, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v9, v8, :cond_1

    .line 109
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/htc/launcher/WidgetsManager;->mAddAdapter:Lcom/htc/launcher/AddAdapter;

    invoke-virtual {v5, v9}, Lcom/htc/launcher/WidgetItem;->getListItem(Lcom/htc/launcher/AddAdapter;)Lcom/htc/launcher/AddAdapter$ListItem;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v3

    .line 111
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, "Widget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail to add list item - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/htc/launcher/WidgetItem;->mPluginClassname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v9, "Widget"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 116
    .end local v2           #count:Ljava/lang/Integer;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #item:Lcom/htc/launcher/WidgetItem;
    .end local v8           #maxInstance:I
    :cond_2
    sget-boolean v9, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    if-eqz v9, :cond_3

    const-string v9, "Widget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "actions size - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_3
    new-array v9, v12, [Lcom/htc/launcher/AddAdapter$ListItem;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/htc/launcher/AddAdapter$ListItem;

    check-cast v9, [Lcom/htc/launcher/AddAdapter$ListItem;

    return-object v9
.end method

.method public onActivityDestroy()V
    .locals 13

    .prologue
    .line 322
    iget-object v9, p0, Lcom/htc/launcher/WidgetsManager;->mWidgets:Ljava/util/ArrayList;

    const/4 v10, 0x0

    new-array v10, v10, [Lcom/htc/launcher/WidgetProxy;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/htc/launcher/WidgetProxy;

    .line 323
    .local v8, widgets:[Lcom/htc/launcher/WidgetProxy;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v9, v8

    if-ge v6, v9, :cond_2

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 327
    .local v0, begin:J
    :try_start_0
    aget-object v9, v8, v6

    invoke-virtual {v9}, Lcom/htc/launcher/WidgetProxy;->onActivityDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 333
    .local v4, end:J
    sub-long v2, v4, v0

    .line 334
    .local v2, diff:J
    sget-boolean v9, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    if-eqz v9, :cond_0

    const-string v9, "Widget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onActivityDestroy() for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v6

    invoke-virtual {v11}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", diff = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 328
    .end local v2           #diff:J
    .end local v4           #end:J
    :catch_0
    move-exception v7

    .line 330
    .local v7, th:Ljava/lang/Throwable;
    :try_start_1
    const-string v9, "Widget"

    const-string v10, "onActivityDestroy Error !"

    invoke-static {v9, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 333
    .restart local v4       #end:J
    sub-long v2, v4, v0

    .line 334
    .restart local v2       #diff:J
    sget-boolean v9, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    if-eqz v9, :cond_0

    const-string v9, "Widget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onActivityDestroy() for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v6

    invoke-virtual {v11}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", diff = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 332
    .end local v2           #diff:J
    .end local v4           #end:J
    .end local v7           #th:Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 333
    .restart local v4       #end:J
    sub-long v2, v4, v0

    .line 334
    .restart local v2       #diff:J
    sget-boolean v10, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    if-eqz v10, :cond_1

    const-string v10, "Widget"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onActivityDestroy() for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v8, v6

    invoke-virtual {v12}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", diff = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1
    throw v9

    .line 337
    .end local v0           #begin:J
    .end local v2           #diff:J
    .end local v4           #end:J
    :cond_2
    return-void
.end method

.method public onActivityNewIntent(Lcom/htc/launcher/Launcher;)V
    .locals 7
    .parameter "launcher"

    .prologue
    .line 289
    iget-object v5, p0, Lcom/htc/launcher/WidgetsManager;->mWidgets:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/launcher/WidgetProxy;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/launcher/WidgetProxy;

    .line 290
    .local v4, widgets:[Lcom/htc/launcher/WidgetProxy;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/launcher/WidgetProxy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 291
    .local v3, widget:Lcom/htc/launcher/WidgetProxy;
    iget-object v5, v3, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    if-nez v5, :cond_1

    .line 290
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    iget-object v5, v3, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v5}, Lcom/htc/home/WidgetVisibilityObserver;->getNotifyType()I

    move-result v5

    const/16 v6, 0x32

    if-ne v5, v6, :cond_0

    .line 296
    iget-object v5, v3, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    const/16 v6, 0x3c

    invoke-interface {v5, v6}, Lcom/htc/home/WidgetVisibilityObserver;->fireOnNewIntent(I)V

    goto :goto_1

    .line 299
    .end local v3           #widget:Lcom/htc/launcher/WidgetProxy;
    :cond_2
    return-void
.end method

.method public onActivityPause(Lcom/htc/launcher/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 285
    const/16 v0, 0x1e

    invoke-virtual {p0, p1, v0}, Lcom/htc/launcher/WidgetsManager;->onActivityPause(Lcom/htc/launcher/Launcher;I)V

    .line 286
    return-void
.end method

.method public onActivityPause(Lcom/htc/launcher/Launcher;I)V
    .locals 11
    .parameter "launcher"
    .parameter "notifyCause"

    .prologue
    const/16 v10, 0x32

    .line 256
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/launcher/WidgetsManager;->mAreWidgetsPaused:Z

    .line 257
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v6

    .line 258
    .local v6, workspace:Lcom/htc/launcher/Workspace;
    if-nez v6, :cond_1

    .line 282
    :cond_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v1

    .line 262
    .local v1, currentScreen:I
    sget-boolean v7, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    if-eqz v7, :cond_2

    const-string v7, "Widget"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityPause currentScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_2
    iget-object v7, p0, Lcom/htc/launcher/WidgetsManager;->mWidgets:Ljava/util/ArrayList;

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/htc/launcher/WidgetProxy;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/launcher/WidgetProxy;

    .line 264
    .local v5, widgets:[Lcom/htc/launcher/WidgetProxy;
    move-object v0, v5

    .local v0, arr$:[Lcom/htc/launcher/WidgetProxy;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 265
    .local v4, widget:Lcom/htc/launcher/WidgetProxy;
    iget-object v7, v4, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    if-nez v7, :cond_4

    .line 264
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_4
    if-ne p2, v10, :cond_5

    .line 271
    invoke-virtual {v4}, Lcom/htc/launcher/WidgetProxy;->getScreen()I

    move-result v7

    if-ne v7, v1, :cond_3

    iget-object v7, v4, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v7}, Lcom/htc/home/WidgetVisibilityObserver;->getNotifyType()I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 272
    iget-object v7, v4, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v7, p2}, Lcom/htc/home/WidgetVisibilityObserver;->fireOnPause(I)V

    goto :goto_1

    .line 276
    :cond_5
    invoke-virtual {v4}, Lcom/htc/launcher/WidgetProxy;->getScreen()I

    move-result v7

    if-eq v7, v1, :cond_6

    iget-object v7, v4, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v7}, Lcom/htc/home/WidgetVisibilityObserver;->getNotifyType()I

    move-result v7

    const/16 v8, 0x28

    if-eq v7, v8, :cond_6

    iget-object v7, v4, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v7}, Lcom/htc/home/WidgetVisibilityObserver;->getNotifyType()I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 279
    :cond_6
    iget-object v7, v4, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v7, p2}, Lcom/htc/home/WidgetVisibilityObserver;->fireOnPause(I)V

    goto :goto_1
.end method

.method public onActivityResume(Lcom/htc/launcher/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 252
    const/16 v0, 0x1e

    invoke-virtual {p0, p1, v0}, Lcom/htc/launcher/WidgetsManager;->onActivityResume(Lcom/htc/launcher/Launcher;I)V

    .line 253
    return-void
.end method

.method public onActivityResume(Lcom/htc/launcher/Launcher;I)V
    .locals 12
    .parameter "launcher"
    .parameter "notifyCause"

    .prologue
    const/16 v11, 0x32

    const/4 v10, 0x0

    .line 216
    iput-boolean v10, p0, Lcom/htc/launcher/WidgetsManager;->mAreWidgetsPaused:Z

    .line 219
    if-nez p1, :cond_1

    .line 249
    :cond_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v6

    .line 223
    .local v6, workspace:Lcom/htc/launcher/Workspace;
    if-eqz v6, :cond_0

    .line 227
    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v1

    .line 228
    .local v1, currentScreen:I
    sget-boolean v7, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    if-eqz v7, :cond_2

    const-string v7, "Widget"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResume currentScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    iget-object v7, p0, Lcom/htc/launcher/WidgetsManager;->mWidgets:Ljava/util/ArrayList;

    new-array v8, v10, [Lcom/htc/launcher/WidgetProxy;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/launcher/WidgetProxy;

    .line 230
    .local v5, widgets:[Lcom/htc/launcher/WidgetProxy;
    move-object v0, v5

    .local v0, arr$:[Lcom/htc/launcher/WidgetProxy;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 231
    .local v4, widget:Lcom/htc/launcher/WidgetProxy;
    iget-object v7, v4, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    if-eqz v7, :cond_3

    iget-boolean v7, v4, Lcom/htc/launcher/WidgetProxy;->isAddedConfirmed:Z

    if-nez v7, :cond_4

    .line 230
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_4
    if-ne p2, v11, :cond_5

    .line 239
    invoke-virtual {v4}, Lcom/htc/launcher/WidgetProxy;->getScreen()I

    move-result v7

    if-ne v7, v1, :cond_3

    iget-object v7, v4, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v7}, Lcom/htc/home/WidgetVisibilityObserver;->getNotifyType()I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 240
    iget-object v7, v4, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v7, p2}, Lcom/htc/home/WidgetVisibilityObserver;->fireOnResume(I)V

    goto :goto_1

    .line 244
    :cond_5
    invoke-virtual {v4}, Lcom/htc/launcher/WidgetProxy;->getScreen()I

    move-result v7

    if-eq v7, v1, :cond_6

    iget-object v7, v4, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v7}, Lcom/htc/home/WidgetVisibilityObserver;->getNotifyType()I

    move-result v7

    const/16 v8, 0x28

    if-ne v7, v8, :cond_3

    .line 246
    :cond_6
    iget-object v7, v4, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v7, p2}, Lcom/htc/home/WidgetVisibilityObserver;->fireOnResume(I)V

    goto :goto_1
.end method

.method public onDestory()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onOrientationChanged(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;IIZ)V
    .locals 18
    .parameter "launcher"
    .parameter "workspace"
    .parameter "orientation"
    .parameter "screen"
    .parameter "screenOnly"

    .prologue
    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/launcher/WidgetsManager;->mWidgets:Ljava/util/ArrayList;

    const/4 v15, 0x0

    new-array v15, v15, [Lcom/htc/launcher/WidgetProxy;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/htc/launcher/WidgetProxy;

    .line 392
    .local v13, widgets:[Lcom/htc/launcher/WidgetProxy;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v14, v13

    if-ge v9, v14, :cond_7

    .line 393
    if-eqz p5, :cond_0

    aget-object v14, v13, v9

    iget v14, v14, Lcom/htc/launcher/ItemInfo;->screen:I

    move/from16 v0, p4

    if-ne v14, v0, :cond_1

    :cond_0
    if-nez p5, :cond_2

    aget-object v14, v13, v9

    iget v14, v14, Lcom/htc/launcher/ItemInfo;->screen:I

    move/from16 v0, p4

    if-ne v14, v0, :cond_2

    .line 392
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 398
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 400
    .local v3, begin:J
    :try_start_0
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v15, 0x5a

    if-eq v14, v15, :cond_3

    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v15, 0xa8

    if-ne v14, v15, :cond_4

    .line 402
    :cond_3
    aget-object v14, v13, v9

    iget-object v12, v14, Lcom/htc/launcher/WidgetProxy;->mView:Landroid/view/View;

    .line 403
    .local v12, v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .end local v12           #v:Landroid/view/View;
    check-cast v12, Landroid/view/View;

    .line 404
    .restart local v12       #v:Landroid/view/View;
    if-eqz v12, :cond_4

    const v14, 0x7f07001e

    invoke-virtual {v12, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 406
    invoke-virtual/range {p2 .. p2}, Lcom/htc/launcher/Workspace;->getFakeCellPadding()I

    move-result v10

    .line 407
    .local v10, padding:I
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v10, v14, v10, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 410
    .end local v10           #padding:I
    .end local v12           #v:Landroid/view/View;
    :cond_4
    aget-object v14, v13, v9

    invoke-virtual {v14}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v14

    instance-of v14, v14, Lcom/htc/home/LegacyOrientation;

    if-eqz v14, :cond_5

    .line 412
    aget-object v14, v13, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v14, v1, v2}, Lcom/htc/launcher/WidgetsManager;->onOrientationChangedLegacy(Lcom/htc/launcher/WidgetProxy;Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 421
    .local v7, end:J
    sub-long v5, v7, v3

    .line 422
    .local v5, diff:J
    sget-object v14, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    aget-object v15, v13, v9

    invoke-virtual {v15}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v15

    invoke-virtual {v14, v15, v5, v6}, Lcom/htc/launcher/OrientationMonitor;->addOnConfigurationChanged(Ljava/lang/Object;J)V

    .line 424
    sget-boolean v14, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    if-eqz v14, :cond_1

    const-string v14, "Widget"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onOrientationChanged() for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v9

    invoke-virtual/range {v16 .. v16}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", diff = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 414
    .end local v5           #diff:J
    .end local v7           #end:J
    :cond_5
    :try_start_1
    aget-object v14, v13, v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v14, v1}, Lcom/htc/launcher/WidgetsManager;->onOrientationChangedFast(Lcom/htc/launcher/WidgetProxy;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 416
    :catch_0
    move-exception v11

    .line 418
    .local v11, th:Ljava/lang/Throwable;
    :try_start_2
    const-string v14, "Widget"

    const-string v15, "onOrientationChanged Error !"

    invoke-static {v14, v15, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 421
    .restart local v7       #end:J
    sub-long v5, v7, v3

    .line 422
    .restart local v5       #diff:J
    sget-object v14, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    aget-object v15, v13, v9

    invoke-virtual {v15}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v15

    invoke-virtual {v14, v15, v5, v6}, Lcom/htc/launcher/OrientationMonitor;->addOnConfigurationChanged(Ljava/lang/Object;J)V

    .line 424
    sget-boolean v14, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    if-eqz v14, :cond_1

    const-string v14, "Widget"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onOrientationChanged() for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v9

    invoke-virtual/range {v16 .. v16}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", diff = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 420
    .end local v5           #diff:J
    .end local v7           #end:J
    .end local v11           #th:Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 421
    .restart local v7       #end:J
    sub-long v5, v7, v3

    .line 422
    .restart local v5       #diff:J
    sget-object v15, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    aget-object v16, v13, v9

    invoke-virtual/range {v16 .. v16}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5, v6}, Lcom/htc/launcher/OrientationMonitor;->addOnConfigurationChanged(Ljava/lang/Object;J)V

    .line 424
    sget-boolean v15, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    if-eqz v15, :cond_6

    const-string v15, "Widget"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onOrientationChanged() for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v13, v9

    invoke-virtual/range {v17 .. v17}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", diff = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_6
    throw v14

    .line 427
    .end local v3           #begin:J
    .end local v5           #diff:J
    .end local v7           #end:J
    :cond_7
    return-void
.end method

.method public refreshContents()V
    .locals 13

    .prologue
    .line 340
    iget-object v9, p0, Lcom/htc/launcher/WidgetsManager;->mWidgets:Ljava/util/ArrayList;

    const/4 v10, 0x0

    new-array v10, v10, [Lcom/htc/launcher/WidgetProxy;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/htc/launcher/WidgetProxy;

    .line 341
    .local v8, widgets:[Lcom/htc/launcher/WidgetProxy;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v9, v8

    if-ge v6, v9, :cond_2

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 345
    .local v0, begin:J
    :try_start_0
    aget-object v9, v8, v6

    invoke-virtual {v9}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v9

    check-cast v9, Lcom/htc/home/AbstractWidgetView;

    invoke-virtual {v9}, Lcom/htc/home/AbstractWidgetView;->refreshContents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 351
    .local v4, end:J
    sub-long v2, v4, v0

    .line 352
    .local v2, diff:J
    sget-boolean v9, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    if-eqz v9, :cond_0

    const-string v9, "Widget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "refreshContents() for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v6

    invoke-virtual {v11}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", diff = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 346
    .end local v2           #diff:J
    .end local v4           #end:J
    :catch_0
    move-exception v7

    .line 348
    .local v7, th:Ljava/lang/Throwable;
    :try_start_1
    const-string v9, "Widget"

    const-string v10, "onActivityDestroy Error !"

    invoke-static {v9, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 351
    .restart local v4       #end:J
    sub-long v2, v4, v0

    .line 352
    .restart local v2       #diff:J
    sget-boolean v9, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    if-eqz v9, :cond_0

    const-string v9, "Widget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "refreshContents() for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v6

    invoke-virtual {v11}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", diff = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 350
    .end local v2           #diff:J
    .end local v4           #end:J
    .end local v7           #th:Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 351
    .restart local v4       #end:J
    sub-long v2, v4, v0

    .line 352
    .restart local v2       #diff:J
    sget-boolean v10, Lcom/htc/launcher/WidgetsManager;->localLOGV:Z

    if-eqz v10, :cond_1

    const-string v10, "Widget"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "refreshContents() for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v8, v6

    invoke-virtual {v12}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", diff = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1
    throw v9

    .line 355
    .end local v0           #begin:J
    .end local v2           #diff:J
    .end local v4           #end:J
    :cond_2
    return-void
.end method

.method public removeWidgetsOnWorkspace(Lcom/htc/launcher/WidgetProxy;)V
    .locals 1
    .parameter "wProxy"

    .prologue
    .line 153
    sget-object v0, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/WidgetPackageManager;->removeWidgetsOnWorkspace(Lcom/htc/launcher/WidgetProxy;)V

    .line 161
    return-void
.end method

.method public setAddAdapter(Lcom/htc/launcher/AddAdapter;)V
    .locals 0
    .parameter "addAdapter"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/launcher/WidgetsManager;->mAddAdapter:Lcom/htc/launcher/AddAdapter;

    .line 96
    return-void
.end method

.method public setWidgetPackageManager(Lcom/htc/launcher/WidgetPackageManager;)V
    .locals 0
    .parameter "widgetPackageManager"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/launcher/WidgetsManager;->mWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    .line 92
    return-void
.end method
