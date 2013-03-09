.class Lcom/htc/launcher/Workspace$12;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Workspace;->checkWidgetResize(Lcom/htc/launcher/CellInfo;Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/CellLayout;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Workspace;

.field final synthetic val$appWidget:Lcom/htc/launcher/LauncherAppWidgetInfo;

.field final synthetic val$cellLayout:Lcom/htc/launcher/CellLayout;

.field final synthetic val$itemInfo:Lcom/htc/launcher/ItemInfo;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Workspace;Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/LauncherAppWidgetInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4521
    iput-object p1, p0, Lcom/htc/launcher/Workspace$12;->this$0:Lcom/htc/launcher/Workspace;

    iput-object p2, p0, Lcom/htc/launcher/Workspace$12;->val$cellLayout:Lcom/htc/launcher/CellLayout;

    iput-object p3, p0, Lcom/htc/launcher/Workspace$12;->val$itemInfo:Lcom/htc/launcher/ItemInfo;

    iput-object p4, p0, Lcom/htc/launcher/Workspace$12;->val$appWidget:Lcom/htc/launcher/LauncherAppWidgetInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4524
    iget-object v0, p0, Lcom/htc/launcher/Workspace$12;->this$0:Lcom/htc/launcher/Workspace;

    iget-boolean v0, v0, Lcom/htc/launcher/Workspace;->mWidgetResizing:Z

    if-nez v0, :cond_0

    .line 4525
    iget-object v0, p0, Lcom/htc/launcher/Workspace$12;->val$cellLayout:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->startWidgetResize()V

    .line 4526
    iget-object v1, p0, Lcom/htc/launcher/Workspace$12;->val$cellLayout:Lcom/htc/launcher/CellLayout;

    iget-object v2, p0, Lcom/htc/launcher/Workspace$12;->val$itemInfo:Lcom/htc/launcher/ItemInfo;

    iget-object v0, p0, Lcom/htc/launcher/Workspace$12;->val$appWidget:Lcom/htc/launcher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/htc/launcher/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/htc/launcher/Workspace$12;->val$cellLayout:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/launcher/CellLayout;->addAppWidgetResizeFrame(Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/LauncherAppWidgetHostView;Lcom/htc/launcher/CellLayout;)V

    .line 4531
    :goto_0
    iget-object v0, p0, Lcom/htc/launcher/Workspace$12;->this$0:Lcom/htc/launcher/Workspace;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/Workspace;->mStartWidgetResizeRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/htc/launcher/Workspace;->access$802(Lcom/htc/launcher/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4532
    return-void

    .line 4529
    :cond_0
    const-string v0, "Workspace"

    const-string v1, "already resizing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
