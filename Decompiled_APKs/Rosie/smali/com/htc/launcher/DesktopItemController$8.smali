.class final Lcom/htc/launcher/DesktopItemController$8;
.super Ljava/lang/Object;
.source "DesktopItemController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DesktopItemController;->onAppWidgetOrientationChanged(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;Landroid/appwidget/AppWidgetManager;Lcom/htc/launcher/LauncherAppWidgetHost;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

.field final synthetic val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final synthetic val$cell:Lcom/htc/launcher/CellLayout;

.field final synthetic val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

.field final synthetic val$launcher:Lcom/htc/launcher/Launcher;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$workspace:Lcom/htc/launcher/Workspace;


# direct methods
.method constructor <init>(Landroid/appwidget/AppWidgetManager;Lcom/htc/launcher/LauncherAppWidgetInfo;Lcom/htc/launcher/LauncherAppWidgetHost;Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;Landroid/view/View;Lcom/htc/launcher/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$8;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iput-object p2, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iput-object p3, p0, Lcom/htc/launcher/DesktopItemController$8;->val$appWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    iput-object p4, p0, Lcom/htc/launcher/DesktopItemController$8;->val$launcher:Lcom/htc/launcher/Launcher;

    iput-object p5, p0, Lcom/htc/launcher/DesktopItemController$8;->val$workspace:Lcom/htc/launcher/Workspace;

    iput-object p6, p0, Lcom/htc/launcher/DesktopItemController$8;->val$view:Landroid/view/View;

    iput-object p7, p0, Lcom/htc/launcher/DesktopItemController$8;->val$cell:Lcom/htc/launcher/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$8;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    .line 1479
    .local v9, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {}, Lcom/htc/launcher/DesktopItemController;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "DesktopItemController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "re-create app widget - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v9, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$8;->val$appWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController$8;->val$launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2, v3, v9}, Lcom/htc/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1483
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1, v9}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1484
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1485
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$8;->val$workspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1488
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$8;->val$view:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/launcher/LegacyLayout;

    if-eqz v0, :cond_4

    .line 1489
    invoke-static {}, Lcom/htc/launcher/DesktopItemController;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "DesktopItemController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change legacy layout content for app widget - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v9, :cond_3

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_1
    iget-object v10, p0, Lcom/htc/launcher/DesktopItemController$8;->val$view:Landroid/view/View;

    check-cast v10, Lcom/htc/launcher/LegacyLayout;

    .line 1491
    .local v10, ll:Lcom/htc/launcher/LegacyLayout;
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v10}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1492
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v10, v0}, Lcom/htc/launcher/LegacyLayout;->changeView(Landroid/view/View;)V

    .line 1501
    .end local v10           #ll:Lcom/htc/launcher/LegacyLayout;
    :goto_2
    return-void

    .line 1479
    :cond_2
    iget-object v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1489
    :cond_3
    iget-object v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    goto :goto_1

    .line 1495
    :cond_4
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$8;->val$cell:Lcom/htc/launcher/CellLayout;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$8;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1496
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$8;->val$launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget-object v3, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/htc/launcher/ItemInfo;->screen:I

    iget-object v4, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget-object v5, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget-object v6, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget v6, v6, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget-object v7, p0, Lcom/htc/launcher/DesktopItemController$8;->val$item:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget v7, v7, Lcom/htc/launcher/ItemInfo;->spanY:I

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/launcher/DesktopItemController;->addLegacyItemToDesktop(Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V

    goto :goto_2
.end method
