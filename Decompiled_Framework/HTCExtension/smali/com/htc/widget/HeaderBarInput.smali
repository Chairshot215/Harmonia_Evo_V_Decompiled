.class public Lcom/htc/widget/HeaderBarInput;
.super Landroid/widget/RelativeLayout;
.source "HeaderBarInput.java"


# static fields
.field public static final InputBox:I = 0x1

.field public static final InputSpinner:I = 0x2

.field public static final Invalid:I


# instance fields
.field private autoTextView:Landroid/widget/AutoCompleteTextView;

.field private clearIcon:Landroid/widget/ImageView;

.field private clearIconSize:I

.field private clearTextListener:Landroid/view/View$OnClickListener;

.field private currentMode:I

.field private disableLeftPadding:Z

.field private disableRightPadding:Z

.field private htcSpinner:Lcom/htc/widget/HtcSpinner;

.field private iBPadding:I

.field private iPadding:I

.field private iTPadding:I

.field private inputHeight:I

.field private paddingLeft:I

.field private paddingRight:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressBarSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v0, Lcom/htc/widget/HeaderBarInput$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarInput$1;-><init>(Lcom/htc/widget/HeaderBarInput;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding:Z

    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarInput;->disableRightPadding:Z

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v0, Lcom/htc/widget/HeaderBarInput$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarInput$1;-><init>(Lcom/htc/widget/HeaderBarInput;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding:Z

    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarInput;->disableRightPadding:Z

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HeaderBarInput;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private setupEnvironment()V
    .locals 7

    const/4 v5, 0x0

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarInput;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarInput;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarInput;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    if-gez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20d0094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    const v4, 0x20d0096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    const v4, 0x20d0095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    const v4, 0x20d00a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    :cond_1
    iget-boolean v4, p0, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_1
    iget-boolean v6, p0, Lcom/htc/widget/HeaderBarInput;->disableRightPadding:Z

    if-eqz v6, :cond_4

    move v6, v5

    :goto_2
    invoke-virtual {p0, v4, v5, v6, v5}, Lcom/htc/widget/HeaderBarInput;->setPadding(IIII)V

    return-void

    :cond_2
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HeaderBarInput;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    goto :goto_2
.end method

.method private setupInputBoxMode()V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarInput;->removeAllViews()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarInput;->setClickable(Z)V

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x20900ea

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x20200a8

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    const v1, 0x202025b

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    const v1, 0x2020263

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    const-string v3, "common_inputfield"

    const v4, 0x2080046

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    iget v2, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iget v3, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private setupInputSpinnerMode()V
    .locals 4

    new-instance v0, Lcom/htc/widget/HtcSpinner;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarInput;->removeAllViews()V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarInput;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarInput;->setClickable(Z)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarInput;->setGravity(I)V

    return-void
.end method

.method private updateInputPadding()V
    .locals 8

    const/4 v4, 0x0

    const/16 v7, 0x8

    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    if-gez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20d0098

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    const v5, 0x20d0099

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    :cond_1
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    iget-object v5, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-ne v0, v7, :cond_4

    move v5, v4

    :goto_0
    add-int/lit8 v5, v5, 0x0

    if-ne v1, v7, :cond_5

    :goto_1
    add-int v3, v5, v4

    if-eq v1, v7, :cond_2

    if-ne v0, v7, :cond_2

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    add-int/2addr v3, v4

    :cond_2
    if-ne v1, v7, :cond_3

    if-ne v0, v7, :cond_3

    iget v3, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    :cond_3
    iget-object v4, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iget v6, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    iget v7, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    return-void

    :cond_4
    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    iget v6, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    add-int/2addr v4, v6

    goto :goto_1
.end method


# virtual methods
.method public disableLeftPadding()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding:Z

    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/htc/widget/HeaderBarInput;->setPadding(IIII)V

    return-void
.end method

.method public disableRightPadding()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarInput;->disableRightPadding:Z

    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/htc/widget/HeaderBarInput;->setPadding(IIII)V

    return-void
.end method

.method public getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;
    .locals 2

    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    goto :goto_0
.end method

.method public getHtcSpinner()Lcom/htc/widget/HtcSpinner;
    .locals 2

    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    return-void
.end method

.method public setClearIconListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method public setClearIconVisibility(I)V
    .locals 5

    const/16 v4, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->updateInputPadding()V

    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v1, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v1, 0x20200a8

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setInputMode(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput p1, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupInputBoxMode()V

    goto :goto_0

    :pswitch_1
    iput p1, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupInputSpinnerMode()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setProgressVisibility(I)V
    .locals 2

    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->updateInputPadding()V

    goto :goto_0
.end method
