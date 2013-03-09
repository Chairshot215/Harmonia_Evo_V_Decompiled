.class Lcom/htc/launcher/Workspace$11;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Workspace;->clearCellInPage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Workspace;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/htc/launcher/Workspace;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4445
    iput-object p1, p0, Lcom/htc/launcher/Workspace$11;->this$0:Lcom/htc/launcher/Workspace;

    iput p2, p0, Lcom/htc/launcher/Workspace$11;->val$page:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4448
    iget-object v1, p0, Lcom/htc/launcher/Workspace$11;->this$0:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->clearTempRemovedChildren()V

    .line 4449
    iget-object v1, p0, Lcom/htc/launcher/Workspace$11;->this$0:Lcom/htc/launcher/Workspace;

    iget v2, p0, Lcom/htc/launcher/Workspace$11;->val$page:I

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4451
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/launcher/CellLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 4452
    check-cast v1, Lcom/htc/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/htc/launcher/CellLayout;->clear()V

    .line 4453
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4456
    :cond_0
    return-void
.end method
