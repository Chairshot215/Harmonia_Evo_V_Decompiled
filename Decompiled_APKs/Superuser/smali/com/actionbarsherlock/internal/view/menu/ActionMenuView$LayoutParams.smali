.class public Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
.super Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;


# instance fields
.field public cellsUsed:I

.field public expandable:Z

.field public expanded:Z

.field public extraPixels:I

.field public isOverflowButton:Z

.field public preventEdgeOffset:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;-><init>(II)V

    iput-boolean p3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-boolean v0, p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-void
.end method
