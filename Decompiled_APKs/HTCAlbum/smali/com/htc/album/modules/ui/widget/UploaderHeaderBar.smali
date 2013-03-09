.class public Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;
.super Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
.source "UploaderHeaderBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/GalleryHeaderBar",
        "<",
        "Landroid/widget/RelativeLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mHeaderTitle:Landroid/widget/TextView;

.field private mServiceIcon:Landroid/widget/ImageView;

.field private mTitleGroup:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mTitleGroup:Landroid/widget/RelativeLayout;

    .line 24
    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mServiceIcon:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mHeaderTitle:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mTitleGroup:Landroid/widget/RelativeLayout;

    .line 36
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mServiceIcon:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mHeaderTitle:Landroid/widget/TextView;

    .line 38
    return-void
.end method


# virtual methods
.method public getMaxButtonCount()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mHeaderTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleGroup()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mTitleGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTitleIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mServiceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public bridge synthetic onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 20
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/HeaderButton;

    move-result-object v0

    return-object v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/HeaderButton;
    .locals 1
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public setServiceIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mServiceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mServiceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setServiceIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mServiceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mServiceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setServiceIconResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mServiceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mServiceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mHeaderTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mHeaderTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->mHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
