.class Lcom/htc/launcher/Workspace$6;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Workspace;->removeShortcutsForPackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Workspace;

.field final synthetic val$childrenToRemove:Ljava/util/ArrayList;

.field final synthetic val$childrenToRemoveCount:I

.field final synthetic val$layout:Lcom/htc/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Workspace;Ljava/util/ArrayList;ILcom/htc/launcher/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3273
    iput-object p1, p0, Lcom/htc/launcher/Workspace$6;->this$0:Lcom/htc/launcher/Workspace;

    iput-object p2, p0, Lcom/htc/launcher/Workspace$6;->val$childrenToRemove:Ljava/util/ArrayList;

    iput p3, p0, Lcom/htc/launcher/Workspace$6;->val$childrenToRemoveCount:I

    iput-object p4, p0, Lcom/htc/launcher/Workspace$6;->val$layout:Lcom/htc/launcher/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3276
    iget-object v2, p0, Lcom/htc/launcher/Workspace$6;->val$childrenToRemove:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3277
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/htc/launcher/Workspace$6;->val$childrenToRemoveCount:I

    if-ge v0, v1, :cond_0

    .line 3278
    iget-object v3, p0, Lcom/htc/launcher/Workspace$6;->val$layout:Lcom/htc/launcher/CellLayout;

    iget-object v1, p0, Lcom/htc/launcher/Workspace$6;->val$childrenToRemove:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1}, Lcom/htc/launcher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3280
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3281
    iget-object v1, p0, Lcom/htc/launcher/Workspace$6;->val$layout:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/htc/launcher/CellLayout;->requestLayout()V

    .line 3282
    iget-object v1, p0, Lcom/htc/launcher/Workspace$6;->val$layout:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/htc/launcher/CellLayout;->invalidate()V

    .line 3283
    return-void

    .line 3280
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
