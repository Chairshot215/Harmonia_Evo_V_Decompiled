.class public Lcom/actionbarsherlock/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    iput p3, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Lcom/actionbarsherlock/app/ActionBar$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    iget v0, p1, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    iput v0, p0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method
