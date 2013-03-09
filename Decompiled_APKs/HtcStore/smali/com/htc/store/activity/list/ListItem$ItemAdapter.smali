.class Lcom/htc/store/activity/list/ListItem$ItemAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ListItem.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCountStringLengthLimit:I

.field private mExistHtcAccount:Z

.field final synthetic this$0:Lcom/htc/store/activity/list/ListItem;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/list/ListItem;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "cursor"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    .line 550
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 551
    invoke-virtual {p1}, Lcom/htc/store/activity/list/ListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->mCountStringLengthLimit:I

    .line 552
    #calls: Lcom/htc/store/activity/list/ListItem;->isHtcAccountExisted()Z
    invoke-static {p1}, Lcom/htc/store/activity/list/ListItem;->access$1200(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->mExistHtcAccount:Z

    .line 553
    return-void
.end method

.method private getStatusString(I)Ljava/lang/String;
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, statusString:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "status: "

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    if-ne p1, v5, :cond_1

    .line 725
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    const v2, 0x7f0a0068

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/list/ListItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    :cond_0
    :goto_0
    return-object v0

    .line 726
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 727
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    const v2, 0x7f0a0020

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/list/ListItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 728
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 729
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/list/ListItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 730
    :cond_3
    const/16 v1, 0xb

    if-ne p1, v1, :cond_4

    .line 731
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/list/ListItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 732
    :cond_4
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/list/ListItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 24
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 557
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;

    .line 558
    .local v6, holder:Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;
    const/16 v20, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 560
    .local v12, onlineId:Ljava/lang/String;
    const/16 v20, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 561
    .local v19, url:Ljava/lang/String;
    const/4 v7, 0x0

    .line 562
    .local v7, icon:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    .line 564
    .local v8, item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    if-eqz v8, :cond_0

    .line 565
    invoke-virtual {v8}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v20

    move-object/from16 v0, p2

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/htc/store/util/ImageUtils;->getSharedIcon(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 568
    .end local v8           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    :cond_0
    if-eqz v7, :cond_3

    .line 569
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mIcon:Lcom/htc/store/module/view/TileImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/htc/store/module/view/TileImageView;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    :goto_0
    const/16 v20, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 575
    .local v13, onlineLabel:Ljava/lang/String;
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    const/16 v17, 0x0

    .line 578
    .local v17, status:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemOnlineId2Status:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemPackageName2Status:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemOnlineId2Status:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemOnlineId2Status:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->getStatusString(I)Ljava/lang/String;

    move-result-object v17

    .line 588
    :cond_1
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 589
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mStamp:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/store/module/vo/CategoryItem;->getOnlinePageType()I

    move-result v16

    .line 596
    .local v16, pageType:I
    const/16 v20, 0xcb

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 597
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->mExistHtcAccount:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 598
    const/16 v20, 0x1d

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 599
    .local v9, likeCount:J
    const-wide/16 v20, 0x0

    cmp-long v20, v9, v20

    if-ltz v20, :cond_7

    .line 600
    const-wide/16 v20, 0x1

    cmp-long v20, v9, v20

    if-lez v20, :cond_6

    const v20, 0x7f0a0026

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 602
    .local v11, likeText:Ljava/lang/String;
    :goto_3
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCountLike:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCommentLayout:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 635
    .end local v9           #likeCount:J
    .end local v11           #likeText:Ljava/lang/String;
    :cond_2
    :goto_4
    return-void

    .line 571
    .end local v13           #onlineLabel:Ljava/lang/String;
    .end local v16           #pageType:I
    .end local v17           #status:Ljava/lang/String;
    :cond_3
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mIcon:Lcom/htc/store/module/view/TileImageView;

    move-object/from16 v20, v0

    const v21, 0x7f020009

    invoke-virtual/range {v20 .. v21}, Lcom/htc/store/module/view/TileImageView;->setTileImageResource(I)V

    goto/16 :goto_0

    .line 582
    .restart local v13       #onlineLabel:Ljava/lang/String;
    .restart local v17       #status:Ljava/lang/String;
    :cond_4
    const/16 v20, 0x12

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 583
    .local v14, onlinePackageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemPackageName2Status:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemPackageName2Status:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->getStatusString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 591
    .end local v14           #onlinePackageName:Ljava/lang/String;
    :cond_5
    const/16 v20, 0x10

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v15

    .line 592
    .local v15, onlinePrice:F
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mStamp:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v21, v0

    #calls: Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;
    invoke-static/range {v21 .. v21}, Lcom/htc/store/activity/list/ListItem;->access$1300(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;
    invoke-static/range {v22 .. v22}, Lcom/htc/store/activity/list/ListItem;->access$1400(Lcom/htc/store/activity/list/ListItem;)Lcom/htc/store/module/PreferenceManager;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Lcom/htc/store/util/CommonUtils;->getPriceString(Landroid/content/Context;Lcom/htc/store/module/PreferenceManager;F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 600
    .end local v15           #onlinePrice:F
    .restart local v9       #likeCount:J
    .restart local v16       #pageType:I
    :cond_6
    const v20, 0x7f0a0027

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 605
    :cond_7
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCommentLayout:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 608
    .end local v9           #likeCount:J
    :cond_8
    const/16 v20, 0xcc

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 609
    const/16 v20, 0x1c

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 610
    .local v3, downloadCount:J
    const-wide/16 v20, 0x1

    cmp-long v20, v3, v20

    if-lez v20, :cond_b

    const v20, 0x7f0a0016

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 612
    .local v5, downloadText:Ljava/lang/String;
    :goto_5
    const/4 v11, 0x0

    .line 613
    .restart local v11       #likeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->mExistHtcAccount:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 614
    const/16 v20, 0x1d

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 615
    .restart local v9       #likeCount:J
    const-wide/16 v20, 0x0

    cmp-long v20, v9, v20

    if-ltz v20, :cond_d

    .line 616
    const-wide/16 v20, 0x1

    cmp-long v20, v9, v20

    if-lez v20, :cond_c

    const v20, 0x7f0a0026

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 618
    :goto_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    add-int v18, v20, v21

    .line 619
    .local v18, totalLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->mCountStringLengthLimit:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 620
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 621
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 623
    :cond_9
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mIconLike:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 624
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCountLike:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    .end local v9           #likeCount:J
    .end local v18           #totalLength:I
    :cond_a
    :goto_7
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCountCommentDownload:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 632
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCountLike:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 610
    .end local v5           #downloadText:Ljava/lang/String;
    .end local v11           #likeText:Ljava/lang/String;
    :cond_b
    const v20, 0x7f0a0017

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 616
    .restart local v5       #downloadText:Ljava/lang/String;
    .restart local v9       #likeCount:J
    .restart local v11       #likeText:Ljava/lang/String;
    :cond_c
    const v20, 0x7f0a0027

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_6

    .line 626
    :cond_d
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mIconLike:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    iget-object v0, v6, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCountLike:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7
.end method

.method public getItemItem(I)Lcom/htc/store/module/vo/ItemItem;
    .locals 3
    .parameter "position"

    .prologue
    .line 711
    const/4 v1, 0x0

    .line 712
    .local v1, item:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 713
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 714
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 715
    invoke-static {v0}, Lcom/htc/store/module/vo/ItemItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 718
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 703
    const/4 v0, 0x1

    .line 704
    .local v0, enabled:Z
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 705
    const/4 v0, 0x0

    .line 707
    :cond_0
    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const v5, 0x7f0c002e

    const/16 v4, 0x8

    .line 639
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 640
    .local v2, view:Landroid/view/View;
    new-instance v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;-><init>(Lcom/htc/store/activity/list/ListItem$ItemAdapter;Lcom/htc/store/activity/list/ListItem$1;)V

    .line 641
    .local v0, holder:Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;
    const v3, 0x7f0c002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/store/module/view/TileImageView;

    iput-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mIcon:Lcom/htc/store/module/view/TileImageView;

    .line 642
    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mLabel:Landroid/widget/TextView;

    .line 643
    const v3, 0x7f0c002c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mStamp:Landroid/widget/TextView;

    .line 644
    const v3, 0x7f0c0030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCountCommentDownload:Landroid/widget/TextView;

    .line 645
    const v3, 0x7f0c0031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mIconLike:Landroid/widget/ImageView;

    .line 646
    const v3, 0x7f0c0032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCountLike:Landroid/widget/TextView;

    .line 647
    const v3, 0x7f0c002d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCommentLayout:Landroid/view/View;

    .line 648
    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v3, v3, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/CategoryItem;->getOnlinePageType()I

    move-result v1

    .line 649
    .local v1, pageType:I
    const/16 v3, 0xc9

    if-ne v1, v3, :cond_1

    .line 650
    iget-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCommentLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 669
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 670
    return-object v2

    .line 651
    :cond_1
    const/16 v3, 0xcb

    if-ne v1, v3, :cond_3

    .line 652
    iget-boolean v3, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->mExistHtcAccount:Z

    if-nez v3, :cond_2

    .line 653
    iget-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCommentLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 655
    :cond_2
    const v3, 0x7f0c002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 657
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 658
    iget-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCountCommentDownload:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 660
    :cond_3
    const/16 v3, 0xcc

    if-ne v1, v3, :cond_4

    .line 661
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-boolean v3, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->mExistHtcAccount:Z

    if-nez v3, :cond_0

    .line 663
    iget-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mIconLike:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    iget-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCountLike:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 667
    :cond_4
    iget-object v3, v0, Lcom/htc/store/activity/list/ListItem$ItemAdapter$ViewHolder;->mCommentLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

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
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 675
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;
    invoke-static {v5}, Lcom/htc/store/activity/list/ListItem;->access$1600(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 676
    invoke-virtual {p0, p3}, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->getItemItem(I)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v4

    .line 677
    .local v4, item:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v4, :cond_0

    .line 678
    invoke-virtual {v4}, Lcom/htc/store/module/vo/ItemItem;->getOnlineActionTypeOnClick()I

    move-result v0

    .line 679
    .local v0, actionType:I
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "actionType: "

    aput-object v7, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    const/4 v5, 0x6

    if-ne v0, v5, :cond_1

    .line 681
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;
    invoke-static {v5}, Lcom/htc/store/activity/list/ListItem;->access$1700(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, v8}, Lcom/htc/store/util/ActivityUtils;->startDetailActivityByItemItem(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;Z)V

    .line 699
    .end local v0           #actionType:I
    .end local v4           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_0
    :goto_0
    return-void

    .line 682
    .restart local v0       #actionType:I
    .restart local v4       #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_1
    const/4 v5, 0x7

    if-ne v0, v5, :cond_2

    .line 683
    invoke-virtual {v4}, Lcom/htc/store/module/vo/ItemItem;->getOnlineTriggerOnClick()Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, intentString:Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v3, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 686
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 687
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-virtual {v5, v2}, Lcom/htc/store/activity/list/ListItem;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 688
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 689
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 692
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #intentString:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "Invalid actionType"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 696
    .end local v0           #actionType:I
    .end local v4           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "Network is not available."

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->showNoNetworkDialog()V
    invoke-static {v5}, Lcom/htc/store/activity/list/ListItem;->access$1800(Lcom/htc/store/activity/list/ListItem;)V

    goto :goto_0
.end method
