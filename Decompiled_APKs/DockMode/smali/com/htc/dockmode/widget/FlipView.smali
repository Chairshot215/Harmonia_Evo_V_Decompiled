.class public Lcom/htc/dockmode/widget/FlipView;
.super Ljava/lang/Object;
.source "FlipView.java"


# instance fields
.field private mAmPmView:Landroid/widget/ImageView;

.field private mCenter:Landroid/widget/ImageView;

.field private mResAmPm:[I

.field private mResId:[I

.field private mTens:Landroid/widget/ImageView;

.field private mUnits:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .locals 1
    .parameter "root"
    .parameter "id_tens"
    .parameter "id_units"
    .parameter "id_center"
    .parameter "id_ampm"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/htc/dockmode/widget/FlipRes;->FlipClock_res()[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mResId:[I

    .line 15
    invoke-static {}, Lcom/htc/dockmode/widget/FlipRes;->FlipClock_resAmPm()[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mResAmPm:[I

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mTens:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mUnits:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mCenter:Landroid/widget/ImageView;

    .line 21
    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mAmPmView:Landroid/widget/ImageView;

    .line 22
    return-void
.end method


# virtual methods
.method public setAmPm(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mAmPmView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 48
    if-gez p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mAmPmView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mAmPmView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipView;->mResAmPm:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mAmPmView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 4
    .parameter "digit"

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 25
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mCenter:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 26
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mTens:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mUnits:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mCenter:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipView;->mResId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mTens:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipView;->mResId:[I

    div-int/lit8 v2, p1, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mUnits:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipView;->mResId:[I

    rem-int/lit8 v2, p1, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mTens:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mUnits:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mTens:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mUnits:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mTens:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipView;->mResId:[I

    div-int/lit8 v2, p1, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipView;->mUnits:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipView;->mResId:[I

    rem-int/lit8 v2, p1, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
