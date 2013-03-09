.class public Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsCastCreditsViewBinder.java"


# instance fields
.field private mCreditsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method private populateContent()V
    .locals 9

    .prologue
    .line 40
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mLayout:Landroid/view/View;

    const v7, 0x7f0800d4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 41
    .local v3, mainContainer:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mCreditsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;

    .line 46
    .local v0, credit:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040027

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 50
    .local v1, creditEntry:Landroid/view/ViewGroup;
    const v6, 0x7f08007b

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 51
    .local v5, roleTitle:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->getCredit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v6, 0x7f08007c

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 54
    .local v4, roleContent:Landroid/widget/TextView;
    const-string v6, ", "

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->getNameList()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 58
    .end local v0           #credit:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    .end local v1           #creditEntry:Landroid/view/ViewGroup;
    .end local v4           #roleContent:Landroid/widget/TextView;
    .end local v5           #roleTitle:Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V
    .locals 2
    .parameter "view"
    .parameter "doc"
    .parameter "hasDetailsDataLoaded"

    .prologue
    .line 28
    const v0, 0x7f070139

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    .line 30
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getCreditsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mCreditsList:Ljava/util/List;

    .line 31
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mCreditsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mCreditsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->populateContent()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
