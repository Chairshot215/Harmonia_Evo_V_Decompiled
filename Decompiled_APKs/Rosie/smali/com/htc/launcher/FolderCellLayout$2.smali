.class Lcom/htc/launcher/FolderCellLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/FolderCellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/htc/launcher/FolderCellLayout;

.field final synthetic val$lp:Lcom/htc/launcher/CellLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/htc/launcher/FolderCellLayout;Lcom/htc/launcher/CellLayout$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/launcher/FolderCellLayout$2;->this$0:Lcom/htc/launcher/FolderCellLayout;

    iput-object p2, p0, Lcom/htc/launcher/FolderCellLayout$2;->val$lp:Lcom/htc/launcher/CellLayout$LayoutParams;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/FolderCellLayout$2;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/FolderCellLayout$2;->cancelled:Z

    .line 159
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/htc/launcher/FolderCellLayout$2;->cancelled:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout$2;->val$lp:Lcom/htc/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->m_bIsLockedToGrid:Z

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout$2;->this$0:Lcom/htc/launcher/FolderCellLayout;

    #getter for: Lcom/htc/launcher/FolderCellLayout;->m_reorderAnimators:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/launcher/FolderCellLayout;->access$000(Lcom/htc/launcher/FolderCellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/FolderCellLayout$2;->val$lp:Lcom/htc/launcher/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout$2;->this$0:Lcom/htc/launcher/FolderCellLayout;

    #getter for: Lcom/htc/launcher/FolderCellLayout;->m_reorderAnimators:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/launcher/FolderCellLayout;->access$000(Lcom/htc/launcher/FolderCellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/FolderCellLayout$2;->val$lp:Lcom/htc/launcher/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    return-void
.end method
