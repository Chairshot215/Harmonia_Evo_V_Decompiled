.class Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "DeleteMarkedItem.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/DeleteMarkedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMarkedItemsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    .line 428
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 429
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;

    .line 454
    .local v5, item:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;
    const/4 v11, 0x1

    .line 455
    .local v11, useDefaultIcon:Z
    const/4 v12, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, iconURL:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$400(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/HashMap;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$400(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 457
    iget-object v12, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$400(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    .line 458
    .local v7, mappingItem:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    if-eqz v7, :cond_0

    .line 459
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v12

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/htc/store/util/ImageUtils;->getSharedIcon(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 460
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 461
    iget-object v12, v5, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v12, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    const/4 v11, 0x0

    .line 466
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #mappingItem:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    :cond_0
    if-eqz v11, :cond_1

    .line 467
    const/16 v12, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 468
    .local v2, data:[B
    if-eqz v2, :cond_1

    array-length v12, v2

    if-lez v12, :cond_1

    .line 469
    const/4 v12, 0x0

    array-length v13, v2

    invoke-static {v2, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 470
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 471
    iget-object v12, v5, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageBitmap(Landroid/graphics/Bitmap;)V

    .line 472
    const/4 v11, 0x0

    .line 476
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #data:[B
    :cond_1
    if-eqz v11, :cond_2

    .line 477
    iget-object v12, v5, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    const v13, 0x7f02000e

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 481
    :cond_2
    const/4 v12, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 482
    .local v9, title:Ljava/lang/String;
    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 483
    .local v10, type:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemType(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemTypeString(I)Ljava/lang/String;

    move-result-object v6

    .line 484
    .local v6, itemType:Ljava/lang/String;
    iget-object v12, v5, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;->titleAndType:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v12, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 485
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 486
    iget-object v12, v5, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;->titleAndType:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v12, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 492
    :goto_0
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 493
    .local v8, productId:Ljava/lang/String;
    iget-object v12, v5, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v13, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1000(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 494
    return-void

    .line 488
    .end local v8           #productId:Ljava/lang/String;
    :cond_3
    iget-object v12, v5, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;->titleAndType:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 498
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 499
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;Lcom/htc/store/activity/landing/DeleteMarkedItem$1;)V

    .line 501
    .local v0, holder:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;
    const v2, 0x7f0c0033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v2, v0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 502
    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;->titleAndType:Lcom/htc/widget/HtcListItem2LineText;

    .line 503
    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v2, v0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 504
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 505
    return-object v1
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 433
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 434
    .local v0, c:Landroid/database/Cursor;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, productId:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1000(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1000(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 440
    :goto_0
    iget-object v3, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1000(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 441
    .local v1, count:I
    if-lez v1, :cond_1

    .line 442
    iget-object v3, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #calls: Lcom/htc/store/activity/landing/DeleteMarkedItem;->enableDeleteButton(I)V
    invoke-static {v3, v1}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1400(Lcom/htc/store/activity/landing/DeleteMarkedItem;I)V

    .line 446
    :goto_1
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->notifyDataSetInvalidated()V

    .line 447
    return-void

    .line 438
    .end local v1           #count:I
    :cond_0
    iget-object v3, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1000(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    .restart local v1       #count:I
    :cond_1
    iget-object v3, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #calls: Lcom/htc/store/activity/landing/DeleteMarkedItem;->disableDeleteButton()V
    invoke-static {v3}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1500(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V

    goto :goto_1
.end method
