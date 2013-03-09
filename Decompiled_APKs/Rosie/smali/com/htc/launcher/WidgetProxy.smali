.class public Lcom/htc/launcher/WidgetProxy;
.super Lcom/htc/launcher/Widget;
.source "WidgetProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Widget"

.field private static final localLOGV:Z


# instance fields
.field public isAddedConfirmed:Z

.field private mClientWidgetItem:Lcom/htc/home/WidgetItemInterface;

.field private mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

.field private mRefLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field mView:Landroid/view/View;

.field public mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

.field private mWidgetHostHandle:Lcom/htc/launcher/WidgetHostHandle;

.field private mWidgetItem:Lcom/htc/launcher/WidgetItem;

.field private mWidgetPackage:Lcom/htc/launcher/WidgetPackage;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/WidgetItem;Lcom/htc/home/WidgetItemInterface;)V
    .locals 8
    .parameter "widgetItem"
    .parameter "clientWidgetItem"

    .prologue
    const/4 v7, 0x0

    .line 43
    invoke-direct {p0}, Lcom/htc/launcher/Widget;-><init>()V

    .line 38
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/launcher/WidgetProxy;->isAddedConfirmed:Z

    .line 40
    iput-object v7, p0, Lcom/htc/launcher/WidgetProxy;->mView:Landroid/view/View;

    .line 44
    iput-object p1, p0, Lcom/htc/launcher/WidgetProxy;->mWidgetItem:Lcom/htc/launcher/WidgetItem;

    .line 45
    iput-object p2, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetItem:Lcom/htc/home/WidgetItemInterface;

    .line 46
    invoke-static {}, Lcom/htc/launcher/WidgetPackageManager;->instanceNoScan()Lcom/htc/launcher/WidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/launcher/WidgetProxy;->mWidgetItem:Lcom/htc/launcher/WidgetItem;

    iget-object v6, v6, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/htc/launcher/WidgetPackageManager;->getWidgetPackage(Ljava/lang/String;Landroid/content/Context;)Lcom/htc/launcher/WidgetPackage;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mWidgetPackage:Lcom/htc/launcher/WidgetPackage;

    .line 47
    iget v5, p1, Lcom/htc/launcher/WidgetItem;->mItemType:I

    iput v5, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    .local v0, begin:J
    :try_start_0
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetItem:Lcom/htc/home/WidgetItemInterface;

    invoke-interface {v5}, Lcom/htc/home/WidgetItemInterface;->createWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    .line 55
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    instance-of v5, v5, Lcom/htc/home/WidgetVisibilityObserver;

    if-eqz v5, :cond_0

    .line 56
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    check-cast v5, Lcom/htc/home/WidgetVisibilityObserver;

    iput-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    .local v2, end:J
    sub-long v5, v2, v0

    .line 67
    :goto_0
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    if-nez v5, :cond_1

    .line 69
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "return null when createWidgetView"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 58
    .end local v2           #end:J
    :catch_0
    move-exception v4

    .line 60
    .local v4, th:Ljava/lang/Throwable;
    :try_start_1
    const-string v5, "Widget"

    const-string v6, "onLayoutInflated Error !"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    .restart local v2       #end:J
    sub-long v5, v2, v0

    .line 65
    goto :goto_0

    .line 62
    .end local v2           #end:J
    .end local v4           #th:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    .restart local v2       #end:J
    sub-long v6, v2, v0

    .line 65
    throw v5

    .line 72
    :cond_1
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    invoke-interface {v5}, Lcom/htc/home/WidgetViewInterface;->getSpanX()I

    move-result v5

    iput v5, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 73
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    invoke-interface {v5}, Lcom/htc/home/WidgetViewInterface;->getSpanY()I

    move-result v5

    iput v5, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 74
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    invoke-interface {v5}, Lcom/htc/home/WidgetViewInterface;->getLayoutResource()I

    move-result v5

    iput v5, p0, Lcom/htc/launcher/Widget;->layoutResource:I

    .line 75
    return-void
.end method

.method private onLayoutInflated(Lcom/htc/launcher/Launcher;Landroid/view/View;Landroid/content/Intent;)V
    .locals 8
    .parameter "activity"
    .parameter "view"
    .parameter "backIntent"

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->isLauncherDestroyed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    .local v0, begin:J
    :try_start_0
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mWidgetHostHandle:Lcom/htc/launcher/WidgetHostHandle;

    if-nez v5, :cond_1

    .line 90
    new-instance v5, Lcom/htc/launcher/WidgetHostHandle;

    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/htc/launcher/WidgetHostHandle;-><init>(Lcom/htc/launcher/Widget;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mWidgetHostHandle:Lcom/htc/launcher/WidgetHostHandle;

    .line 92
    :cond_1
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mWidgetHostHandle:Lcom/htc/launcher/WidgetHostHandle;

    invoke-virtual {v5, p1}, Lcom/htc/launcher/WidgetHostHandle;->attachActivity(Landroid/app/Activity;)V

    .line 93
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    iget-object v6, p0, Lcom/htc/launcher/WidgetProxy;->mWidgetHostHandle:Lcom/htc/launcher/WidgetHostHandle;

    invoke-interface {v5, v6}, Lcom/htc/home/WidgetViewInterface;->setHost(Lcom/htc/home/HostInterface;)V

    .line 94
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    iget-object v6, p0, Lcom/htc/launcher/WidgetProxy;->mWidgetHostHandle:Lcom/htc/launcher/WidgetHostHandle;

    invoke-interface {v5, v6}, Lcom/htc/home/WidgetViewInterface;->setHostActivity(Lcom/htc/home/HostActivity;)V

    .line 97
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mRefLauncher:Ljava/lang/ref/WeakReference;

    .line 98
    iput-object p2, p0, Lcom/htc/launcher/WidgetProxy;->mView:Landroid/view/View;

    .line 99
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    iget-wide v6, p0, Lcom/htc/launcher/ItemInfo;->id:J

    long-to-int v6, v6

    add-int/lit16 v6, v6, 0x2710

    invoke-interface {v5, p2, v6, p3}, Lcom/htc/home/WidgetViewInterface;->onLayoutInflated(Landroid/view/View;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 105
    .local v2, end:J
    sub-long v5, v2, v0

    .line 109
    :goto_1
    iget-object v5, p1, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    invoke-virtual {v5, p0}, Lcom/htc/launcher/WidgetsManager;->addWidgetsOnWorkspace(Lcom/htc/launcher/WidgetProxy;)V

    goto :goto_0

    .line 100
    .end local v2           #end:J
    :catch_0
    move-exception v4

    .line 102
    .local v4, th:Ljava/lang/Throwable;
    :try_start_1
    const-string v5, "Widget"

    const-string v6, "onLayoutInflated Error !"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 105
    .restart local v2       #end:J
    sub-long v5, v2, v0

    .line 107
    goto :goto_1

    .line 104
    .end local v2           #end:J
    .end local v4           #th:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 105
    .restart local v2       #end:J
    sub-long v6, v2, v0

    .line 107
    throw v5
.end method


# virtual methods
.method public editItem()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public fireOnResume()V
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/WidgetProxy;->isAddedConfirmed:Z

    .line 167
    iget-object v0, p0, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/htc/home/WidgetVisibilityObserver;->fireOnResume(I)V

    .line 168
    return-void
.end method

.method public getItemName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    invoke-static {}, Lcom/htc/launcher/WidgetPackageManager;->instanceNoScan()Lcom/htc/launcher/WidgetPackageManager;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Lcom/htc/launcher/WidgetPackageManager;->getWidgetItem(I)Lcom/htc/launcher/WidgetItem;

    move-result-object v1

    iget-object v0, v1, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    .line 247
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetItem:Lcom/htc/home/WidgetItemInterface;

    invoke-interface {v0}, Lcom/htc/home/WidgetItemInterface;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    invoke-static {}, Lcom/htc/launcher/WidgetPackageManager;->instanceNoScan()Lcom/htc/launcher/WidgetPackageManager;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Lcom/htc/launcher/WidgetPackageManager;->getWidgetItem(I)Lcom/htc/launcher/WidgetItem;

    move-result-object v1

    iget-object v0, v1, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    .line 253
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getScreen()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    return v0
.end method

.method public getSettingIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v0}, Lcom/htc/home/WidgetVisibilityObserver;->getSettingIntent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUlog()Ljava/lang/String;
    .locals 4

    .prologue
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/launcher/WidgetPackageManager;->instanceNoScan()Lcom/htc/launcher/WidgetPackageManager;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    invoke-virtual {v2, v3}, Lcom/htc/launcher/WidgetPackageManager;->getWidgetItem(I)Lcom/htc/launcher/WidgetItem;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", htcwidget"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    sget v2, Lcom/htc/launcher/WidgetProxy;->max_screen:I

    if-le v1, v2, :cond_1

    .line 267
    :cond_0
    const-string v0, ""

    .line 269
    :cond_1
    return-object v0
.end method

.method public getWidgetItem()Lcom/htc/launcher/WidgetItem;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/launcher/WidgetProxy;->mWidgetItem:Lcom/htc/launcher/WidgetItem;

    return-object v0
.end method

.method public getWidgetView()Lcom/htc/home/WidgetViewInterface;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    return-object v0
.end method

.method public inflate(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;Landroid/content/Intent;)Landroid/view/View;
    .locals 9
    .parameter "activity"
    .parameter "root"
    .parameter "backIntent"

    .prologue
    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 148
    .local v0, begin:J
    :try_start_0
    iget-object v6, p0, Lcom/htc/launcher/WidgetProxy;->mWidgetPackage:Lcom/htc/launcher/WidgetPackage;

    invoke-virtual {v6}, Lcom/htc/launcher/WidgetPackage;->getLayoutInflater()Lcom/htc/launcher/WidgetLayoutInfalter;

    move-result-object v4

    .line 150
    .local v4, inflater:Lcom/htc/launcher/WidgetLayoutInfalter;
    iget v6, p0, Lcom/htc/launcher/Widget;->layoutResource:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, p2, v7}, Lcom/htc/launcher/WidgetLayoutInfalter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 151
    .local v5, view:Landroid/view/View;
    invoke-direct {p0, p1, v5, p3}, Lcom/htc/launcher/WidgetProxy;->onLayoutInflated(Lcom/htc/launcher/Launcher;Landroid/view/View;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 157
    .local v2, end:J
    sub-long v6, v2, v0

    .line 159
    return-object v5

    .line 156
    .end local v2           #end:J
    .end local v4           #inflater:Lcom/htc/launcher/WidgetLayoutInfalter;
    .end local v5           #view:Landroid/view/View;
    :catchall_0
    move-exception v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 157
    .restart local v2       #end:J
    sub-long v7, v2, v0

    .line 159
    throw v6
.end method

.method public inflate(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 9
    .parameter "activity"
    .parameter "root"
    .parameter "attachToRoot"

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    .local v0, begin:J
    :try_start_0
    iget-object v6, p0, Lcom/htc/launcher/WidgetProxy;->mWidgetPackage:Lcom/htc/launcher/WidgetPackage;

    invoke-virtual {v6}, Lcom/htc/launcher/WidgetPackage;->getLayoutInflater()Lcom/htc/launcher/WidgetLayoutInfalter;

    move-result-object v4

    .line 188
    .local v4, inflater:Lcom/htc/launcher/WidgetLayoutInfalter;
    iget v6, p0, Lcom/htc/launcher/Widget;->layoutResource:I

    invoke-virtual {v4, v6, p2, p3}, Lcom/htc/launcher/WidgetLayoutInfalter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 189
    .local v5, view:Landroid/view/View;
    const/4 v6, 0x0

    invoke-direct {p0, p1, v5, v6}, Lcom/htc/launcher/WidgetProxy;->onLayoutInflated(Lcom/htc/launcher/Launcher;Landroid/view/View;Landroid/content/Intent;)V

    .line 192
    iget-object v6, p0, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    if-eqz v6, :cond_0

    .line 193
    iget-object v6, p0, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    invoke-interface {v6}, Lcom/htc/home/WidgetVisibilityObserver;->getNotifyType()I

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_1

    .line 201
    :cond_0
    :goto_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/launcher/WidgetProxy;->isAddedConfirmed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 205
    .local v2, end:J
    sub-long v6, v2, v0

    .line 207
    return-object v5

    .line 195
    .end local v2           #end:J
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v6

    iget v7, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    if-ne v6, v7, :cond_2

    .line 196
    iget-object v6, p0, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    const/16 v7, 0xa

    invoke-interface {v6, v7}, Lcom/htc/home/WidgetVisibilityObserver;->fireOnResume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    .end local v4           #inflater:Lcom/htc/launcher/WidgetLayoutInfalter;
    .end local v5           #view:Landroid/view/View;
    :catchall_0
    move-exception v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 205
    .restart local v2       #end:J
    sub-long v7, v2, v0

    .line 207
    throw v6

    .line 198
    .end local v2           #end:J
    .restart local v4       #inflater:Lcom/htc/launcher/WidgetLayoutInfalter;
    .restart local v5       #view:Landroid/view/View;
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    const/16 v7, 0xa

    invoke-interface {v6, v7}, Lcom/htc/home/WidgetVisibilityObserver;->fireOnPause(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isItemEditable()Z
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/htc/launcher/WidgetProxy;->getSettingIntent()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, setting:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/WidgetProxy;->isAddedConfirmed:Z

    .line 221
    iget-object v0, p0, Lcom/htc/launcher/WidgetProxy;->mRefLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    invoke-interface {v0}, Lcom/htc/home/WidgetViewInterface;->onActivityDestroy()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/WidgetProxy;->mRefLauncher:Ljava/lang/ref/WeakReference;

    .line 226
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/home/WidgetViewInterface;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 215
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "Widget"

    const-string v2, "onActivityResult Error !"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLayoutRemoved(Lcom/htc/launcher/Launcher;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    .local v0, begin:J
    :try_start_0
    iget-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    invoke-interface {v5}, Lcom/htc/home/WidgetViewInterface;->onLayoutRemoved()V

    .line 118
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/launcher/WidgetProxy;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    .local v2, end:J
    sub-long v5, v2, v0

    .line 131
    :goto_0
    iget-object v5, p1, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    invoke-virtual {v5, p0}, Lcom/htc/launcher/WidgetsManager;->removeWidgetsOnWorkspace(Lcom/htc/launcher/WidgetProxy;)V

    .line 134
    iput-object v7, p0, Lcom/htc/launcher/WidgetProxy;->mClientWidgetView:Lcom/htc/home/WidgetViewInterface;

    .line 135
    iput-object v7, p0, Lcom/htc/launcher/WidgetProxy;->mVisibilityObserver:Lcom/htc/home/WidgetVisibilityObserver;

    .line 136
    return-void

    .line 119
    .end local v2           #end:J
    :catch_0
    move-exception v4

    .line 121
    .local v4, th:Ljava/lang/Throwable;
    :try_start_1
    const-string v5, "Widget"

    const-string v6, "onLayoutRemoved Error !"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    .restart local v2       #end:J
    sub-long v5, v2, v0

    .line 130
    goto :goto_0

    .line 123
    .end local v2           #end:J
    .end local v4           #th:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    .restart local v2       #end:J
    sub-long v6, v2, v0

    .line 130
    throw v5
.end method
