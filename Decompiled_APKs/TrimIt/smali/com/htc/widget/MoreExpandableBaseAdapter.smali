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

    .prologue
    .line 34
    const-string v0, "MoreExpandableBaseAdapter"

    sput-object v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    .line 36
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    .line 39
    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mListItemHeight:I

    .line 643
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    .line 644
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    .line 645
    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    .line 646
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    .line 647
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 648
    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    .line 47
    invoke-direct {p0, p1, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->init(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 3
    .parameter "context"
    .parameter
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

    .prologue
    .local p2, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    .line 36
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    .line 39
    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mListItemHeight:I

    .line 643
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    .line 644
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    .line 645
    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    .line 646
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    .line 647
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 648
    iput v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->init(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 58
    return-void
.end method

.method private hideSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z
    .locals 6
    .parameter "self"

    .prologue
    const/4 v5, 0x1

    .line 567
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    .line 568
    .local v1, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-nez v1, :cond_1

    .line 581
    :cond_0
    return v5

    .line 571
    :cond_1
    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v2

    .line 572
    .local v2, sibling:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 574
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 575
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 576
    .local v3, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 577
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 3
    .parameter "context"
    .parameter
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

    .prologue
    .line 61
    .local p2, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    .line 62
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    .line 64
    if-nez p2, :cond_0

    .line 65
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x205004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mListItemHeight:I

    .line 70
    const/4 v0, 0x0

    .line 71
    return-void

    .line 67
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    goto :goto_0
.end method

.method private showChildren(ILcom/htc/widget/MoreExpandableItemInfo;Lcom/htc/widget/MoreExpandableItemInfo;)Z
    .locals 4
    .parameter "position"
    .parameter "self"
    .parameter "expandedChild"

    .prologue
    const/4 v3, 0x1

    .line 608
    if-eqz p2, :cond_0

    .line 609
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 611
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 614
    :cond_0
    return v3
.end method

.method private showSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z
    .locals 7
    .parameter "self"

    .prologue
    const/4 v6, 0x1

    .line 586
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    .line 587
    .local v2, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-nez v2, :cond_1

    .line 603
    :cond_0
    return v6

    .line 590
    :cond_1
    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v3

    .line 591
    .local v3, sibling:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 593
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 594
    .local v0, addPos:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 595
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 596
    .local v4, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 597
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, v0, v4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method Destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 698
    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    .line 699
    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    .line 700
    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 701
    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    .line 702
    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    .line 703
    iput-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 704
    return-void
.end method

.method appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)Z
    .locals 8
    .parameter "self"
    .parameter
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

    .prologue
    .local p2, newChildren:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v6, 0x0

    .line 202
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 204
    .local v0, expandLevel:I
    if-nez p2, :cond_0

    move v5, v6

    .line 233
    :goto_0
    return v5

    .line 206
    :cond_0
    if-nez p1, :cond_1

    move v5, v6

    .line 207
    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 209
    goto :goto_0

    .line 210
    :cond_2
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    move v5, v6

    .line 211
    goto :goto_0

    .line 212
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 213
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 214
    .local v3, selfPosition:I
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v5

    if-nez v5, :cond_4

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)Z

    move-result v5

    goto :goto_0

    .line 217
    :cond_4
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 218
    .local v2, newChildrenList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 220
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 222
    .local v4, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 226
    .end local v4           #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    :cond_5
    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 227
    invoke-virtual {p1, v2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    .line 228
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 229
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 230
    const/4 v5, 0x1

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    .end local v2           #newChildrenList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    .end local v3           #selfPosition:I
    :cond_6
    move v5, v6

    .line 233
    goto :goto_0
.end method

.method appendRoot(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 263
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 264
    return-void
.end method

.method changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)Z
    .locals 7
    .parameter "self"
    .parameter
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

    .prologue
    .local p2, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v5, 0x0

    .line 163
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 164
    .local v0, expandLevel:I
    if-nez p2, :cond_0

    move v4, v5

    .line 189
    :goto_0
    return v4

    .line 166
    :cond_0
    if-nez p1, :cond_1

    move v4, v5

    .line 167
    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    .line 169
    goto :goto_0

    .line 170
    :cond_2
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    .line 171
    invoke-virtual {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    move v4, v5

    .line 172
    goto :goto_0

    .line 173
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 174
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 175
    .local v2, selfPosition:I
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 179
    .local v3, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 183
    .end local v3           #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    :cond_4
    invoke-virtual {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    .line 184
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 185
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 186
    const/4 v4, 0x1

    goto :goto_0

    .line 188
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    .end local v2           #selfPosition:I
    :cond_5
    invoke-virtual {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    move v4, v5

    .line 189
    goto :goto_0
.end method

.method changeRoot(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 252
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 253
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    .line 254
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 255
    return-void
.end method

.method collapseAll()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 629
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    const/high16 v1, -0x8000

    .line 633
    :goto_0
    return v1

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 633
    .local v0, rootExpandedPosition:I
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
    .parameter "position"
    .parameter "self"

    .prologue
    .line 509
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getExpandedChild()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    .line 510
    .local v0, expandedChild:Lcom/htc/widget/MoreExpandableItemInfo;
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 512
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->showChildren(ILcom/htc/widget/MoreExpandableItemInfo;Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 513
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method collapseGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 3
    .parameter "position"
    .parameter "self"

    .prologue
    .line 498
    invoke-virtual {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 499
    invoke-direct {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->showSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 500
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    .line 501
    .local v0, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setHideViewFlag(II)V

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 504
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z
    .locals 5
    .parameter "self"

    .prologue
    .line 520
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isChildExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 521
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v2

    .line 522
    .local v2, selfLevel:I
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getExpandedChild()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    .line 524
    .local v3, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {p0, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 525
    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableItemInfo;->onCollapseDelete()V

    .line 526
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 527
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 542
    .end local v2           #selfLevel:I
    .end local v3           #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->setGroupCollapse()V

    .line 543
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 544
    const/4 v4, 0x1

    return v4

    .line 530
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v0

    .line 531
    .local v0, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 534
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 536
    .restart local v3       #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableItemInfo;->onCollapseDelete()V

    .line 537
    iget-object v4, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 538
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method deleteItem(ILcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 1
    .parameter "position"
    .parameter "self"

    .prologue
    .line 624
    invoke-virtual {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 625
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method deleteItem(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 284
    .local v2, self:Lcom/htc/widget/MoreExpandableItemInfo;
    if-nez v2, :cond_0

    .line 311
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    .line 287
    .local v1, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    invoke-virtual {p0, p1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->deleteItem(ILcom/htc/widget/MoreExpandableItemInfo;)I

    .line 289
    if-nez v1, :cond_2

    .line 290
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 310
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0, v3, v1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->showChildren(ILcom/htc/widget/MoreExpandableItemInfo;Lcom/htc/widget/MoreExpandableItemInfo;)Z

    goto :goto_1

    .line 295
    :cond_3
    if-eqz v1, :cond_5

    .line 296
    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 297
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v3, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->deleteItem(ILcom/htc/widget/MoreExpandableItemInfo;)I

    .line 298
    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    .line 299
    .local v0, grandParent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-eqz v0, :cond_1

    .line 300
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->showChildren(ILcom/htc/widget/MoreExpandableItemInfo;Lcom/htc/widget/MoreExpandableItemInfo;)Z

    goto :goto_1

    .line 303
    .end local v0           #grandParent:Lcom/htc/widget/MoreExpandableItemInfo;
    :cond_4
    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    :cond_5
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method expandAndSetChildrenWithOutAnimation(ILcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)I
    .locals 3
    .parameter "position"
    .parameter "self"
    .parameter
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

    .prologue
    .line 707
    .local p3, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {p0, p2, p3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 708
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 709
    invoke-direct {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->hideSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 710
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setGroupExpanded()V

    .line 712
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 713
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method expandGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I
    .locals 5
    .parameter "position"
    .parameter "self"

    .prologue
    .line 479
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 481
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 482
    .local v0, expandedLevel:I
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    .line 483
    .local v1, selfLevel:I
    if-lt v0, v1, :cond_0

    .line 484
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {p0, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 486
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->hideSibling(Lcom/htc/widget/MoreExpandableItemInfo;)Z

    .line 487
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setGroupExpanded()V

    .line 491
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setHideViewFlag(II)V

    .line 492
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->notifyDataSetChanged()V

    .line 493
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

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 274
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

    .prologue
    .line 619
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getExpandedRootPosition()I
    .locals 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 675
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
    .parameter "self"

    .prologue
    .line 471
    if-nez p1, :cond_0

    .line 472
    const/high16 v0, -0x8000

    .line 474
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
    .parameter "position"

    .prologue
    .line 79
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 86
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getId()J

    move-result-wide v0

    .line 89
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 315
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 316
    .local v17, self:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v16

    .line 317
    .local v16, mother:Lcom/htc/widget/MoreExpandableItemInfo;
    const/high16 v5, -0x8000

    .line 318
    .local v5, groupPosition:I
    const/high16 v6, -0x8000

    .line 319
    .local v6, childPosition:I
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v14

    .line 320
    .local v14, level:I
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->isLastChild()Z

    move-result v7

    .line 321
    .local v7, isLastChild:Z
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v13

    .line 322
    .local v13, isGroupExpanded:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getExpandedLevel()I

    move-result v11

    .line 324
    .local v11, expandedLevel:I
    if-eqz v16, :cond_0

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 326
    move/from16 v0, p1

    invoke-static {v5, v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildPosition(II)I

    move-result v6

    .line 329
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 330
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 333
    .local v19, view:Landroid/view/View;
    const v4, 0x2020221

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 334
    .local v12, indicator:Landroid/widget/ImageView;
    if-nez v12, :cond_1

    .line 335
    move-object/from16 v0, v19

    instance-of v4, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_5

    .line 336
    new-instance v12, Lcom/htc/widget/HtcListItemImageButton;

    .end local v12           #indicator:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v12, v4}, Lcom/htc/widget/HtcListItemImageButton;-><init>(Landroid/content/Context;)V

    .line 337
    .restart local v12       #indicator:Landroid/widget/ImageView;
    const v4, 0x2020221

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setId(I)V

    move-object/from16 v4, v19

    .line 338
    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v12}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 347
    :cond_1
    :goto_0
    if-eqz v13, :cond_6

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    const-string v8, "attachment_collapse_selector"

    const/high16 v9, 0x208

    invoke-static {v4, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    .end local v12           #indicator:Landroid/widget/ImageView;
    :cond_2
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->getUserBackgroundEnable()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 393
    :cond_3
    :goto_3
    move-object/from16 v0, v19

    instance-of v4, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_13

    .line 394
    if-ne v14, v11, :cond_f

    if-nez v6, :cond_f

    if-eqz v7, :cond_f

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x20800be

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .local v10, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v4, v19

    .line 396
    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    .line 434
    .end local v10           #d:Landroid/graphics/drawable/Drawable;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    if-eqz v4, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    if-ne v4, v8, :cond_4

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    move-object/from16 v0, v19

    instance-of v4, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_19

    move-object/from16 v4, v19

    .line 438
    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 439
    .local v15, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    iget v8, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    const/4 v4, 0x1

    iput v4, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v4, v19

    .line 441
    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v15}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    if-ne v4, v8, :cond_4

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    .line 453
    .end local v15           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-object v19

    .line 340
    .restart local v12       #indicator:Landroid/widget/ImageView;
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

    .end local v12           #indicator:Landroid/widget/ImageView;
    check-cast v12, Landroid/widget/ImageView;

    .line 341
    .restart local v12       #indicator:Landroid/widget/ImageView;
    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 342
    .local v15, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 343
    const/16 v4, 0xb

    invoke-virtual {v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v4, v19

    .line 344
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 352
    .end local v15           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    const-string v8, "common_expand"

    const v9, 0x20801ae

    invoke-static {v4, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 356
    .end local v12           #indicator:Landroid/widget/ImageView;
    .end local v19           #view:Landroid/view/View;
    :cond_7
    if-nez v16, :cond_8

    .line 357
    move/from16 v5, p1

    .line 358
    const/4 v6, -0x1

    :cond_8
    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 360
    invoke-virtual/range {v4 .. v9}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 363
    .restart local v19       #view:Landroid/view/View;
    const v4, 0x2020221

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 364
    .local v12, indicator:Landroid/view/View;
    if-eqz v12, :cond_2

    .line 365
    const/16 v4, 0x8

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 374
    .end local v12           #indicator:Landroid/view/View;
    :cond_9
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getId()I

    move-result v4

    const v8, 0x2020085

    if-eq v4, v8, :cond_3

    .line 377
    if-nez v16, :cond_a

    if-nez v13, :cond_a

    .line 378
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 379
    :cond_a
    if-nez v16, :cond_b

    if-eqz v13, :cond_b

    .line 380
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 381
    :cond_b
    if-eq v14, v11, :cond_c

    if-eqz v13, :cond_c

    .line 382
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 383
    :cond_c
    if-ne v14, v11, :cond_d

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->newExpandedChildrenBackgroundColor()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 386
    :cond_d
    if-eqz v7, :cond_e

    .line 387
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 389
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 397
    :cond_f
    if-ne v14, v11, :cond_10

    if-nez v6, :cond_10

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x20800ba

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10       #d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v4, v19

    .line 399
    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 400
    .end local v10           #d:Landroid/graphics/drawable/Drawable;
    :cond_10
    if-ne v14, v11, :cond_11

    if-eqz v7, :cond_11

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x20801a7

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10       #d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v4, v19

    .line 402
    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 403
    .end local v10           #d:Landroid/graphics/drawable/Drawable;
    :cond_11
    if-lez v14, :cond_12

    if-eq v14, v11, :cond_12

    if-eqz v13, :cond_12

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x20800c0

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10       #d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v4, v19

    .line 405
    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .end local v10           #d:Landroid/graphics/drawable/Drawable;
    :cond_12
    move-object/from16 v4, v19

    .line 407
    check-cast v4, Lcom/htc/widget/HtcListItem;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 410
    :cond_13
    const v4, 0x2020222

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 411
    .local v18, shadow:Landroid/widget/ImageView;
    if-nez v18, :cond_14

    .line 412
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x20900d5

    move-object/from16 v4, v19

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v9, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .end local v18           #shadow:Landroid/widget/ImageView;
    check-cast v18, Landroid/widget/ImageView;

    .restart local v18       #shadow:Landroid/widget/ImageView;
    move-object/from16 v4, v19

    .line 413
    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    :cond_14
    if-ne v14, v11, :cond_15

    if-nez v6, :cond_15

    if-eqz v7, :cond_15

    .line 416
    const v4, 0x20800be

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 417
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 418
    :cond_15
    if-ne v14, v11, :cond_16

    if-nez v6, :cond_16

    .line 419
    const v4, 0x20800ba

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 420
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 421
    :cond_16
    if-ne v14, v11, :cond_17

    if-eqz v7, :cond_17

    .line 422
    const v4, 0x20801a7

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 423
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 424
    :cond_17
    if-lez v14, :cond_18

    if-eq v14, v11, :cond_18

    if-eqz v13, :cond_18

    .line 425
    const v4, 0x20800c0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 426
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 428
    :cond_18
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 443
    .end local v18           #shadow:Landroid/widget/ImageView;
    :cond_19
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 444
    .local v15, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    iget v8, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    const/4 v4, 0x1

    iput v4, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 446
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 148
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method linkHideViewList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "maxCache"
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

    .prologue
    .line 666
    .local p1, hideViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p2, hideViewHeightList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewList:Ljava/util/ArrayList;

    .line 667
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 668
    iput p3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    .line 669
    return-void
.end method

.method newExpandedChildrenBackgroundColor()Landroid/graphics/drawable/StateListDrawable;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 687
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 688
    .local v0, expandedChildrenBackground:Landroid/graphics/drawable/StateListDrawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 689
    .local v2, transparent:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedChildrenBackgroundColor:I

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 690
    .local v1, itembackground:Landroid/graphics/drawable/Drawable;
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 691
    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 692
    new-array v3, v6, [I

    const v4, 0x101009c

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 693
    new-array v3, v5, [I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 694
    return-object v0
.end method

.method setChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 0
    .parameter "self"
    .parameter
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

    .prologue
    .line 463
    .local p2, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildren(Ljava/util/LinkedList;)V

    .line 464
    return-void
.end method

.method setExpandedChildrenBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 683
    iput p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mExpandedChildrenBackgroundColor:I

    .line 684
    return-void
.end method

.method setHideViewFlag(II)V
    .locals 1
    .parameter "hideLevel"
    .parameter "hideViewCount"

    .prologue
    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    .line 652
    iput p1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    .line 653
    iget v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    if-le p2, v0, :cond_0

    .line 654
    iget v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->MAX_CACHE:I

    iput v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    .line 657
    :goto_0
    return-void

    .line 656
    :cond_0
    iput p2, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    goto :goto_0
.end method

.method public setMoreExpandableItemInfo(Ljava/util/LinkedList;)V
    .locals 0
    .parameter
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

    .prologue
    .line 243
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    invoke-virtual {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->changeRoot(Ljava/util/LinkedList;)V

    .line 244
    return-void
.end method

.method unSetHideViewFlag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 660
    iput-boolean v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewFlag:Z

    .line 661
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideLevel:I

    .line 662
    iput v1, p0, Lcom/htc/widget/MoreExpandableBaseAdapter;->mHideViewCount:I

    .line 663
    return-void
.end method
