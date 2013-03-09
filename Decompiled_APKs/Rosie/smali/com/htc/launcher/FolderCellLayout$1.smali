.class Lcom/htc/launcher/FolderCellLayout$1;
.super Ljava/lang/Object;
.source "FolderCellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/FolderCellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/FolderCellLayout;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/launcher/FolderCellLayout;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/launcher/FolderCellLayout$1;->this$0:Lcom/htc/launcher/FolderCellLayout;

    iput-object p2, p0, Lcom/htc/launcher/FolderCellLayout$1;->val$child:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout$1;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 136
    return-void
.end method
