.class Lcom/google/android/gm/LabelListFragment$LabelsAdapter;
.super Landroid/widget/BaseAdapter;
.source "LabelListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/LabelListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelsAdapter"
.end annotation


# instance fields
.field private mData:Lcom/google/android/gm/provider/LabelList;

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/LabelListFragment$LabelListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentLabels:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

.field final synthetic this$0:Lcom/google/android/gm/LabelListFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/LabelListFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 305
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mItems:Ljava/util/List;

    .line 307
    new-instance v0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter$1;-><init>(Lcom/google/android/gm/LabelListFragment$LabelsAdapter;)V

    iput-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/LabelListFragment;Lcom/google/android/gm/LabelListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;-><init>(Lcom/google/android/gm/LabelListFragment;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gm/LabelListFragment$LabelsAdapter;)Lcom/google/android/gm/provider/LabelList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/LabelListFragment$LabelsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->extractLabelList()V

    return-void
.end method

.method private addSection(ILjava/util/List;)V
    .locals 5
    .parameter "headingRes"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p2, labels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Label;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    iget-object v2, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mItems:Ljava/util/List;

    new-instance v3, Lcom/google/android/gm/LabelListFragment$LabelListItem;

    iget-object v4, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    #getter for: Lcom/google/android/gm/LabelListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/gm/LabelListFragment;->access$400(Lcom/google/android/gm/LabelListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gm/LabelListFragment$LabelListItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Label;

    .line 415
    .local v1, label:Lcom/google/android/gm/provider/Label;
    iget-object v2, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mItems:Ljava/util/List;

    new-instance v3, Lcom/google/android/gm/LabelListFragment$LabelListItem;

    invoke-direct {v3, v1}, Lcom/google/android/gm/LabelListFragment$LabelListItem;-><init>(Lcom/google/android/gm/provider/Label;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    :cond_1
    return-void
.end method

.method private addSplitLabelLists(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, displayableLabels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Label;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 386
    .local v3, otherLabels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Label;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/Label;

    .line 387
    .local v2, label:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->isSystemLabel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    iget-object v5, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mItems:Ljava/util/List;

    new-instance v6, Lcom/google/android/gm/LabelListFragment$LabelListItem;

    invoke-direct {v6, v2}, Lcom/google/android/gm/LabelListFragment$LabelListItem;-><init>(Lcom/google/android/gm/provider/Label;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    .end local v2           #label:Lcom/google/android/gm/provider/Label;
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 397
    .local v0, displayOrderedRecentLabels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Label;>;"
    iget-object v5, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mRecentLabels:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    invoke-virtual {v5}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->getOrderedRecentLabels()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 398
    .local v4, recentCanonicalName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v5, v4}, Lcom/google/android/gm/provider/LabelList;->get(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v2

    .line 399
    .restart local v2       #label:Lcom/google/android/gm/provider/Label;
    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->shouldHideLabel(Lcom/google/android/gm/provider/Label;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 400
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 403
    .end local v2           #label:Lcom/google/android/gm/provider/Label;
    .end local v4           #recentCanonicalName:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    #getter for: Lcom/google/android/gm/LabelListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/gm/LabelListFragment;->access$400(Lcom/google/android/gm/LabelListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gm/RecentLabelsCache;->getInstance(Landroid/content/Context;)Lcom/google/android/gm/RecentLabelsCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gm/RecentLabelsCache;->getRecentLabelDisplayComparator()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 406
    const v5, 0x7f0c0159

    invoke-direct {p0, v5, v0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->addSection(ILjava/util/List;)V

    .line 407
    const v5, 0x7f0c015a

    invoke-direct {p0, v5, v3}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->addSection(ILjava/util/List;)V

    .line 408
    return-void
.end method

.method private extractLabelList()V
    .locals 6

    .prologue
    .line 361
    iget-object v4, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 363
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 364
    .local v0, displayableLabels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Label;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/LabelList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 365
    iget-object v4, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v4, v1}, Lcom/google/android/gm/provider/LabelList;->get(I)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 366
    .local v3, label:Lcom/google/android/gm/provider/Label;
    invoke-direct {p0, v3}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->shouldHideLabel(Lcom/google/android/gm/provider/Label;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 367
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v3           #label:Lcom/google/android/gm/provider/Label;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->hasRecentLabels()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 372
    invoke-direct {p0, v0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->addSplitLabelLists(Ljava/util/List;)V

    .line 378
    :cond_2
    return-void

    .line 374
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/Label;

    .line 375
    .restart local v3       #label:Lcom/google/android/gm/provider/Label;
    iget-object v4, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mItems:Ljava/util/List;

    new-instance v5, Lcom/google/android/gm/LabelListFragment$LabelListItem;

    invoke-direct {v5, v3}, Lcom/google/android/gm/LabelListFragment$LabelListItem;-><init>(Lcom/google/android/gm/provider/Label;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getLabelItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Lcom/google/android/gm/provider/Label;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "v"
    .parameter "parent"
    .parameter "inflater"
    .parameter "label"

    .prologue
    const/4 v7, 0x0

    .line 444
    if-nez p2, :cond_1

    .line 445
    const v4, 0x7f040037

    invoke-virtual {p4, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 446
    new-instance v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;

    invoke-direct {v2, v7}, Lcom/google/android/gm/LabelListFragment$ViewHolder;-><init>(Lcom/google/android/gm/LabelListFragment$1;)V

    .line 447
    .local v2, holder:Lcom/google/android/gm/LabelListFragment$ViewHolder;
    const v4, 0x7f0f0012

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->labelCountView:Landroid/widget/TextView;

    .line 448
    const v4, 0x7f0f0010

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->name:Landroid/widget/TextView;

    .line 449
    const v4, 0x7f0f00a0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->description:Landroid/widget/TextView;

    .line 450
    const v4, 0x7f0f009f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->labelBox:Landroid/widget/ImageView;

    .line 451
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object v4, p2

    .line 455
    check-cast v4, Lcom/google/android/gm/LabelItemView;

    iget-object v5, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    #getter for: Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/gm/LabelListFragment;->access$700(Lcom/google/android/gm/LabelListFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    #getter for: Lcom/google/android/gm/LabelListFragment;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;
    invoke-static {v6}, Lcom/google/android/gm/LabelListFragment;->access$800(Lcom/google/android/gm/LabelListFragment;)Lcom/google/android/gm/LabelItemView$DropHandler;

    move-result-object v6

    invoke-virtual {v4, v5, p5, v6}, Lcom/google/android/gm/LabelItemView;->bind(Ljava/lang/String;Lcom/google/android/gm/provider/Label;Lcom/google/android/gm/LabelItemView$DropHandler;)V

    .line 457
    iget-object v4, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p5}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v4, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    invoke-virtual {v4}, Lcom/google/android/gm/LabelListFragment;->isManageLabelMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    iget-object v4, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v4, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    invoke-virtual {p5}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/google/android/gm/LabelListFragment;->getLabelDescription(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/google/android/gm/LabelListFragment;->access$900(Lcom/google/android/gm/LabelListFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v4, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->labelCountView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    :cond_0
    iget-object v4, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    #getter for: Lcom/google/android/gm/LabelListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/gm/LabelListFragment;->access$400(Lcom/google/android/gm/LabelListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {p5}, Lcom/google/android/gm/Utils;->getLabelDisplayCount(Lcom/google/android/gm/provider/Label;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/gm/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, count:Ljava/lang/String;
    iget-object v4, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->labelCountView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {p5}, Lcom/google/android/gm/provider/Label;->getBackgroundColor()I

    move-result v0

    .line 472
    .local v0, backgroundColor:I
    invoke-static {}, Lcom/google/android/gm/utils/LabelColorUtils;->getDefaultLabelBackgroundColor()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 473
    iget-object v4, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->labelBox:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 480
    :goto_1
    return-object p2

    .line 453
    .end local v0           #backgroundColor:I
    .end local v1           #count:Ljava/lang/String;
    .end local v2           #holder:Lcom/google/android/gm/LabelListFragment$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;

    .restart local v2       #holder:Lcom/google/android/gm/LabelListFragment$ViewHolder;
    goto :goto_0

    .line 475
    .restart local v0       #backgroundColor:I
    .restart local v1       #count:Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 476
    .local v3, paintDrawable:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 477
    iget-object v4, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->labelBox:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private hasRecentLabels()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mRecentLabels:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mRecentLabels:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    invoke-virtual {v0}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldHideLabel(Lcom/google/android/gm/provider/Label;)Z
    .locals 1
    .parameter "label"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/LabelListFragment;->isManageLabelMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getForceSyncNone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getForceSyncAll()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 522
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 490
    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/LabelListFragment$LabelListItem;

    invoke-virtual {v1}, Lcom/google/android/gm/LabelListFragment$LabelListItem;->getItemType()I

    move-result v0

    .line 491
    .local v0, i:I
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "v"
    .parameter "parent"

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gm/LabelListFragment$LabelListItem;

    .line 423
    .local v7, item:Lcom/google/android/gm/LabelListFragment$LabelListItem;
    invoke-virtual {v7}, Lcom/google/android/gm/LabelListFragment$LabelListItem;->isHeader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    #getter for: Lcom/google/android/gm/LabelListFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/google/android/gm/LabelListFragment;->access$500(Lcom/google/android/gm/LabelListFragment;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, v7, Lcom/google/android/gm/LabelListFragment$LabelListItem;->mLabel:Lcom/google/android/gm/provider/Label;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->getLabelItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Lcom/google/android/gm/provider/Label;)Landroid/view/View;

    move-result-object v0

    .line 438
    :goto_0
    return-object v0

    .line 428
    :cond_0
    if-nez p2, :cond_1

    .line 429
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    #getter for: Lcom/google/android/gm/LabelListFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/google/android/gm/LabelListFragment;->access$500(Lcom/google/android/gm/LabelListFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 431
    new-instance v6, Lcom/google/android/gm/LabelListFragment$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/google/android/gm/LabelListFragment$ViewHolder;-><init>(Lcom/google/android/gm/LabelListFragment$1;)V

    .line 432
    .local v6, holder:Lcom/google/android/gm/LabelListFragment$ViewHolder;
    const v0, 0x7f0f0010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/google/android/gm/LabelListFragment$ViewHolder;->name:Landroid/widget/TextView;

    .line 433
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 437
    :goto_1
    iget-object v0, v6, Lcom/google/android/gm/LabelListFragment$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/google/android/gm/LabelListFragment$LabelListItem;->mHeaderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p2

    .line 438
    goto :goto_0

    .line 435
    .end local v6           #holder:Lcom/google/android/gm/LabelListFragment$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gm/LabelListFragment$ViewHolder;

    .restart local v6       #holder:Lcom/google/android/gm/LabelListFragment$ViewHolder;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 503
    invoke-direct {p0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->hasRecentLabels()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/LabelListFragment$LabelListItem;

    invoke-virtual {v0}, Lcom/google/android/gm/LabelListFragment$LabelListItem;->isHeader()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setData(Lcom/google/android/gm/provider/LabelList;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/LabelList;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 321
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    .line 322
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/LabelList;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 323
    invoke-direct {p0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->extractLabelList()V

    .line 324
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->notifyDataSetChanged()V

    .line 325
    return-void
.end method

.method public setRecentLabels(Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;)V
    .locals 2
    .parameter "recents"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mRecentLabels:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mRecentLabels:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->unregisterObserver(Landroid/database/DataSetObserver;)V

    .line 331
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mRecentLabels:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    .line 332
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mRecentLabels:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 333
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    if-eqz v0, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->extractLabelList()V

    .line 335
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->notifyDataSetChanged()V

    .line 337
    :cond_1
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/LabelList;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mRecentLabels:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mRecentLabels:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->unregisterObserver(Landroid/database/DataSetObserver;)V

    .line 346
    :cond_1
    return-void
.end method
