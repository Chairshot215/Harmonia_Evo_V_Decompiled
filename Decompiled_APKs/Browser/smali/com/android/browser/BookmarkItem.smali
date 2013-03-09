.class Lcom/android/browser/BookmarkItem;
.super Landroid/widget/HorizontalScrollView;
.source "BookmarkItem.java"


# static fields
.field static final MAX_TEXTVIEW_LEN:I = 0x50


# instance fields
.field protected mEnableScrolling:Z

.field protected mImageView:Landroid/widget/ImageView;

.field protected mTextView:Landroid/widget/TextView;

.field protected mTitle:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;

.field protected mUrlText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v2, p0, Lcom/android/browser/BookmarkItem;->mEnableScrolling:Z

    .line 52
    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->setClickable(Z)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->setEnableScrolling(Z)V

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f04001b

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    const v2, 0x7f0d0005

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/browser/BookmarkItem;->mTextView:Landroid/widget/TextView;

    .line 57
    const v2, 0x7f0d0006

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/browser/BookmarkItem;->mUrlText:Landroid/widget/TextView;

    .line 58
    const v2, 0x7f0d0004

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    .line 59
    const v2, 0x7f0d004e

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, star:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    return-void
.end method


# virtual methods
.method copyTo(Lcom/android/browser/BookmarkItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 68
    iget-object v0, p1, Lcom/android/browser/BookmarkItem;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/BookmarkItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p1, Lcom/android/browser/BookmarkItem;->mUrlText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/BookmarkItem;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p1, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 159
    iget-boolean v3, p0, Lcom/android/browser/BookmarkItem;->mEnableScrolling:Z

    if-eqz v3, :cond_0

    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;->measureChild(Landroid/view/View;II)V

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 166
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/android/browser/BookmarkItem;->mPaddingLeft:I

    iget v4, p0, Lcom/android/browser/BookmarkItem;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/android/browser/BookmarkItem;->getChildMeasureSpec(III)I

    move-result v1

    .line 168
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Lcom/android/browser/BookmarkItem;->mPaddingTop:I

    iget v4, p0, Lcom/android/browser/BookmarkItem;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/android/browser/BookmarkItem;->getChildMeasureSpec(III)I

    move-result v0

    .line 171
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 178
    iget-boolean v3, p0, Lcom/android/browser/BookmarkItem;->mEnableScrolling:Z

    if-eqz v3, :cond_0

    .line 179
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 194
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 186
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/browser/BookmarkItem;->mPaddingLeft:I

    iget v4, p0, Lcom/android/browser/BookmarkItem;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/android/browser/BookmarkItem;->getChildMeasureSpec(III)I

    move-result v1

    .line 189
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Lcom/android/browser/BookmarkItem;->mPaddingTop:I

    iget v4, p0, Lcom/android/browser/BookmarkItem;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/android/browser/BookmarkItem;->getChildMeasureSpec(III)I

    move-result v0

    .line 193
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/browser/BookmarkItem;->mEnableScrolling:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setEnableScrolling(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/browser/BookmarkItem;->mEnableScrolling:Z

    .line 142
    iget-boolean v0, p0, Lcom/android/browser/BookmarkItem;->mEnableScrolling:Z

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkItem;->setFocusable(Z)V

    .line 143
    iget-boolean v0, p0, Lcom/android/browser/BookmarkItem;->mEnableScrolling:Z

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkItem;->setFocusableInTouchMode(Z)V

    .line 144
    iget-boolean v0, p0, Lcom/android/browser/BookmarkItem;->mEnableScrolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkItem;->requestDisallowInterceptTouchEvent(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/android/browser/BookmarkItem;->requestLayout()V

    .line 146
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method setFaviconBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/16 v1, 0x50

    .line 108
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BookmarkItem;->mTitle:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    const/16 v1, 0x50

    .line 126
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;

    .line 132
    invoke-static {p1}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
