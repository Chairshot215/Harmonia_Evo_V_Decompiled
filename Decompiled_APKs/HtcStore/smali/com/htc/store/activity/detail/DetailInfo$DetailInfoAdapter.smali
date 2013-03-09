.class Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailInfo.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private mDetailInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/activity/detail/DetailInfo$InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1526
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1527
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1528
    return-void
.end method


# virtual methods
.method public createNewView(Landroid/view/ViewGroup;IIZ)Landroid/view/View;
    .locals 7
    .parameter "parent"
    .parameter "type"
    .parameter "position"
    .parameter "isEnd"

    .prologue
    const v6, 0x7f0c000a

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1536
    const/4 v1, 0x0

    .line 1537
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;-><init>(Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    .line 1538
    .local v0, holder:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;
    if-ne p2, v4, :cond_1

    .line 1539
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030006

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #view:Landroid/view/View;
    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 1540
    .restart local v1       #view:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->twoLineInfo:Lcom/htc/widget/HtcListItem2LineText;

    .line 1541
    iget-object v2, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->twoLineInfo:Lcom/htc/widget/HtcListItem2LineText;

    const v3, 0x7f0b000f

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 1542
    iget-object v2, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->twoLineInfo:Lcom/htc/widget/HtcListItem2LineText;

    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 1543
    iget-object v2, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->twoLineInfo:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1544
    const v2, 0x7f0c0016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v2, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->button:Lcom/htc/widget/HtcListItemImageButton;

    .line 1547
    new-instance v2, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$1;

    invoke-direct {v2, p0}, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$1;-><init>(Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1561
    :goto_0
    if-eqz p4, :cond_0

    .line 1562
    iput-boolean v4, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->shouldDraw:Z

    .line 1563
    iput-boolean v4, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->shouldSeparate:Z

    .line 1565
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1566
    return-object v1

    .line 1558
    :cond_1
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030007

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1559
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->singleLineInfo:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->mDetailInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->mDetailInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1643
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1648
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1653
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->mDetailInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;

    .line 1654
    .local v0, item:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    if-nez v0, :cond_1

    .line 1665
    :cond_0
    :goto_0
    return v1

    .line 1656
    :cond_1
    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->getType()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1657
    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->isEnd()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 1658
    goto :goto_0

    .line 1660
    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    .line 1662
    :cond_3
    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->isEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1663
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1571
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->mDetailInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;

    .line 1572
    .local v1, item:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->getType()I

    move-result v3

    .line 1573
    .local v3, type:I
    if-nez p2, :cond_0

    .line 1574
    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->isEnd()Z

    move-result v4

    invoke-virtual {p0, p3, v3, p1, v4}, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->createNewView(Landroid/view/ViewGroup;IIZ)Landroid/view/View;

    move-result-object p2

    .line 1575
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;

    .line 1577
    .local v0, holder:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;
    if-ne v3, v7, :cond_2

    move-object v2, v1

    .line 1578
    check-cast v2, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    .line 1579
    .local v2, item_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    iget-object v4, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->twoLineInfo:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1580
    iget-object v4, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->twoLineInfo:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getSubInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 1581
    iget-object v4, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->twoLineInfo:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1583
    invoke-virtual {v2}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1584
    iget-object v4, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->button:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemImageButton;->setEnabled(Z)V

    .line 1590
    .end local v2           #item_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :goto_0
    return-object p2

    .line 1586
    .restart local v2       #item_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :cond_1
    iget-object v4, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->button:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1588
    .end local v2           #item_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :cond_2
    iget-object v4, v0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->singleLineInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1671
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 1595
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->mDetailInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;

    .line 1596
    .local v0, item:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->getType()I

    move-result v1

    .line 1597
    .local v1, type:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1598
    check-cast v0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    .end local v0           #item:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->isCompleted()Z

    move-result v2

    .line 1599
    :goto_0
    return v2

    .restart local v0       #item:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1604
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$4100(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v3, p3, v5

    .line 1605
    .local v3, new_position:I
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "onItemClick: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1606
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->mDetailInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;

    .line 1607
    .local v0, item:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->getType()I

    move-result v4

    .line 1608
    .local v4, type:I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object v1, v0

    .line 1609
    check-cast v1, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    .line 1610
    .local v1, item_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1611
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Play audio - "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->getInfo()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1612
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$200(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1613
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$200(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getAudioUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1614
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1618
    .end local v1           #item_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setDetailInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/activity/detail/DetailInfo$InfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1531
    .local p1, detailInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/activity/detail/DetailInfo$InfoItem;>;"
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->mDetailInfoList:Ljava/util/ArrayList;

    .line 1532
    return-void
.end method
