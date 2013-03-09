.class public Lcom/htc/launcher/HostActivityBridge;
.super Ljava/lang/Object;
.source "HostActivityBridge.java"

# interfaces
.implements Lcom/htc/android/rosie/home/HostWidgetManager$Owner;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field static final NO_STORE_ID:J = -0x1L


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mFxView:Lcom/htc/fusion/fx/FxViewObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/htc/launcher/HostActivityBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/HostActivityBridge;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/htc/fusion/fx/FxViewObject;)V
    .locals 0
    .parameter "activity"
    .parameter "fxView"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/htc/launcher/HostActivityBridge;->mActivity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/htc/launcher/HostActivityBridge;->mFxView:Lcom/htc/fusion/fx/FxViewObject;

    .line 44
    return-void
.end method


# virtual methods
.method public addResourcePath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/launcher/HostActivityBridge;->mFxView:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxViewObject;->setPackageResourcePath(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 6
    .parameter "path"
    .parameter "visible"

    .prologue
    .line 59
    invoke-static {p1}, Lcom/htc/fusion/fx/FxSceneLoader;->create(Ljava/lang/String;)Lcom/htc/fusion/fx/FxSceneLoader;

    move-result-object v1

    .line 60
    .local v1, loader:Lcom/htc/fusion/fx/FxSceneLoader;
    sget-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/launcher/HostActivityBridge;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "will create scene:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    :try_start_0
    invoke-static {v1, p2}, Lcom/htc/fusion/fx/FxScene;->create(Lcom/htc/fusion/fx/FxSceneLoader;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    .line 63
    .local v2, scene:Lcom/htc/fusion/fx/FxScene;
    sget-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/htc/launcher/HostActivityBridge;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "did create scene:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v2           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_1
    :goto_0
    return-object v2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FxScene.create fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteWidgetInfo(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
    .locals 2
    .parameter "widgetInfo"

    .prologue
    .line 101
    new-instance v0, Lcom/htc/launcher/FxItemInfo;

    invoke-direct {v0, p1}, Lcom/htc/launcher/FxItemInfo;-><init>(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)V

    .line 102
    .local v0, item:Lcom/htc/launcher/FxItemInfo;
    iget-object v1, p0, Lcom/htc/launcher/HostActivityBridge;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 104
    const/4 v1, 0x1

    return v1
.end method

.method public destroyScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/htc/fusion/fx/FxScene;->clearHandle()V

    .line 74
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/launcher/HostActivityBridge;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getInvalidId()J
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/launcher/HostActivityBridge;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 56
    return-void
.end method

.method public storeWidgetInfo(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
    .locals 8
    .parameter "widgetInfo"

    .prologue
    const/4 v7, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return v7

    .line 84
    :cond_0
    new-instance v1, Lcom/htc/launcher/FxItemInfo;

    invoke-direct {v1, p1}, Lcom/htc/launcher/FxItemInfo;-><init>(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)V

    .line 85
    .local v1, item:Lcom/htc/launcher/FxItemInfo;
    iget-object v0, p0, Lcom/htc/launcher/HostActivityBridge;->mActivity:Landroid/app/Activity;

    const-wide/16 v2, -0x64

    iget v4, v1, Lcom/htc/launcher/FxItemInfo;->screen:I

    iget v5, v1, Lcom/htc/launcher/FxItemInfo;->cellX:I

    iget v6, v1, Lcom/htc/launcher/FxItemInfo;->cellY:I

    invoke-static/range {v0 .. v7}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    .line 86
    iget-wide v2, v1, Lcom/htc/launcher/FxItemInfo;->id:J

    invoke-virtual {p1, v2, v3}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->setStoreId(J)V

    .line 87
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/launcher/HostActivityBridge;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saving:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public surpressLongClick(Z)V
    .locals 3
    .parameter "surpress"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/htc/launcher/HostActivityBridge;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/htc/launcher/Launcher;

    if-eqz v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/launcher/HostActivityBridge;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/htc/launcher/Launcher;

    .line 117
    .local v0, l:Lcom/htc/launcher/Launcher;
    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/htc/launcher/Workspace;->setAllowLongPress(Z)V

    .line 119
    .end local v0           #l:Lcom/htc/launcher/Launcher;
    :cond_0
    return-void

    .line 117
    .restart local v0       #l:Lcom/htc/launcher/Launcher;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public surpressSlide(Z)V
    .locals 3
    .parameter "surpress"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/htc/launcher/HostActivityBridge;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/htc/launcher/Launcher;

    if-eqz v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/launcher/HostActivityBridge;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/htc/launcher/Launcher;

    .line 110
    .local v0, l:Lcom/htc/launcher/Launcher;
    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/htc/launcher/Workspace;->enableScroll(Z)V

    .line 112
    .end local v0           #l:Lcom/htc/launcher/Launcher;
    :cond_0
    return-void

    .line 110
    .restart local v0       #l:Lcom/htc/launcher/Launcher;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateWidgetInfo(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
    .locals 6
    .parameter "widgetInfo"

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    new-instance v0, Lcom/htc/launcher/FxItemInfo;

    invoke-direct {v0, p1}, Lcom/htc/launcher/FxItemInfo;-><init>(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)V

    .line 96
    .local v0, item:Lcom/htc/launcher/FxItemInfo;
    iget-object v2, p0, Lcom/htc/launcher/HostActivityBridge;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/htc/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 97
    iget-wide v2, v0, Lcom/htc/launcher/FxItemInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
