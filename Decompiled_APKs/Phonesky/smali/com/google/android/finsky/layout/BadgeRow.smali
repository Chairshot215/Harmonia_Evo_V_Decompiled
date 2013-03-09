.class public Lcom/google/android/finsky/layout/BadgeRow;
.super Landroid/widget/LinearLayout;
.source "BadgeRow.java"


# instance fields
.field private final mBadgeImageSize:I

.field private mExtraBadgeContainer:Landroid/widget/LinearLayout;

.field private mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/BadgeRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/BadgeRow;->mBadgeImageSize:I

    .line 37
    return-void
.end method


# virtual methods
.method public addExtraBadge(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V
    .locals 9
    .parameter "bitmapLoader"
    .parameter "badgeUrl"

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeRow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 75
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040009

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeRow;->mExtraBadgeContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 78
    .local v6, badgeView:Landroid/widget/ImageView;
    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/finsky/layout/ThumbnailListener;

    const/4 v0, 0x1

    invoke-direct {v3, v6, v0}, Lcom/google/android/finsky/layout/ThumbnailListener;-><init>(Landroid/widget/ImageView;Z)V

    iget v4, p0, Lcom/google/android/finsky/layout/BadgeRow;->mBadgeImageSize:I

    iget v5, p0, Lcom/google/android/finsky/layout/BadgeRow;->mBadgeImageSize:I

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v7

    .line 80
    .local v7, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeRow;->mExtraBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 43
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BadgeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BadgeRow;->mExtraBadgeContainer:Landroid/widget/LinearLayout;

    .line 44
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BadgeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BadgeRow;->mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 45
    return-void
.end method

.method public setPrimaryBadge(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;ILjava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)V
    .locals 9
    .parameter "navigationManager"
    .parameter "dfeToc"
    .parameter "backendId"
    .parameter "referrerUrl"
    .parameter "bitmapLoader"
    .parameter "badge"

    .prologue
    .line 50
    const/4 v0, 0x6

    invoke-static {p6, v0}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, badgeUrl:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeRow;->mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    iget v1, p0, Lcom/google/android/finsky/layout/BadgeRow;->mBadgeImageSize:I

    invoke-virtual {v0, p5, v8, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V

    .line 55
    :cond_0
    invoke-virtual {p6}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, badgeTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeRow;->mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p6}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->hasBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Lcom/google/android/finsky/layout/BadgeRow$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/layout/BadgeRow$1;-><init>(Lcom/google/android/finsky/layout/BadgeRow;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BadgeRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_1
    return-void
.end method
