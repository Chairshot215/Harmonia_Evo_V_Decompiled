.class public Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;
.super Ljava/lang/Object;
.source "PartitionedHostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/PartitionedHostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandableExteriorAdapter"
.end annotation


# static fields
.field public static final SHOW_ALL:I = 0x7fffffff


# instance fields
.field private mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

.field private nMaxShowingEntries:I

.field final synthetic this$0:Lcom/android/htccontacts/widget/PartitionedHostAdapter;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/PartitionedHostAdapter;Lcom/htc/opensense/plugin/ExteriorListAdapter;I)V
    .locals 1
    .parameter
    .parameter "adapter"
    .parameter "maxShowingEntries"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->this$0:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 481
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->nMaxShowingEntries:I

    .line 485
    iput-object p2, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 486
    iput p3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->nMaxShowingEntries:I

    .line 487
    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 478
    iget v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->nMaxShowingEntries:I

    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 622
    return-void
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getAccountType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 503
    iget-object v2, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v1

    .line 504
    .local v1, count:I
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getMaxShowingEntries()I

    move-result v0

    .line 505
    .local v0, allowedCount:I
    if-lt v1, v0, :cond_0

    .line 506
    add-int/lit8 v1, v0, 0x1

    .line 508
    .end local v1           #count:I
    :cond_0
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExteriorContextMenuItems(I)Ljava/util/List;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getExteriorContextMenuItems(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExteriorListAdapter()Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    return-object v0
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getHostContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getId()I

    move-result v0

    return v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getMaxShowingEntries()I

    move-result v0

    .line 514
    .local v0, allowedCount:I
    if-lt p1, v0, :cond_0

    .line 515
    const/4 v1, 0x0

    .line 517
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemGroupId(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemGroupId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getMaxShowingEntries()I

    move-result v0

    .line 523
    .local v0, allowedCount:I
    if-lt p1, v0, :cond_0

    .line 524
    const-wide/16 v1, -0x1

    .line 526
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemOrderKey(I)Ljava/lang/Comparable;
    .locals 1
    .parameter "position"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemOrderKey(I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getItemSeparationKey(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemSeparationKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemSeparationText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "position"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemSeparationText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;
    .locals 2
    .parameter "position"

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getMaxShowingEntries()I

    move-result v0

    .line 626
    .local v0, allowedCount:I
    if-lt p1, v0, :cond_0

    .line 627
    const/4 v1, 0x0

    .line 629
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemsCountLimit()I
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemsCountLimit()I

    move-result v0

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getMaxShowingEntries()I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->nMaxShowingEntries:I

    return v0
.end method

.method public getPluginContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    return-object v0
.end method

.method public getToggleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v6, 0x7f0a01de

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 695
    if-nez p1, :cond_0

    .line 696
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportGridAlbumView()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 697
    iget-object v2, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->this$0:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    #getter for: Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->access$200(Lcom/android/htccontacts/widget/PartitionedHostAdapter;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x2090045

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 703
    :cond_0
    :goto_0
    const v2, 0x2020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 704
    .local v1, textView:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportGridAlbumView()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 705
    const v2, 0x20200fa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 706
    .local v0, image:Landroid/view/View;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 707
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 710
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 711
    const v2, 0x7f020020

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 722
    .end local v0           #image:Landroid/view/View;
    :cond_1
    :goto_1
    return-object p1

    .line 700
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->this$0:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    #getter for: Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->access$200(Lcom/android/htccontacts/widget/PartitionedHostAdapter;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x2090048

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 715
    .restart local v1       #textView:Landroid/widget/TextView;
    :cond_3
    if-eqz v1, :cond_1

    .line 716
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 719
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSorted()Z
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->isSorted()Z

    move-result v0

    return v0
.end method

.method public loadData()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->loadData()V

    .line 612
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->notifyDataSetChanged()V

    .line 548
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->notifyDataSetInvalidated()V

    .line 552
    return-void
.end method

.method public onContextItemSelected(ILcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;)Z
    .locals 1
    .parameter "contextMenuItemId"
    .parameter "info"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->onContextItemSelected(ILcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(I)V
    .locals 3
    .parameter "position"

    .prologue
    const v2, 0x7fffffff

    .line 650
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getMaxShowingEntries()I

    move-result v0

    .line 652
    .local v0, allowedCount:I
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportGridAlbumView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 653
    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 654
    :cond_0
    iput v2, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->nMaxShowingEntries:I

    .line 655
    iget-object v1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->this$0:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->onMoreItemClick()V

    .line 656
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->notifyDataSetChanged()V

    .line 668
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->onItemClick(I)V

    goto :goto_0

    .line 661
    :cond_2
    if-ge p1, v0, :cond_3

    if-gez p1, :cond_4

    .line 662
    :cond_3
    iput v2, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->nMaxShowingEntries:I

    .line 663
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 665
    :cond_4
    iget-object v1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->onItemClick(I)V

    goto :goto_0
.end method

.method public onReceiveIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->onReceiveIntent(Landroid/content/Intent;)V

    .line 604
    return-void
.end method

.method public onToggleViewClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 726
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->nMaxShowingEntries:I

    .line 727
    return-void
.end method

.method public onToggleViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 730
    const/4 v0, 0x1

    return v0
.end method

.method public onToggleViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 734
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 496
    return-void
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setDataBundle(Landroid/os/Bundle;)V

    .line 608
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setDescription(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public setId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setId(I)V

    .line 568
    return-void
.end method

.method public setItemsCountLimit(I)V
    .locals 1
    .parameter "limit"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setItemsCountLimit(I)V

    .line 592
    return-void
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    .line 584
    return-void
.end method

.method public unloadData()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->unloadData()V

    .line 616
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->mAdapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 500
    return-void
.end method
