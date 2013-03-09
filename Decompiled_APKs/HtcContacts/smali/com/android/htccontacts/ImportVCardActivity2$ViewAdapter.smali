.class public final Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImportVCardActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity2;


# direct methods
.method protected constructor <init>(Lcom/android/htccontacts/ImportVCardActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method bindAccountTypeAndNameView(Landroid/view/View;Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z
    .locals 4
    .parameter "view"
    .parameter "entry"

    .prologue
    const/4 v1, 0x1

    .line 1535
    iget v2, p2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 1536
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1537
    const v2, 0x7f070014

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;

    .line 1538
    .local v0, item:Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;
    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    const v3, 0x7f0a01b0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 1539
    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mAccountTypeAndNamesEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    invoke-static {v3}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1800(Lcom/android/htccontacts/ImportVCardActivity2;)Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 1540
    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const v3, 0x20804a9

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 1541
    iput-boolean v1, p2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->enabled:Z

    .line 1546
    .end local v0           #item:Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method bindInformationView(Landroid/view/View;Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z
    .locals 3
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 1570
    const v1, 0x7f070014

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;

    .line 1571
    .local v0, item:Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;
    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1572
    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 1574
    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v2, p2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 1575
    const/4 v1, 0x1

    return v1
.end method

.method bindLabelView(Landroid/view/View;Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z
    .locals 5
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 1551
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1552
    .local v1, tagObj:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 1553
    check-cast v0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    .line 1554
    .local v0, tag:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v4}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1558
    const v3, 0x2020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1559
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1560
    iget-object v3, p2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1562
    :cond_0
    const/4 v3, 0x1

    .line 1566
    .end local v0           #tag:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;
    .end local v2           #textView:Landroid/widget/TextView;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method bindPhotoView(Landroid/view/View;Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z
    .locals 4
    .parameter "view"
    .parameter "entry"

    .prologue
    const/4 v2, 0x0

    .line 1579
    iget v1, p2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    .line 1580
    const v1, 0x7f070014

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;

    .line 1582
    .local v0, item:Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;
    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, p2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1583
    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, p2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->text2:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 1585
    iget-object v3, v0, Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;->mHtcListItemTileImage:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v1, p2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->data:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1587
    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;->mHtcListItemTileImage:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1589
    iget-object v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v2, p2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->isChecked:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 1590
    const/4 v1, 0x1

    .line 1592
    .end local v0           #item:Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)V
    .locals 1
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 1510
    iput-object p1, p2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->view:Landroid/view/View;

    .line 1511
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->bindLabelView(Landroid/view/View;Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1524
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->bindAccountTypeAndNameView(Landroid/view/View;Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1519
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->bindPhotoView(Landroid/view/View;Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1523
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->bindInformationView(Landroid/view/View;Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1600(Lcom/android/htccontacts/ImportVCardActivity2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1600(Lcom/android/htccontacts/ImportVCardActivity2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1378
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mSections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1600(Lcom/android/htccontacts/ImportVCardActivity2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 1379
    .local v0, item:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    iget-wide v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->id:J

    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 1437
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 1439
    .local v0, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    if-nez v0, :cond_1

    .line 1451
    :cond_0
    :goto_0
    return v1

    .line 1443
    :cond_1
    iget-object v2, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1446
    :cond_2
    iget v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 1447
    const/4 v1, 0x3

    goto :goto_0

    .line 1448
    :cond_3
    iget v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 1449
    const/4 v1, 0x4

    goto :goto_0

    .line 1451
    :cond_4
    iget v1, v0, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getViewTypeByKind(I)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1457
    invoke-virtual {p0, p1, p3}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1458
    .local v8, v:Landroid/view/View;
    const/4 v7, 0x0

    .local v7, topConer:Z
    const/4 v0, 0x0

    .line 1459
    .local v0, bottomConer:Z
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 1461
    .local v2, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    iget v9, v2, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getViewTypeByKind(I)I

    move-result v1

    .line 1462
    .local v1, currentViewType:I
    const/4 v6, -0x1

    .line 1463
    .local v6, previousViewType:I
    if-lez p1, :cond_0

    .line 1464
    add-int/lit8 v9, p1, -0x1

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 1465
    .local v5, previousEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    iget v9, v5, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getViewTypeByKind(I)I

    move-result v6

    .line 1467
    .end local v5           #previousEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    :cond_0
    const/4 v4, -0x1

    .line 1468
    .local v4, nextViewType:I
    add-int/lit8 v9, p1, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 1469
    add-int/lit8 v9, p1, 0x1

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 1470
    .local v3, nextEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    iget v9, v3, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getViewTypeByKind(I)I

    move-result v4

    .line 1473
    .end local v3           #nextEntry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    :cond_1
    if-eq v6, v1, :cond_2

    .line 1474
    const/4 v7, 0x1

    .line 1477
    :cond_2
    if-eq v4, v1, :cond_3

    .line 1478
    const/4 v0, 0x1

    .line 1481
    :cond_3
    if-nez p1, :cond_4

    .line 1482
    const/4 v7, 0x0

    .line 1485
    :cond_4
    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    move-object v9, v8

    .line 1486
    check-cast v9, Lcom/htc/widget/HtcListItem;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 1493
    :cond_5
    :goto_0
    invoke-virtual {p0, v8, v2}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->bindView(Landroid/view/View;Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)V

    .line 1495
    return-object v8

    .line 1487
    :cond_6
    if-eqz v7, :cond_7

    move-object v9, v8

    .line 1488
    check-cast v9, Lcom/htc/widget/HtcListItem;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_0

    .line 1489
    :cond_7
    if-eqz v0, :cond_5

    move-object v9, v8

    .line 1490
    check-cast v9, Lcom/htc/widget/HtcListItem;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_0
.end method

.method getViewTypeByKind(I)I
    .locals 2
    .parameter "kind"

    .prologue
    const/4 v0, 0x2

    .line 1527
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x63

    if-ne p1, v1, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 1500
    const/4 v0, 0x0

    .line 1502
    .local v0, result:Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    iget-boolean v0, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    :goto_0
    return v0

    .line 1503
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f070014

    .line 1383
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;

    .line 1384
    .local v1, entry:Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;
    const/4 v3, 0x0

    .line 1386
    .local v3, v:Lcom/htc/widget/HtcListItem;
    iget v4, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 1387
    new-instance v3, Lcom/htc/widget/HtcListItem;

    .end local v3           #v:Lcom/htc/widget/HtcListItem;
    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {v3, v4, v7}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1388
    .restart local v3       #v:Lcom/htc/widget/HtcListItem;
    new-instance v2, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {v2, v4, v5}, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;Landroid/content/Context;)V

    .line 1389
    .local v2, item:Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;
    iget-object v4, v2, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 1390
    iget-object v4, v2, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 1392
    iget v4, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    iput v4, v2, Lcom/android/htccontacts/ImportVCardActivity2$CommonListItem;->kind:I

    .line 1393
    invoke-virtual {v3, v6, v2}, Lcom/htc/widget/HtcListItem;->setTag(ILjava/lang/Object;)V

    .line 1395
    iget-object v0, v2, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 1396
    .local v0, buttonView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1398
    new-instance v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter$1;-><init>(Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1432
    .end local v0           #buttonView:Landroid/view/View;
    .end local v2           #item:Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;
    :cond_0
    :goto_0
    return-object v3

    .line 1413
    :cond_1
    iget v4, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 1414
    new-instance v3, Lcom/htc/widget/HtcListItem;

    .end local v3           #v:Lcom/htc/widget/HtcListItem;
    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {v3, v4, v7}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1415
    .restart local v3       #v:Lcom/htc/widget/HtcListItem;
    new-instance v2, Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {v2, v4, v5}, Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;Landroid/content/Context;)V

    .line 1416
    .local v2, item:Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;
    iget-object v4, v2, Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;->mHtcListItemTileImage:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 1417
    iget-object v4, v2, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 1418
    iget-object v4, v2, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 1419
    iget v4, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    iput v4, v2, Lcom/android/htccontacts/ImportVCardActivity2$CommonListItem;->kind:I

    .line 1420
    sget-object v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->ENTRY_TYPE_INFORMATION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 1421
    invoke-virtual {v3, v6, v2}, Lcom/htc/widget/HtcListItem;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 1424
    .end local v2           #item:Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;
    :cond_2
    new-instance v3, Lcom/htc/widget/HtcListItem;

    .end local v3           #v:Lcom/htc/widget/HtcListItem;
    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {v3, v4, v7}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1425
    .restart local v3       #v:Lcom/htc/widget/HtcListItem;
    new-instance v2, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {v2, v4, v5}, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;Landroid/content/Context;)V

    .line 1426
    .local v2, item:Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;
    iget-object v4, v2, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 1427
    iget-object v4, v2, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 1428
    iget v4, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->kind:I

    iput v4, v2, Lcom/android/htccontacts/ImportVCardActivity2$CommonListItem;->kind:I

    .line 1429
    sget-object v4, Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;->ENTRY_TYPE_INFORMATION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 1430
    invoke-virtual {v3, v6, v2}, Lcom/htc/widget/HtcListItem;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method
