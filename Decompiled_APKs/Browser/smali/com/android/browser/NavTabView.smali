.class public Lcom/android/browser/NavTabView;
.super Landroid/widget/LinearLayout;
.source "NavTabView.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mClose:Landroid/widget/ImageView;

.field private mContent:Landroid/view/ViewGroup;

.field private mHighlighted:Z

.field mImage:Landroid/widget/ImageView;

.field private mTab:Lcom/android/browser/Tab;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/android/browser/NavTabView;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Lcom/android/browser/NavTabView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/android/browser/NavTabView;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040020

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    const v0, 0x7f0d0007

    invoke-virtual {p0, v0}, Lcom/android/browser/NavTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/browser/NavTabView;->mContent:Landroid/view/ViewGroup;

    .line 59
    const v0, 0x7f0d0059

    invoke-virtual {p0, v0}, Lcom/android/browser/NavTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavTabView;->mClose:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0d0005

    invoke-virtual {p0, v0}, Lcom/android/browser/NavTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/NavTabView;->mTitle:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/android/browser/NavTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavTabView;->mTitleBar:Landroid/view/View;

    .line 62
    const v0, 0x7f0d0003

    invoke-virtual {p0, v0}, Lcom/android/browser/NavTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    .line 63
    return-void
.end method

.method private setTitle()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/browser/NavTabView;->mTab:Lcom/android/browser/Tab;

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/NavTabView;->mHighlighted:Z

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/browser/NavTabView;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/browser/NavTabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_1
    iget-object v1, p0, Lcom/android/browser/NavTabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    const v1, 0x7f02002c

    invoke-direct {p0, v1}, Lcom/android/browser/NavTabView;->setTitleIcon(I)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/android/browser/NavTabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, txt:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 89
    iget-object v1, p0, Lcom/android/browser/NavTabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/android/browser/NavTabView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 95
    .end local v0           #txt:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/browser/NavTabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    const v1, 0x7f02002f

    invoke-direct {p0, v1}, Lcom/android/browser/NavTabView;->setTitleIcon(I)V

    goto :goto_0

    .line 98
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/browser/NavTabView;->setTitleIcon(I)V

    goto :goto_0
.end method

.method private setTitleIcon(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 103
    if-nez p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/NavTabView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 109
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected hideTitle()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mTitleBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    return-void
.end method

.method protected isClose(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mClose:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHighlighted()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/browser/NavTabView;->mHighlighted:Z

    return v0
.end method

.method protected isTitle(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mTitleBar:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWebView(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setHighlighted(Z)V
    .locals 1
    .parameter "highlighted"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/browser/NavTabView;->mHighlighted:Z

    if-ne p1, v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-boolean p1, p0, Lcom/android/browser/NavTabView;->mHighlighted:Z

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/browser/NavTabView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 135
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mTitleBar:Landroid/view/View;

    iget-object v1, p0, Lcom/android/browser/NavTabView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mClose:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavTabView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavTabView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_0
    return-void
.end method

.method protected setWebView(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "w"

    .prologue
    const/4 v2, -0x1

    .line 116
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mContent:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method

.method protected setWebView(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/browser/NavTabView;->mTab:Lcom/android/browser/Tab;

    .line 121
    invoke-direct {p0}, Lcom/android/browser/NavTabView;->setTitle()V

    .line 122
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, image:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    :cond_0
    return-void
.end method
