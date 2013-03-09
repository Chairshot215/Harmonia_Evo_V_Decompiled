.class public Lcom/google/android/gm/XLargeComposeLayout;
.super Lcom/google/android/gm/DefaultComposeLayout;
.source "XLargeComposeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final LANDSCAPE_LAYOUT:I

.field private final PORTRAIT_LAYOUT:I

.field private mAddBcc:Landroid/widget/Button;

.field private mAddCc:Landroid/widget/Button;

.field private final mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;)V
    .locals 1
    .parameter "parentActivity"
    .parameter "controller"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/DefaultComposeLayout;-><init>(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;)V

    .line 23
    const v0, 0x7f04000a

    iput v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->LANDSCAPE_LAYOUT:I

    .line 24
    const v0, 0x7f040009

    iput v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->PORTRAIT_LAYOUT:I

    .line 31
    iput-object p1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mParent:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method private getLayout(Landroid/content/res/Configuration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 46
    invoke-static {p1}, Lcom/google/android/gm/Utils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const v0, 0x7f04000a

    .line 49
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f040009

    goto :goto_0
.end method

.method private setupView(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "config"

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    iget-object v4, p0, Lcom/google/android/gm/XLargeComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/google/android/gm/XLargeComposeLayout;->mParent:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/google/android/gm/XLargeComposeLayout;->getLayout(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gm/ComposeAreaController;->getView()Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, composeAreaView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 61
    .local v1, composeAreaParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    :cond_1
    const v4, 0x7f0f0018

    invoke-virtual {p0, v4}, Lcom/google/android/gm/XLargeComposeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 66
    .local v3, scrollArea:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gm/ComposeAreaController;->getView()Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, composeArea:Landroid/view/View;
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->setupButtons()V

    .line 70
    return-void
.end method


# virtual methods
.method public hideOrShowBcc(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->hideOrShowBcc(Z)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeAreaController;->hideOrShowBcc(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 117
    goto :goto_1
.end method

.method public hideOrShowCcBcc(ZZ)V
    .locals 2
    .parameter "show"
    .parameter "updateFields"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 99
    .local v0, visibility:I
    :goto_0
    if-eqz p2, :cond_1

    .line 100
    iget-object v1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gm/ComposeAreaController;->hideOrShowCcBcc(Z)V

    .line 105
    :goto_1
    return-void

    .line 98
    .end local v0           #visibility:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    .restart local v0       #visibility:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->setCcBccVisibility()V

    goto :goto_1
.end method

.method protected setCcBccVisibility()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeAreaController;->currentlyShowingCc()Z

    move-result v1

    .line 81
    .local v1, showingCc:Z
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeAreaController;->currentlyShowingBcc()Z

    move-result v0

    .line 82
    .local v0, showingBcc:Z
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mParent:Landroid/app/Activity;

    const v3, 0x7f0f001b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    .line 83
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mParent:Landroid/app/Activity;

    const v3, 0x7f0f001c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    .line 84
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 85
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 88
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_2
    if-nez v1, :cond_0

    .line 91
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupButtons()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->setCcBccVisibility()V

    .line 74
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f0f001d

    invoke-virtual {p0, v0}, Lcom/google/android/gm/XLargeComposeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method public setupLayout()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/XLargeComposeLayout;->setupView(Landroid/content/res/Configuration;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mActionBar:Landroid/app/ActionBar;

    .line 42
    return-void
.end method
