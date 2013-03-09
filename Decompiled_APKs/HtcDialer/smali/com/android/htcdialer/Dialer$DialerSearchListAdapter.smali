.class final Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
.super Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;
.source "Dialer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DialerSearchListAdapter"
.end annotation


# instance fields
.field private mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

.field mViewContactListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/Dialer;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "layoutId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6497
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p5, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    .line 6498
    invoke-direct/range {p0 .. p5}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;-><init>(Lcom/android/htcdialer/BaseSmartSearchList;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 6981
    new-instance v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter$1;-><init>(Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mViewContactListener:Landroid/view/View$OnClickListener;

    .line 6499
    new-instance v0, Lcom/android/htcdialer/search/DialerIndexer;

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/htcdialer/search/DialerIndexer;-><init>(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    .line 6500
    invoke-virtual {p1}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 6501
    return-void
.end method

.method private bindButtonIcon(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/SearchableObject;)V
    .locals 1
    .parameter "cache"
    .parameter "data"

    .prologue
    .line 6744
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3600(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v0

    .line 6752
    .local v0, actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindIcon(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/SearchableObject;Lcom/htc/widget/HtcListItemImageButton;)V

    .line 6754
    return-void
.end method

.method private bindDateAndTime(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 10
    .parameter "data"
    .parameter "cache"

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 6709
    sget-boolean v6, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-eqz v6, :cond_1

    move-object v3, v4

    .line 6711
    .local v3, dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    .line 6712
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogDate(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v1

    .line 6713
    .local v1, date:J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_2

    .line 6714
    .local v4, dateString:Ljava/lang/String;
    :goto_1
    invoke-static {v1, v2}, Lcom/android/htcdialer/util/TimeUtils;->getTimeString(J)Ljava/lang/String;

    move-result-object v5

    .line 6716
    .local v5, timeString:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 6717
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    .line 6718
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextVisibility(I)V

    .line 6719
    sget-boolean v6, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v6, :cond_4

    .line 6720
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 6722
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCityId(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v0

    .line 6723
    .local v0, cityIdString:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 6724
    const-string v6, ""

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 6738
    .end local v0           #cityIdString:Ljava/lang/String;
    .end local v1           #date:J
    .end local v4           #dateString:Ljava/lang/String;
    .end local v5           #timeString:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 6709
    .end local v3           #dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;
    :cond_1
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3500(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItem2LineStamp;

    move-result-object v3

    goto :goto_0

    .line 6713
    .restart local v1       #date:J
    .restart local v3       #dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;
    :cond_2
    invoke-static {v1, v2}, Lcom/android/htcdialer/util/TimeUtils;->getDateString(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 6726
    .restart local v0       #cityIdString:Ljava/lang/String;
    .restart local v4       #dateString:Ljava/lang/String;
    .restart local v5       #timeString:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_2

    .line 6729
    .end local v0           #cityIdString:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 6730
    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_2

    .line 6733
    :cond_5
    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    .line 6734
    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextVisibility(I)V

    goto :goto_2
.end method

.method private bindDivder(ILcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 6
    .parameter "position"
    .parameter "cache"

    .prologue
    const/16 v5, 0x8

    .line 6643
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->separatorView:Landroid/view/View;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3800(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;

    move-result-object v1

    .line 6644
    .local v1, separatorView:Landroid/view/View;
    if-eqz p1, :cond_2

    .line 6645
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->separatorView:Landroid/view/View;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3800(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;

    move-result-object v1

    .line 6646
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->separatorViewTop:Landroid/view/View;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3900(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6653
    :goto_0
    if-eqz v1, :cond_1

    .line 6654
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->drawTopRound(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6655
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableObject;

    iget v0, v3, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 6656
    .local v0, index:I
    const v3, 0x2020010

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6657
    .local v2, tv:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6658
    packed-switch v0, :pswitch_data_0

    .line 6666
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableObject;

    iget v3, v3, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableObject;

    iget v3, v3, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 6668
    :cond_0
    const v3, 0x7f0900ae

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 6678
    .end local v0           #index:I
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_1
    :goto_1
    return-void

    .line 6648
    :cond_2
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->separatorViewTop:Landroid/view/View;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3900(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;

    move-result-object v1

    .line 6649
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->separatorView:Landroid/view/View;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3800(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6660
    .restart local v0       #index:I
    .restart local v2       #tv:Landroid/widget/TextView;
    :pswitch_0
    const v3, 0x7f09007f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 6663
    :pswitch_1
    const v3, 0x7f09007e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 6670
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6674
    .end local v0           #index:I
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6658
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bindIcon(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/SearchableObject;Lcom/htc/widget/HtcListItemImageButton;)V
    .locals 1
    .parameter "cache"
    .parameter "data"
    .parameter "actionButton"

    .prologue
    .line 6758
    if-eqz p3, :cond_0

    .line 6759
    invoke-virtual {p0, p2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNameN11(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumberType(Lcom/android/htcdialer/Dialer$ListItemCache;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6765
    const v0, 0x7f020007

    invoke-virtual {p3, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 6770
    :cond_0
    :goto_0
    return-void

    .line 6767
    :cond_1
    const v0, 0x7f020008

    invoke-virtual {p3, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private bindMutiIcon(Lcom/android/htcdialer/search/SearchableObject;Lcom/htc/widget/HtcListItemImageButton;)V
    .locals 3
    .parameter "data"
    .parameter "actionButton"

    .prologue
    const/4 v2, 0x0

    .line 6774
    sget-boolean v0, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-nez v0, :cond_0

    .line 6777
    const-string v0, "common_button_small"

    const-string v1, "drawable"

    invoke-static {v0, v1, v2}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 6779
    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 6781
    :cond_0
    return-void
.end method

.method private bindNameAndNum(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/DialerItem;)V
    .locals 15
    .parameter "data"
    .parameter "cache"
    .parameter "dialerView"

    .prologue
    .line 6683
    invoke-virtual/range {p0 .. p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v4

    .line 6684
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v3

    .line 6685
    .local v3, personName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v1, :cond_0

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v4}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumberType(Lcom/android/htcdialer/Dialer$ListItemCache;Ljava/lang/String;)I

    move-result v5

    .line 6687
    .local v5, numberType:I
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactPhoneCount(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v14

    .line 6690
    .local v14, personPhonesCount:I
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->nameAndNumber:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static/range {p2 .. p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3400(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v6

    check-cast v6, Lcom/android/htcdialer/widget/DialerListItem2LineText;

    .local v6, nameAndNum:Lcom/android/htcdialer/widget/DialerListItem2LineText;
    move-object v1, p0

    move-object/from16 v2, p1

    .line 6691
    invoke-direct/range {v1 .. v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->setName(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;Ljava/lang/String;ILcom/android/htcdialer/widget/DialerListItem2LineText;)V

    move-object v7, p0

    move-object/from16 v8, p1

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v11, p3

    move v12, v5

    move-object v13, v6

    .line 6693
    invoke-direct/range {v7 .. v13}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->setNumber(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/htcdialer/search/DialerItem;ILcom/android/htcdialer/widget/DialerListItem2LineText;)V

    .line 6694
    invoke-virtual/range {p0 .. p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogBearerType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v1

    invoke-direct {p0, v14, v6, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->setMutiNumberArrow(ILcom/android/htcdialer/widget/DialerListItem2LineText;I)V

    .line 6695
    return-void

    .line 6685
    .end local v5           #numberType:I
    .end local v6           #nameAndNum:Lcom/android/htcdialer/widget/DialerListItem2LineText;
    .end local v14           #personPhonesCount:I
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private bindPhoto(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 0
    .parameter "data"
    .parameter "cache"

    .prologue
    .line 6816
    invoke-virtual {p0, p1, p2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->setPhoto(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;)V

    .line 6817
    return-void
.end method

.method private drawBottomRound(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6583
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_1

    .line 6590
    :cond_0
    :goto_0
    return v2

    .line 6585
    :cond_1
    if-ltz p1, :cond_2

    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p1, v4, :cond_2

    .line 6586
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableObject;

    .line 6587
    .local v0, so1:Lcom/android/htcdialer/search/SearchableObject;
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 6588
    .local v1, so2:Lcom/android/htcdialer/search/SearchableObject;
    iget v4, v0, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    iget v5, v1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-ne v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0           #so1:Lcom/android/htcdialer/search/SearchableObject;
    .end local v1           #so2:Lcom/android/htcdialer/search/SearchableObject;
    :cond_2
    move v2, v3

    .line 6590
    goto :goto_0
.end method

.method private drawTopRound(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6572
    if-nez p1, :cond_1

    .line 6579
    :cond_0
    :goto_0
    return v2

    .line 6574
    :cond_1
    if-lez p1, :cond_2

    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_2

    .line 6575
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableObject;

    .line 6576
    .local v0, so1:Lcom/android/htcdialer/search/SearchableObject;
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 6577
    .local v1, so2:Lcom/android/htcdialer/search/SearchableObject;
    iget v4, v0, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    iget v5, v1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-ne v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0           #so1:Lcom/android/htcdialer/search/SearchableObject;
    .end local v1           #so2:Lcom/android/htcdialer/search/SearchableObject;
    :cond_2
    move v2, v3

    .line 6579
    goto :goto_0
.end method

.method private getGroupID(Lcom/android/htcdialer/search/SearchableContact;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "contact"
    .parameter "number"

    .prologue
    .line 6971
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v1, :cond_1

    if-eqz p2, :cond_1

    .line 6972
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v0, v1, :cond_1

    .line 6973
    iget-object v1, p1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6974
    iget-object v1, p1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/htcdialer/search/SearchablePhone;->number_group_id:Ljava/lang/String;

    .line 6978
    .end local v0           #i:I
    :goto_1
    return-object v1

    .line 6972
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6978
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getInitDialerItem(Lcom/android/htcdialer/search/DialerItem;Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/DialerItem;
    .locals 1
    .parameter "dialerView"
    .parameter "data"

    .prologue
    .line 6921
    invoke-virtual {p0, p2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 6925
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->setDialerItemBackground(Lcom/android/htcdialer/search/DialerItem;)V

    .line 6927
    invoke-direct {p0, p2, v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->initDialerItem(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/search/SearchableContact;Lcom/android/htcdialer/search/DialerItem;)V

    .line 6928
    return-object p1
.end method

.method private getNameN11(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;
    .locals 2
    .parameter "data"

    .prologue
    .line 6631
    const/4 v0, 0x0

    .line 6632
    .local v0, nameN11:Ljava/lang/String;
    sget-boolean v1, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isN11Number(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6634
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6638
    :cond_0
    return-object v0
.end method

.method private getNumberMarked(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/search/DialerItem;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "data"
    .parameter "dialerView"

    .prologue
    .line 6961
    const/4 v0, 0x0

    .line 6962
    .local v0, phoneNumberMarked:Ljava/lang/CharSequence;
    iget-boolean v1, p2, Lcom/android/htcdialer/search/DialerItem;->isSimContact:Z

    if-nez v1, :cond_0

    .line 6963
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumberTypeString(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumberMarked(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6967
    :goto_0
    return-object v0

    .line 6965
    :cond_0
    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumberMarked(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private getNumberType(Lcom/android/htcdialer/Dialer$ListItemCache;Ljava/lang/String;)I
    .locals 3
    .parameter "cache"
    .parameter "phoneNumber"

    .prologue
    .line 6698
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v1, v1, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mEmergencyNumbers:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$4300(Lcom/android/htcdialer/Dialer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/util/contacts/PhoneUtils;->getType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->numberType:I
    invoke-static {p1, v1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$4202(Lcom/android/htcdialer/Dialer$ListItemCache;I)I

    move-result v0

    .line 6701
    .local v0, numberType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6702
    const/4 v1, 0x5

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->numberType:I
    invoke-static {p1, v1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$4202(Lcom/android/htcdialer/Dialer$ListItemCache;I)I

    move-result v0

    .line 6705
    :cond_0
    return v0
.end method

.method private initActionButton(Lcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 5
    .parameter "cache"

    .prologue
    .line 6560
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 6562
    .local v0, gap:F
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3600(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v2

    float-to-int v3, v0

    #calls: Lcom/android/htcdialer/Dialer;->enlargeTouchArea(Landroid/view/View;I)V
    invoke-static {v1, v2, v3}, Lcom/android/htcdialer/Dialer;->access$4000(Lcom/android/htcdialer/Dialer;Landroid/view/View;I)V

    .line 6563
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3600(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6564
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3600(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mViewContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6566
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3600(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v1

    const-string v2, "common_button_small"

    const-string v3, "drawable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 6569
    :cond_0
    return-void
.end method

.method private initDialerItem(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/search/SearchableContact;Lcom/android/htcdialer/search/DialerItem;)V
    .locals 3
    .parameter "data"
    .parameter "contact"
    .parameter "dialerView"

    .prologue
    const/4 v2, 0x0

    .line 6933
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 6934
    if-nez p2, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0, v1}, Lcom/android/htcdialer/search/DialerItem;->setPersonId(J)V

    .line 6935
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/htcdialer/search/DialerItem;->setNumber(Ljava/lang/String;)V

    .line 6936
    if-nez p2, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {p3, v0}, Lcom/android/htcdialer/search/DialerItem;->setIsSimContact(Z)V

    .line 6937
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactPhones(Lcom/android/htcdialer/search/SearchableObject;)[Lcom/android/htcdialer/search/SearchablePhone;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/htcdialer/search/DialerItem;->setPhones([Lcom/android/htcdialer/search/SearchablePhone;)V

    .line 6938
    if-nez p2, :cond_3

    :goto_2
    invoke-virtual {p3, v2}, Lcom/android/htcdialer/search/DialerItem;->setIsMyPhonebook(Z)V

    .line 6940
    :cond_0
    return-void

    .line 6934
    :cond_1
    iget-wide v0, p2, Lcom/android/htcdialer/search/SearchableContact;->id:J

    goto :goto_0

    .line 6936
    :cond_2
    iget-boolean v0, p2, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    goto :goto_1

    .line 6938
    :cond_3
    iget-boolean v2, p2, Lcom/android/htcdialer/search/SearchableContact;->isMyPhonebook:Z

    goto :goto_2
.end method

.method private setDialerItemBackground(Lcom/android/htcdialer/search/DialerItem;)V
    .locals 7
    .parameter "dialerView"

    .prologue
    const/4 v6, 0x0

    .line 6944
    sget-boolean v2, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-eqz v2, :cond_0

    .line 6945
    invoke-virtual {p1}, Lcom/android/htcdialer/search/DialerItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "background"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6946
    .local v1, resId:I
    if-eqz v1, :cond_0

    .line 6947
    invoke-virtual {p1, v1}, Lcom/android/htcdialer/search/DialerItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6948
    .local v0, backgroundView:Landroid/view/View;
    const-string v2, "phone_smart_filter_avatar_background"

    invoke-static {v0, v2}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 6949
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 6952
    .end local v0           #backgroundView:Landroid/view/View;
    .end local v1           #resId:I
    :cond_0
    return-void
.end method

.method private setListItemRoundCorner(ILcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 1
    .parameter "position"
    .parameter "cache"

    .prologue
    .line 6955
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->drawTopRound(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/htcdialer/Dialer$ListItemCache;->setTopRound(Z)V

    .line 6956
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->drawBottomRound(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/htcdialer/Dialer$ListItemCache;->setBottomRound(Z)V

    .line 6957
    return-void
.end method

.method private setMutiNumberArrow(ILcom/android/htcdialer/widget/DialerListItem2LineText;I)V
    .locals 6
    .parameter "personPhonesCount"
    .parameter "nameAndNum"
    .parameter "bearerType"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 6787
    sget-boolean v2, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-nez v2, :cond_1

    .line 6788
    sget-boolean v2, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    if-le p1, v2, :cond_3

    .line 6789
    const v0, 0x7f020019

    .line 6790
    .local v0, left:I
    if-ne v4, p3, :cond_2

    .line 6791
    const v0, 0x7f020012

    .line 6795
    :cond_0
    :goto_0
    const v1, 0x7f02001a

    .line 6797
    .local v1, right:I
    invoke-virtual {p2}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 6813
    .end local v0           #left:I
    .end local v1           #right:I
    :cond_1
    :goto_1
    return-void

    .line 6792
    .restart local v0       #left:I
    :cond_2
    if-ne v5, p3, :cond_0

    .line 6793
    const v0, 0x7f020010

    goto :goto_0

    .line 6802
    .end local v0           #left:I
    :cond_3
    const/4 v0, 0x0

    .line 6803
    .restart local v0       #left:I
    if-ne v4, p3, :cond_5

    .line 6804
    const v0, 0x7f020011

    .line 6808
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 6805
    :cond_5
    if-ne v5, p3, :cond_4

    .line 6806
    const v0, 0x7f02000f

    goto :goto_2
.end method

.method private setName(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;Ljava/lang/String;ILcom/android/htcdialer/widget/DialerListItem2LineText;)V
    .locals 4
    .parameter "data"
    .parameter "personName"
    .parameter "phoneNumber"
    .parameter "numberType"
    .parameter "nameAndNum"

    .prologue
    .line 6856
    if-nez p5, :cond_0

    .line 6857
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "View must contain a TextView named text1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6859
    :cond_0
    move-object v0, p2

    .line 6860
    .local v0, name:Ljava/lang/CharSequence;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6861
    const/4 v2, 0x6

    if-ne v2, p4, :cond_5

    .line 6862
    sget-boolean v2, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v2, :cond_4

    .line 6864
    const-string v0, "9-1-1 Emergency"

    .line 6900
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNameN11(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    .line 6901
    .local v1, nameN11:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 6902
    move-object v0, v1

    .line 6907
    :cond_2
    sget-boolean v2, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-eqz v2, :cond_3

    .line 6908
    instance-of v2, v0, Landroid/text/SpannableString;

    if-eqz v2, :cond_b

    .line 6909
    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 6915
    :cond_3
    :goto_1
    invoke-virtual {p5, v0}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 6917
    return-void

    .line 6866
    .end local v1           #nameN11:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    const v3, 0x10402db

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/Dialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 6871
    :cond_5
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x28

    if-ne v2, v3, :cond_7

    .line 6873
    invoke-static {p3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6884
    :cond_6
    :goto_2
    if-nez v0, :cond_1

    .line 6886
    const/4 v2, 0x5

    if-ne v2, p4, :cond_9

    .line 6888
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    const v3, 0x7f09003d

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/Dialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 6875
    :cond_7
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_8

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x14

    if-ne v2, v3, :cond_8

    .line 6878
    invoke-static {p3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getCellSouthCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 6880
    :cond_8
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 6882
    invoke-static {p3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getACGServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 6892
    :cond_9
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    const v3, 0x104000e

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/Dialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 6897
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNameMarked(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 6911
    .restart local v1       #nameN11:Ljava/lang/String;
    :cond_b
    const/16 v2, 0x8

    invoke-virtual {p5, v2}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setPrimaryTextVisibility(I)V

    goto :goto_1
.end method

.method private setNumber(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/htcdialer/search/DialerItem;ILcom/android/htcdialer/widget/DialerListItem2LineText;)V
    .locals 5
    .parameter "data"
    .parameter "personName"
    .parameter "phoneNumber"
    .parameter "dialerView"
    .parameter "numberType"
    .parameter "nameAndNum"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 6821
    if-eqz p6, :cond_1

    if-eqz p4, :cond_1

    .line 6822
    invoke-virtual {p4, p6, p3}, Lcom/android/htcdialer/search/DialerItem;->setMarkedNumber(Lcom/htc/widget/HtcListItem2LineText;Ljava/lang/CharSequence;)V

    .line 6823
    invoke-direct {p0, p1, p4}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumberMarked(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/search/DialerItem;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6825
    .local v1, phoneNumberMarked:Ljava/lang/CharSequence;
    const/4 v2, 0x2

    if-eq v2, p5, :cond_0

    const/4 v2, 0x3

    if-eq v2, p5, :cond_0

    const/4 v2, 0x4

    if-ne v2, p5, :cond_2

    .line 6828
    :cond_0
    invoke-virtual {p6, v3}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setVisibility(I)V

    .line 6851
    .end local v1           #phoneNumberMarked:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 6830
    .restart local v1       #phoneNumberMarked:Ljava/lang/CharSequence;
    :cond_2
    sget-boolean v2, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-eqz v2, :cond_6

    .line 6831
    invoke-virtual {p6}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6832
    .local v0, number:Landroid/view/View;
    instance-of v2, v1, Landroid/text/SpannableString;

    if-eqz v2, :cond_3

    .line 6833
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6834
    invoke-virtual {p6, v3}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setVisibility(I)V

    .line 6848
    .end local v0           #number:Landroid/view/View;
    :goto_1
    invoke-virtual {p6, v1}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6835
    .restart local v0       #number:Landroid/view/View;
    :cond_3
    if-nez p2, :cond_4

    .line 6836
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6837
    invoke-virtual {p6, v3}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setVisibility(I)V

    goto :goto_1

    .line 6839
    :cond_4
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6840
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6841
    invoke-virtual {p6, v3}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setVisibility(I)V

    goto :goto_1

    .line 6843
    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6846
    .end local v0           #number:Landroid/view/View;
    :cond_6
    invoke-virtual {p6, v4}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected final bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 6599
    sget-boolean v4, Lcom/android/htcdialer/DialerService;->isCacheUpdating:Z

    if-eqz v4, :cond_0

    .line 6628
    :goto_0
    return-void

    .line 6604
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 6605
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$ListItemCache;

    .line 6607
    .local v0, cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    invoke-direct {p0, p2, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->setListItemRoundCorner(ILcom/android/htcdialer/Dialer$ListItemCache;)V

    .line 6609
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->dialerItem:Lcom/android/htcdialer/search/DialerItem;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3700(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/android/htcdialer/search/DialerItem;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getInitDialerItem(Lcom/android/htcdialer/search/DialerItem;Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/DialerItem;

    move-result-object v2

    .line 6611
    .local v2, dialerView:Lcom/android/htcdialer/search/DialerItem;
    iget v4, v1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->itemIndexer:I
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$4102(Lcom/android/htcdialer/Dialer$ListItemCache;I)I

    .line 6613
    invoke-direct {p0, v1, v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindNameAndNum(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/DialerItem;)V

    .line 6616
    const/4 v4, 0x0

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->mbHasPhoto:Z
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2702(Lcom/android/htcdialer/Dialer$ListItemCache;Z)Z

    .line 6617
    invoke-direct {p0, v1, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindPhoto(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;)V

    .line 6619
    invoke-direct {p0, v0, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindButtonIcon(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/SearchableObject;)V

    .line 6621
    invoke-direct {p0, v1, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindDateAndTime(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;)V

    .line 6623
    invoke-direct {p0, p2, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindDivder(ILcom/android/htcdialer/Dialer$ListItemCache;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6625
    .end local v0           #cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    .end local v1           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v2           #dialerView:Lcom/android/htcdialer/search/DialerItem;
    :catch_0
    move-exception v3

    .line 6626
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v4, "HtcDialer"

    const-string v5, "catch null pointer exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLastDialIntent()Landroid/content/Intent;
    .locals 9

    .prologue
    .line 7067
    const/4 v4, 0x0

    .line 7068
    .local v4, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v7}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableObject;

    .line 7070
    .local v3, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v3, :cond_2

    iget v7, v3, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v7, :cond_2

    .line 7071
    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getLastDialPhoneIntent(Lcom/android/htcdialer/search/SearchableObject;)Landroid/content/Intent;

    move-result-object v4

    .line 7073
    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v1

    .line 7074
    .local v1, contactId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v7, v1

    if-gez v7, :cond_2

    if-eqz v4, :cond_2

    .line 7075
    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v6

    .line 7076
    .local v6, sName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v7, v1, v2}, Lcom/android/htcdialer/Dialer;->hasPhoto(J)Z

    move-result v0

    .line 7077
    .local v0, bHasPhoto:Z
    const-string v7, "personId"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7078
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 7079
    const-string v7, "name"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7081
    :cond_0
    if-eqz v0, :cond_1

    .line 7082
    const-string v7, "hasPhoto"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7086
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p0, v3, v7}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;Z)Ljava/lang/String;

    move-result-object v5

    .line 7088
    .local v5, number:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 7090
    const-string v7, "number"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7091
    const-string v7, "numberType"

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7102
    .end local v0           #bHasPhoto:Z
    .end local v1           #contactId:J
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #sName:Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public getLastDialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7057
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableObject;

    .line 7059
    .local v0, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v1, :cond_0

    .line 7060
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;Z)Ljava/lang/String;

    move-result-object v1

    .line 7062
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "sectionIndex"

    .prologue
    .line 7113
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    if-nez v0, :cond_0

    .line 7114
    new-instance v0, Lcom/android/htcdialer/search/DialerIndexer;

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/htcdialer/search/DialerIndexer;-><init>(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    .line 7116
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    invoke-virtual {v0, p1}, Lcom/android/htcdialer/search/DialerIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 7120
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    if-nez v0, :cond_0

    .line 7121
    new-instance v0, Lcom/android/htcdialer/search/DialerIndexer;

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/htcdialer/search/DialerIndexer;-><init>(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    .line 7123
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    invoke-virtual {v0, p1}, Lcom/android/htcdialer/search/DialerIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 7106
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    if-nez v0, :cond_0

    .line 7107
    new-instance v0, Lcom/android/htcdialer/search/DialerIndexer;

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/htcdialer/search/DialerIndexer;-><init>(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    .line 7109
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/DialerIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 6514
    const/4 v3, 0x0

    .line 6517
    .local v3, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 6518
    :try_start_0
    iget-object v4, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v4}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 6519
    .local v2, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mLayoutId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 6520
    new-instance v0, Lcom/android/htcdialer/Dialer$ListItemCache;

    invoke-direct {v0}, Lcom/android/htcdialer/Dialer$ListItemCache;-><init>()V

    .line 6522
    .local v0, cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    const v4, 0x202004c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemQuickContactBadge;

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3002(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/htc/widget/HtcListItemQuickContactBadge;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 6524
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3000(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6525
    const-string v4, "name_number"

    const-string v5, "id"

    const-string v6, "com.android.htcdialer"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/htcdialer/widget/DialerListItem2LineText;

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->nameAndNumber:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3402(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/htc/widget/HtcListItem2LineText;)Lcom/htc/widget/HtcListItem2LineText;

    .line 6528
    const-string v4, "date_time"

    const-string v5, "id"

    const-string v6, "com.android.htcdialer"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineStamp;

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3502(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/htc/widget/HtcListItem2LineStamp;)Lcom/htc/widget/HtcListItem2LineStamp;

    .line 6531
    const-string v4, "action_button"

    const-string v5, "id"

    const-string v6, "com.android.htcdialer"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemImageButton;

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3602(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/htc/widget/HtcListItemImageButton;)Lcom/htc/widget/HtcListItemImageButton;

    .line 6534
    const v4, 0x7f0b0020

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/htcdialer/search/DialerItem;

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->dialerItem:Lcom/android/htcdialer/search/DialerItem;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3702(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/DialerItem;)Lcom/android/htcdialer/search/DialerItem;

    .line 6537
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->initActionButton(Lcom/android/htcdialer/Dialer$ListItemCache;)V

    .line 6541
    const v4, 0x2020085

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->separatorView:Landroid/view/View;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3802(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/view/View;)Landroid/view/View;

    .line 6543
    const v4, 0x2020085

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->separatorViewTop:Landroid/view/View;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3902(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/view/View;)Landroid/view/View;

    .line 6547
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6551
    .end local v0           #cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {p0, v3, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6556
    :goto_1
    return-object v3

    .line 6549
    :cond_0
    move-object v3, p2

    goto :goto_0

    .line 6552
    :catch_0
    move-exception v1

    .line 6553
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setPhoto(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 10
    .parameter "data"
    .parameter "cache"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7023
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v0

    .line 7024
    .local v0, callLogType:I
    const/4 v1, -0x1

    .line 7026
    .local v1, callType:I
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v2

    .line 7027
    .local v2, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v2, :cond_3

    iget-boolean v4, v2, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    if-nez v4, :cond_3

    .line 7028
    iget-object v4, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3000(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v7

    iget-wide v8, v2, Lcom/android/htcdialer/search/SearchableContact;->photoId:J

    #calls: Lcom/android/htcdialer/Dialer;->updateImageView(Landroid/widget/ImageView;Lcom/android/htcdialer/Dialer$ListItemCache;J)V
    invoke-static {v4, v7, p2, v8, v9}, Lcom/android/htcdialer/Dialer;->access$4600(Lcom/android/htcdialer/Dialer;Landroid/widget/ImageView;Lcom/android/htcdialer/Dialer$ListItemCache;J)V

    .line 7034
    :goto_0
    iget v4, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v4, :cond_0

    .line 7035
    if-ne v6, v0, :cond_5

    .line 7036
    const/4 v1, 0x3

    .line 7044
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->updatePhotoType(ILcom/android/htcdialer/Dialer$ListItemCache;)V
    invoke-static {v4, v1, p2}, Lcom/android/htcdialer/Dialer;->access$4800(Lcom/android/htcdialer/Dialer;ILcom/android/htcdialer/Dialer$ListItemCache;)V

    .line 7046
    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_VT:Z

    if-eqz v4, :cond_2

    .line 7047
    const/16 v3, 0x8

    .line 7048
    .local v3, visibility:I
    const/4 v4, -0x1

    if-eq v4, v1, :cond_1

    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->bearerTypeView:Landroid/view/View;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$4900(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7049
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->isVT(Lcom/android/htcdialer/search/SearchableObject;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v3, v5

    .line 7051
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->bearerTypeView:Landroid/view/View;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$4900(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;

    move-result-object v5

    #calls: Lcom/android/htcdialer/Dialer;->setVisibility(Landroid/view/View;I)V
    invoke-static {v4, v5, v3}, Lcom/android/htcdialer/Dialer;->access$5000(Lcom/android/htcdialer/Dialer;Landroid/view/View;I)V

    .line 7053
    .end local v3           #visibility:I
    :cond_2
    return-void

    .line 7030
    :cond_3
    iget-object v7, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    const/4 v8, 0x0

    if-nez v2, :cond_4

    move v4, v5

    :goto_3
    #calls: Lcom/android/htcdialer/Dialer;->updateImage(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V
    invoke-static {v7, p2, v8, v4}, Lcom/android/htcdialer/Dialer;->access$4700(Lcom/android/htcdialer/Dialer;Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_3

    .line 7037
    :cond_5
    const/4 v4, 0x2

    if-ne v4, v0, :cond_6

    .line 7038
    const/4 v1, 0x4

    goto :goto_1

    .line 7039
    :cond_6
    const/4 v4, 0x3

    if-ne v4, v0, :cond_0

    .line 7040
    const/4 v1, 0x5

    goto :goto_1

    .line 7049
    .restart local v3       #visibility:I
    :cond_7
    const/16 v3, 0x8

    goto :goto_2
.end method

.method public updateList(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6505
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p2, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->updateList(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 6506
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    invoke-virtual {v0, p0, p1}, Lcom/android/htcdialer/search/DialerIndexer;->updateIndexer(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V

    .line 6507
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isTmoProject()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$3300(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6508
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$3300(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->updateList(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 6510
    :cond_0
    return-void
.end method
