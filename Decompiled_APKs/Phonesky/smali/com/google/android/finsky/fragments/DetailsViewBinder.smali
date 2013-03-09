.class public abstract Lcom/google/android/finsky/fragments/DetailsViewBinder;
.super Ljava/lang/Object;
.source "DetailsViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field protected mDoc:Lcom/google/android/finsky/api/model/Document;

.field protected mHeaderLayoutId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayout:Landroid/view/View;

.field protected mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

.field protected mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V
    .locals 2
    .parameter "view"
    .parameter "doc"
    .parameter "headerStringId"

    .prologue
    .line 65
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, headerString:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    .line 67
    return-void

    .line 65
    .end local v0           #headerString:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "doc"
    .parameter "headerString"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    .line 71
    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 73
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public bind(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0
    .parameter "view"
    .parameter "headerString"
    .parameter "headerBackendId"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    .line 79
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->setupHeader(Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method public hideHeader()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    iget v2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mHeaderLayoutId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    .local v0, headerView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 102
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 1
    .parameter "context"
    .parameter "api"
    .parameter "navManager"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 59
    iput-object p3, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    const v0, 0x7f0800af

    iput v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mHeaderLayoutId:I

    .line 62
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public setHeaderNavigable(Z)V
    .locals 5
    .parameter "isNavigable"

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    iget v4, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mHeaderLayoutId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, headerView:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    const v1, 0x7f020092

    .line 109
    .local v1, rightDrawableId:I
    :goto_0
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 110
    return-void

    .end local v1           #rightDrawableId:I
    :cond_0
    move v1, v2

    .line 108
    goto :goto_0
.end method

.method protected setupHeader(Ljava/lang/String;I)V
    .locals 4
    .parameter "headerString"
    .parameter "headerBackendId"

    .prologue
    .line 86
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    iget v3, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mHeaderLayoutId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    .local v1, headerView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    .line 95
    .local v0, color:I
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .end local v0           #color:I
    :cond_1
    return-void
.end method
