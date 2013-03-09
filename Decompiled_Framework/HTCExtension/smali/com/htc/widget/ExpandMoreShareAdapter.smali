.class public Lcom/htc/widget/ExpandMoreShareAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpandMoreShareAdapter.java"


# static fields
.field public static final IndexOfMore:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpand:Z

.field private mListadapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mExpand:Z

    iput-object p1, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    iput-object p2, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public IsExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mExpand:Z

    return v0
.end method

.method public expand()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mExpand:Z

    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mExpand:Z

    if-nez v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-boolean v4, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mExpand:Z

    if-nez v4, :cond_2

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x2090071

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x2020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x1040371

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x202001a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x2080345

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mListadapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public shrink()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/ExpandMoreShareAdapter;->mExpand:Z

    return-void
.end method
