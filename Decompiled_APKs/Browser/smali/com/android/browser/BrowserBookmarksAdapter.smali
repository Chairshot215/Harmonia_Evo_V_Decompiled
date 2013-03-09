.class public Lcom/android/browser/BrowserBookmarksAdapter;
.super Landroid/widget/CursorAdapter;
.source "BrowserBookmarksAdapter.java"


# instance fields
.field mCurrentView:I

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "defaultView"

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    invoke-virtual {p0, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->selectView(I)V

    .line 44
    return-void
.end method


# virtual methods
.method bindGridView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 60
    .local v0, padding:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p1, v0, v5, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    const v5, 0x7f0d001d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 63
    .local v1, thumb:Landroid/widget/ImageView;
    const v5, 0x7f0d0017

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 65
    .local v4, tv:Landroid/widget/TextView;
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v5, 0x6

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    const v5, 0x7f020056

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 73
    .local v3, thumbData:[B
    const/4 v2, 0x0

    .line 74
    .local v2, thumbBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 75
    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 78
    :cond_1
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    if-nez v2, :cond_2

    .line 80
    const v5, 0x7f02000e

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_1
    const v5, 0x7f02000c

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method bindListView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 89
    const v4, 0x7f0d0004

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .local v0, favicon:Landroid/widget/ImageView;
    const v4, 0x7f0d0017

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 92
    .local v3, tv:Landroid/widget/TextView;
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v4, 0x6

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    const v4, 0x7f020026

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 99
    .local v2, faviconData:[B
    const/4 v1, 0x0

    .line 100
    .local v1, faviconBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 101
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 104
    :cond_1
    if-nez v1, :cond_2

    .line 105
    const v4, 0x7f020001

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :goto_1
    const v4, 0x7f020005

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->bindListView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->bindGridView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 1
    .parameter "position"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getViewMode()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentView:I

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 115
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040006

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040009

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public selectView(I)V
    .locals 3
    .parameter "view"

    .prologue
    .line 123
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iput p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentView:I

    .line 128
    return-void
.end method
