.class public Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;
.super Landroid/widget/LinearLayout;
.source "FreeSongOfTheDaySummary.java"


# instance fields
.field private mBuyButton:Landroid/widget/Button;

.field private final mConnection:Lcom/google/android/finsky/previews/PreviewController;

.field private mCreator:Landroid/widget/TextView;

.field private mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    new-instance v0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;-><init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    .line 41
    new-instance v0, Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Lcom/google/android/finsky/previews/PreviewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Lcom/google/android/finsky/layout/SongIndex;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setHighlighted(Z)V

    return-void
.end method

.method private setHighlighted(Z)V
    .locals 8
    .parameter "isHighlighted"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    const/4 v2, 0x4

    new-array v0, v2, [I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getPaddingLeft()I

    move-result v2

    aput v2, v0, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getPaddingTop()I

    move-result v2

    aput v2, v0, v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getPaddingRight()I

    move-result v2

    aput v2, v0, v6

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getPaddingBottom()I

    move-result v2

    aput v2, v0, v7

    .line 104
    .local v0, paddings:[I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    .local v1, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 106
    const v2, 0x7f0a0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setBackgroundColor(I)V

    .line 107
    iget-object v2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mCreator:Landroid/widget/TextView;

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    :goto_0
    aget v2, v0, v4

    aget v3, v0, v5

    aget v4, v0, v6

    aget v5, v0, v7

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setPadding(IIII)V

    .line 114
    return-void

    .line 109
    :cond_0
    const v2, 0x7f020108

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setBackgroundResource(I)V

    .line 110
    iget-object v2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mCreator:Landroid/widget/TextView;

    const v3, 0x7f0a0006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->unbind()V

    .line 93
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 94
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mTitle:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mCreator:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Landroid/widget/Button;

    .line 51
    const v0, 0x7f08014a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SongIndex;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    .line 52
    return-void
.end method

.method public showSummary(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "doc"
    .parameter "navManager"
    .parameter "referrer"
    .parameter "externalReferrer"

    .prologue
    const/4 v3, 0x1

    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mCreator:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 59
    .local v1, currentAccount:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v7

    .line 62
    .local v7, owner:Landroid/accounts/Account;
    if-eqz v7, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Landroid/widget/Button;

    const v2, 0x7f070131

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;

    invoke-direct {v2, p0, p2, v7, p1}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;-><init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    .line 79
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v8

    .line 80
    .local v8, song:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    new-instance v0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$2;

    invoke-direct {v0, p0, v8}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$2;-><init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-static {p2}, Lcom/google/android/finsky/previews/PreviewController;->setupOnBackStackChangedListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 88
    return-void

    .line 71
    .end local v8           #song:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v9, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Landroid/widget/Button;

    const/4 v6, 0x0

    move-object v0, p2

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
