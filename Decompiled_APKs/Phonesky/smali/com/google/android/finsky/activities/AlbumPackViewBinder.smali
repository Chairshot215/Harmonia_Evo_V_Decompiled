.class public Lcom/google/android/finsky/activities/AlbumPackViewBinder;
.super Lcom/google/android/finsky/activities/DetailsPackViewBinder;
.source "AlbumPackViewBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleEmptyData()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 12
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->setHeaderNavigable(Z)V

    .line 13
    iget-object v1, p0, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 14
    .local v0, subheaderView:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    const v1, 0x7f070258

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 17
    iget-object v1, p0, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 19
    return-void
.end method
