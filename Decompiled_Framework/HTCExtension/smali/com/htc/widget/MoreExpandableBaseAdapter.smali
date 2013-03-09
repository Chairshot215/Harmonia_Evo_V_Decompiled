.class public abstract Lcom/htc/widget/MoreExpandableBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "MoreExpandableBaseAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private MAX_CACHE:I

.field private mContext:Landroid/content/Context;

.field private mExpandedChildrenBackgroundColor:I

.field private mExpandedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHideLevel:I

.field private mHideViewCount:I

.field private mHideViewFlag:Z

.field private mHideViewHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHideViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MoreExpandableBaseAdapter"

    sput-object v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mListItemHeight:I

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->init(Landroid/content/Context;Ljava/util/LinkedList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mListItemHeight:I

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->init(Landroid/content/Context;Ljava/util/LinkedList;)V

    return-void
.end method

.method private hideSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return v5

    :cond_1
    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    :goto_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mListItemHeight:I

    const/4 v0, 0x0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    goto :goto_0
.end method

.method private showChildren(ILcom/htc/widget/MoreExpandableItemInfo;Lcom/htc/widget/MoreExpandableItemInfo;)Z
    .locals 4

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    :cond_0
    return v3
.end method

.method private showSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return v6

    :cond_1
    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, v0, v4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method Destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    return-void
.end method

.method appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    if-nez p1, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)Z

    move-result v5

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, v2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    move v5, v6

    goto :goto_0
.end method

.method appendRoot(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    if-nez p2, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    if-nez p1, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    invoke-virtual {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    move v4, v5

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    move v4, v5

    goto :goto_0
.end method

.method changeRoot(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method collapseAll()I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x8000

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v1

    goto :goto_0
.end method

.method collapseChild(ILcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 2

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getExpandedChild()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->showChildren(ILcom/htc/widget/MoreExpandableItemInfo;Lcom/htc/widget/MoreExpandableItemInfo;)Z

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method collapseGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 3

    invoke-virtual {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    invoke-direct {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->showSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setHideViewFlag(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isChildExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getExpandedChild()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableItemInfo;->onCollapseDelete()V

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->setGroupCollapse()V

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    return v4

    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableItemInfo;->onCollapseDelete()V

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method deleteItem(ILcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 1

    invoke-virtual {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method deleteItem(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/MoreExpandableItemInfo;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->deleteItem(ILcom/htc/widget/MoreExpandableItemInfo;)I

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0, v3, v1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->showChildren(ILcom/htc/widget/MoreExpandableItemInfo;Lcom/htc/widget/MoreExpandableItemInfo;)Z

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v3, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->deleteItem(ILcom/htc/widget/MoreExpandableItemInfo;)I

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->showChildren(ILcom/htc/widget/MoreExpandableItemInfo;Lcom/htc/widget/MoreExpandableItemInfo;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method expandAndSetChildrenWithOutAnimation(ILcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    invoke-direct {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->hideSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setGroupExpanded()V

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method expandGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 5

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {p0, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->hideSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setGroupExpanded()V

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setHideViewFlag(II)V

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public abstract getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    goto :goto_0
.end method

.method getExpandedLevel()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getExpandedRootPosition()I
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public abstract getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 1

    if-nez p1, :cond_0

    const/high16 v0, -0x8000

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v16

    const/high16 v5, -0x8000

    const/high16 v6, -0x8000

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v14

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->isLastChild()Z

    move-result v7

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getExpandedLevel()I

    move-result v11

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move/from16 v0, p1

    invoke-static {v5, v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildPosition(II)I

    move-result v6

    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    const v4, 0x2020221

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    if-nez v12, :cond_1

    move-object/from16 v0, v19

    instance-of v4, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_5

    new-instance v12, Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v12, v4}, Lcom/htc/widget/HtcListItemImageButton;-><init>(Landroid/content/Context;)V

    const v4, 0x2020221

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setId(I)V

    move-object/from16 v4, v19

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v12}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    const-string v8, "attachment_collapse_selector"

    const/high16 v9, 0x208

    invoke-static {v4, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->getUserBackgroundEnable()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    :goto_3
    move-object/from16 v0, v19

    instance-of v4, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_13

    if-ne v14, v11, :cond_f

    if-nez v6, :cond_f

    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x20800be

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v4, v19

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    if-eqz v4, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    if-ne v4, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    instance-of v4, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_19

    move-object/from16 v4, v19

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    iget v8, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    iput v4, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v4, v19

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v15}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    if-ne v4, v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    :cond_4
    return-object v19

    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x20900d4

    move-object/from16 v4, v19

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v9, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xf

    invoke-virtual {v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xb

    invoke-virtual {v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v4, v19

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    const-string v8, "common_expand"

    const v9, 0x20801ae

    invoke-static {v4, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_7
    if-nez v16, :cond_8

    move/from16 v5, p1

    const/4 v6, -0x1

    :cond_8
    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    const v4, 0x2020221

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_2

    const/16 v4, 0x8

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getId()I

    move-result v4

    const v8, 0x2020085

    if-eq v4, v8, :cond_3

    if-nez v16, :cond_a

    if-nez v13, :cond_a

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_a
    if-nez v16, :cond_b

    if-eqz v13, :cond_b

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_b
    if-eq v14, v11, :cond_c

    if-eqz v13, :cond_c

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_c
    if-ne v14, v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->newExpandedChildrenBackgroundColor()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_d
    if-eqz v7, :cond_e

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_f
    if-ne v14, v11, :cond_10

    if-nez v6, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x20800ba

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v4, v19

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_10
    if-ne v14, v11, :cond_11

    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x20801a7

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v4, v19

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_11
    if-lez v14, :cond_12

    if-eq v14, v11, :cond_12

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x20800c0

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v4, v19

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_12
    move-object/from16 v4, v19

    check-cast v4, Lcom/htc/widget/HtcListItem;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_13
    const v4, 0x2020222

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    if-nez v18, :cond_14

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x20900d5

    move-object/from16 v4, v19

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v9, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v4, v19

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_14
    if-ne v14, v11, :cond_15

    if-nez v6, :cond_15

    if-eqz v7, :cond_15

    const v4, 0x20800be

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_15
    if-ne v14, v11, :cond_16

    if-nez v6, :cond_16

    const v4, 0x20800ba

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_16
    if-ne v14, v11, :cond_17

    if-eqz v7, :cond_17

    const v4, 0x20801a7

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_17
    if-lez v14, :cond_18

    if-eq v14, v11, :cond_18

    if-eqz v13, :cond_18

    const v4, 0x20800c0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_18
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_19
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    iget v8, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    iput v4, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5
.end method

.method public isGroupExpanded(I)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method linkHideViewList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    return-void
.end method

.method newExpandedChildrenBackgroundColor()Landroid/graphics/drawable/StateListDrawable;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedChildrenBackgroundColor:I

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v6, [I

    const v4, 0x101009c

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v5, [I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method setChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    return-void
.end method

.method setExpandedChildrenBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedChildrenBackgroundColor:I

    return-void
.end method

.method setHideViewFlag(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    iput p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    iget v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    if-le p2, v0, :cond_0

    iget v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    iput v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    goto :goto_0
.end method

.method public setMoreExpandableItemInfo(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->changeRoot(Ljava/util/LinkedList;)V

    return-void
.end method

.method unSetHideViewFlag()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    iput v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    return-void
.end method
