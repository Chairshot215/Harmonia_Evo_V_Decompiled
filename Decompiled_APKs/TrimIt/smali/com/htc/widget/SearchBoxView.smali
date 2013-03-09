.class public Lcom/htc/widget/SearchBoxView;
.super Landroid/widget/LinearLayout;
.source "SearchBoxView.java"


# instance fields
.field private mCloseButton:Landroid/widget/ImageView;

.field private mEditText:Landroid/widget/EditText;

.field private mHtcContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/SearchBoxView;->mHtcContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/htc/widget/SearchBoxView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/SearchBoxView;->mHtcContext:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/htc/widget/SearchBoxView;->init()V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/SearchBoxView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/widget/SearchBoxView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/SearchBoxView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/widget/SearchBoxView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/SearchBoxView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/widget/SearchBoxView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    .line 34
    :try_start_0
    iget-object v5, p0, Lcom/htc/widget/SearchBoxView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/SearchBoxView;->mHtcContext:Landroid/content/Context;

    .line 35
    iget-object v5, p0, Lcom/htc/widget/SearchBoxView;->mHtcContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 36
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x20900ab

    invoke-virtual {v1, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 37
    .local v3, layout:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/SearchBoxView;->getId()I

    move-result v5

    const v6, 0x20201c7

    if-eq v5, v6, :cond_0

    .line 38
    iget-object v5, p0, Lcom/htc/widget/SearchBoxView;->mContext:Landroid/content/Context;

    const-string v6, "common_panel_input_base"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/SearchBoxView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    .line 41
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 42
    .local v2, innerView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 43
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 46
    .end local v2           #innerView:Landroid/view/View;
    :cond_1
    const v5, 0x202019c

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/htc/widget/SearchBoxView;->mEditText:Landroid/widget/EditText;

    .line 47
    iget-object v5, p0, Lcom/htc/widget/SearchBoxView;->mContext:Landroid/content/Context;

    const-string v6, "common_edit_text"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 48
    .local v4, mEditTextBkg:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 49
    iget-object v5, p0, Lcom/htc/widget/SearchBoxView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_2
    const v5, 0x2020199

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/htc/widget/SearchBoxView;->mCloseButton:Landroid/widget/ImageView;

    .line 52
    iget-object v5, p0, Lcom/htc/widget/SearchBoxView;->mCloseButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/htc/widget/SearchBoxView$1;

    invoke-direct {v6, p0}, Lcom/htc/widget/SearchBoxView$1;-><init>(Lcom/htc/widget/SearchBoxView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v5, p0, Lcom/htc/widget/SearchBoxView;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/htc/widget/SearchBoxView$2;

    invoke-direct {v6, p0}, Lcom/htc/widget/SearchBoxView$2;-><init>(Lcom/htc/widget/SearchBoxView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #layout:Landroid/view/ViewGroup;
    .end local v4           #mEditTextBkg:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getTextField()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/widget/SearchBoxView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method
