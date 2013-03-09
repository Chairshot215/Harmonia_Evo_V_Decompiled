.class public Lcom/htc/album/modules/ui/widget/SearchHeaderBar;
.super Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
.source "SearchHeaderBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/GalleryHeaderBar",
        "<",
        "Lcom/htc/widget/HeaderBar;",
        ">;"
    }
.end annotation


# instance fields
.field mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "nLayoutID"

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;-><init>(Landroid/content/Context;I)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    .line 20
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/widget/HeaderBar;

    const v1, 0x7f0a0074

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarInput;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    .line 21
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarInput;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 24
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public getEditTextView()Landroid/widget/AutoCompleteTextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
