.class public Lcom/htc/music/widget/MusicCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "MusicCategoryAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mStrings:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x2090049

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_1
    const v2, 0x2020010

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, p2

    goto :goto_0
.end method

.method public setData([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    return-void
.end method
