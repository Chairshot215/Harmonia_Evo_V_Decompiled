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
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput v2, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    .line 25
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    .line 26
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    .line 27
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    .line 30
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    .line 31
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    .line 32
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    .line 34
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    .line 35
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    .line 37
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    .line 38
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    .line 39
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    .line 41
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    .line 178
    new-instance v0, Lcom/htc/widget/HeaderBarInput$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarInput$1;-><init>(Lcom/htc/widget/HeaderBarInput;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    .line 214
    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding:Z

    .line 215
    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarInput;->disableRightPadding:Z

    .line 48
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v2, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    .line 25
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    .line 26
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    .line 27
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    .line 30
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    .line 31
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    .line 32
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    .line 34
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    .line 35
    iput v0, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    .line 37
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    .line 38
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    .line 39
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    .line 41
    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    .line 178
    new-instance v0, Lcom/htc/widget/HeaderBarInput$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarInput$1;-><init>(Lcom/htc/widget/HeaderBarInput;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    .line 214
    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding:Z

    .line 215
    iput-boolean v2, p0, Lcom/htc/widget/HeaderBarInput;->disableRightPadding:Z

    .line 54
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HeaderBarInput;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private setupEnvironment()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 67
    const/4 v0, -0x1

    .line 68
    .local v0, layoutH:I
    const/4 v1, -0x1

    .line 71
    .local v1, layoutW:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarInput;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarInput;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 76
    .local v2, lparams:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarInput;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .end local v2           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    if-gez v4, :cond_1

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 89
    .local v3, resources:Landroid/content/res/Resources;
    const v4, 0x20d0094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    .line 90
    const v4, 0x20d0096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    .line 91
    const v4, 0x20d0095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    .line 93
    const v4, 0x20d00a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    .line 96
    .end local v3           #resources:Landroid/content/res/Resources;
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

    .line 97
    return-void

    .line 82
    :cond_2
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HeaderBarInput;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 96
    :cond_3
    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    goto :goto_2
.end method

.method private setupInputBoxMode()V
    .locals 6

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarInput;->removeAllViews()V

    .line 130
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarInput;->setClickable(Z)V

    .line 133
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x20900ea

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 136
    const v1, 0x20200a8

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    .line 137
    const v1, 0x202025b

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    .line 138
    const v1, 0x2020263

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    .line 141
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    const-string v3, "common_inputfield"

    const v4, 0x2080046

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 148
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 153
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 155
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    .line 160
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    .line 162
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    iget v2, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iget v3, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 164
    :cond_1
    return-void
.end method

.method private setupInputSpinnerMode()V
    .locals 4

    .prologue
    .line 168
    new-instance v0, Lcom/htc/widget/HtcSpinner;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    .line 169
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/widget/HeaderBarInput;->inputHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarInput;->removeAllViews()V

    .line 172
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->htcSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarInput;->addView(Landroid/view/View;)V

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarInput;->setClickable(Z)V

    .line 174
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarInput;->setGravity(I)V

    .line 175
    return-void
.end method

.method private updateInputPadding()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x8

    .line 101
    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    if-gez v5, :cond_1

    .line 103
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HeaderBarInput;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 105
    .local v2, resources:Landroid/content/res/Resources;
    const v5, 0x20d0098

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HeaderBarInput;->clearIconSize:I

    .line 106
    const v5, 0x20d0099

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HeaderBarInput;->progressBarSize:I

    .line 109
    .end local v2           #resources:Landroid/content/res/Resources;
    :cond_1
    const/4 v3, 0x0

    .line 111
    .local v3, rightPadding:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    .line 112
    .local v0, iconVisibility:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    .line 114
    .local v1, progressVisibility:I
    if-ne v0, v7, :cond_4

    move v5, v4

    :goto_0
    add-int/lit8 v5, v5, 0x0

    if-ne v1, v7, :cond_5

    :goto_1
    add-int v3, v5, v4

    .line 118
    if-eq v1, v7, :cond_2

    if-ne v0, v7, :cond_2

    .line 119
    iget v4, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    add-int/2addr v3, v4

    .line 121
    :cond_2
    if-ne v1, v7, :cond_3

    if-ne v0, v7, :cond_3

    .line 122
    iget v3, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    .line 124
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;

    iget v5, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iget v6, p0, Lcom/htc/widget/HeaderBarInput;->iTPadding:I

    iget v7, p0, Lcom/htc/widget/HeaderBarInput;->iBPadding:I

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 125
    return-void

    .line 114
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

    .prologue
    const/4 v1, 0x0

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding:Z

    .line 220
    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingRight:I

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/htc/widget/HeaderBarInput;->setPadding(IIII)V

    .line 221
    return-void
.end method

.method public disableRightPadding()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarInput;->disableRightPadding:Z

    .line 226
    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->paddingLeft:I

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/htc/widget/HeaderBarInput;->setPadding(IIII)V

    .line 227
    return-void
.end method

.method public getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;
    .locals 2

    .prologue
    .line 281
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

    .prologue
    .line 287
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

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 61
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    .line 62
    return-void
.end method

.method public setClearIconListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .end local p1
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    :cond_0
    return-void

    .line 275
    .restart local p1
    :cond_1
    iget-object p1, p0, Lcom/htc/widget/HeaderBarInput;->clearTextListener:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method public setClearIconVisibility(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    iget v1, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->clearIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->updateInputPadding()V

    .line 237
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 242
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 243
    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 246
    iget v1, p0, Lcom/htc/widget/HeaderBarInput;->iPadding:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 248
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 254
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 255
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const v1, 0x20200a8

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 256
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 257
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 259
    iget-object v1, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setInputMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 192
    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    if-ne v0, p1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 195
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 198
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    .line 199
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    .line 200
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupInputBoxMode()V

    goto :goto_0

    .line 204
    :pswitch_1
    iput p1, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    .line 205
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupEnvironment()V

    .line 206
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->setupInputSpinnerMode()V

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setProgressVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 265
    iget v0, p0, Lcom/htc/widget/HeaderBarInput;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 269
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarInput;->updateInputPadding()V

    goto :goto_0
.end method
