.class Lcom/android/browser/HistoryItem;
.super Lcom/android/browser/BookmarkItem;
.source "HistoryItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mStar:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;Z)V

    .line 39
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "showStar"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .line 44
    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/android/browser/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    .line 45
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 46
    if-eqz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method copyTo(Lcom/android/browser/HistoryItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 54
    iget-object v0, p1, Lcom/android/browser/HistoryItem;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/HistoryItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p1, Lcom/android/browser/HistoryItem;->mUrlText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/HistoryItem;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/browser/HistoryItem;->setIsBookmark(Z)V

    .line 57
    iget-object v0, p1, Lcom/android/browser/HistoryItem;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/HistoryItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method isBookmark()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 80
    if-eqz p2, :cond_0

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/HistoryItem;->setIsBookmark(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/browser/HistoryItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/HistoryItem;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/HistoryItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/HistoryItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/HistoryItem;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setIsBookmark(Z)V
    .locals 2
    .parameter "isBookmark"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    return-void
.end method
