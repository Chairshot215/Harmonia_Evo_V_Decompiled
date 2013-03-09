.class public Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field public gravity:I

.field public weight:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    iput p3, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    return-void
.end method
