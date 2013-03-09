.class Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "DetailSimilar.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailSimilar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimilarItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCountStringLengthLimit:I

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailSimilar;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailSimilar;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "cursor"

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    .line 1018
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 1019
    invoke-virtual {p1}, Lcom/htc/store/activity/detail/DetailSimilar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->mCountStringLengthLimit:I

    .line 1020
    return-void
.end method

.method private getStatusString(I)Ljava/lang/String;
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    .line 1151
    const/4 v0, 0x0

    .line 1152
    .local v0, statusString:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

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

    .line 1153
    if-ne p1, v5, :cond_1

    .line 1154
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    const v2, 0x7f0a0068

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1164
    :cond_0
    :goto_0
    return-object v0

    .line 1155
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1156
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    const v2, 0x7f0a0020

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1157
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 1158
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1159
    :cond_3
    const/16 v1, 0xb

    if-ne p1, v1, :cond_4

    .line 1160
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1161
    :cond_4
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->getString(I)Ljava/lang/String;

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
    .line 1024
    invoke-static/range {p3 .. p3}, Lcom/htc/store/module/vo/ItemItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v7

    .line 1025
    .local v7, item:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;

    .line 1026
    .local v5, holder:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v11

    .line 1028
    .local v11, onlineId:Ljava/lang/String;
    const/16 v20, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1029
    .local v19, url:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1030
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1600(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1600(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1600(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    .line 1032
    .local v10, mappingItem:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    if-eqz v7, :cond_0

    .line 1033
    invoke-virtual {v10}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v20

    move-object/from16 v0, p2

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/htc/store/util/ImageUtils;->getSharedIcon(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1036
    .end local v10           #mappingItem:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    :cond_0
    if-eqz v6, :cond_4

    .line 1037
    iget-object v0, v5, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mIcon:Lcom/htc/store/module/view/TileImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/htc/store/module/view/TileImageView;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1042
    :goto_0
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v12

    .line 1043
    .local v12, onlineLabel:Ljava/lang/String;
    iget-object v0, v5, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    const/4 v15, 0x0

    .line 1046
    .local v15, status:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId2Status:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemPackageName2Status:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2900(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId2Status:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId2Status:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->getStatusString(I)Ljava/lang/String;

    move-result-object v15

    .line 1056
    :cond_1
    :goto_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 1057
    iget-object v0, v5, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mStamp:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v20, v0

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->isHtcAccountExisted()Z
    invoke-static/range {v20 .. v20}, Lcom/htc/store/activity/detail/DetailSimilar;->access$5000(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1067
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineCommentCount()J

    move-result-wide v3

    .line 1068
    .local v3, commentCount:J
    const-wide/16 v20, 0x1

    cmp-long v20, v3, v20

    if-lez v20, :cond_7

    const v20, 0x7f0a0008

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

    move-result-object v16

    .line 1071
    .local v16, text1:Ljava/lang/String;
    :goto_3
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLikeCount()J

    move-result-wide v8

    .line 1072
    .local v8, likeCount:J
    const-wide/16 v20, 0x1

    cmp-long v20, v8, v20

    if-lez v20, :cond_8

    const v20, 0x7f0a0026

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1076
    .local v17, text2:Ljava/lang/String;
    :goto_4
    const-wide/16 v20, 0x0

    cmp-long v20, v3, v20

    if-ltz v20, :cond_2

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-gez v20, :cond_9

    .line 1077
    :cond_2
    iget-object v0, v5, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mCommentLayout:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    .end local v3           #commentCount:J
    .end local v8           #likeCount:J
    .end local v16           #text1:Ljava/lang/String;
    .end local v17           #text2:Ljava/lang/String;
    :cond_3
    :goto_5
    return-void

    .line 1039
    .end local v12           #onlineLabel:Ljava/lang/String;
    .end local v15           #status:Ljava/lang/String;
    :cond_4
    iget-object v0, v5, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mIcon:Lcom/htc/store/module/view/TileImageView;

    move-object/from16 v20, v0

    const v21, 0x7f020009

    invoke-virtual/range {v20 .. v21}, Lcom/htc/store/module/view/TileImageView;->setTileImageResource(I)V

    goto/16 :goto_0

    .line 1050
    .restart local v12       #onlineLabel:Ljava/lang/String;
    .restart local v15       #status:Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v13

    .line 1051
    .local v13, onlinePackageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemPackageName2Status:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2900(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemPackageName2Status:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2900(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->getStatusString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 1059
    .end local v13           #onlinePackageName:Ljava/lang/String;
    :cond_6
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePrice()F

    move-result v14

    .line 1060
    .local v14, onlinePrice:F
    iget-object v0, v5, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mStamp:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v21, v0

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;
    invoke-static/range {v21 .. v21}, Lcom/htc/store/activity/detail/DetailSimilar;->access$4800(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;
    invoke-static/range {v22 .. v22}, Lcom/htc/store/activity/detail/DetailSimilar;->access$4900(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/module/PreferenceManager;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14}, Lcom/htc/store/util/CommonUtils;->getPriceString(Landroid/content/Context;Lcom/htc/store/module/PreferenceManager;F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1068
    .end local v14           #onlinePrice:F
    .restart local v3       #commentCount:J
    :cond_7
    const v20, 0x7f0a0009

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

    move-result-object v16

    goto/16 :goto_3

    .line 1072
    .restart local v8       #likeCount:J
    .restart local v16       #text1:Ljava/lang/String;
    :cond_8
    const v20, 0x7f0a0027

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 1079
    .restart local v17       #text2:Ljava/lang/String;
    :cond_9
    iget-object v0, v5, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mCommentLayout:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    add-int v18, v20, v21

    .line 1081
    .local v18, totalLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->mCountStringLengthLimit:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 1082
    iget-object v0, v5, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mCountCommentDownload:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v0, v5, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mCountLike:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1085
    :cond_a
    iget-object v0, v5, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mCountCommentDownload:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    iget-object v0, v5, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mCountLike:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public getItemItem(I)Lcom/htc/store/module/vo/ItemItem;
    .locals 2
    .parameter "position"

    .prologue
    .line 1142
    const/4 v1, 0x0

    .line 1143
    .local v1, item:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1144
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1145
    invoke-static {v0}, Lcom/htc/store/module/vo/ItemItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 1147
    :cond_0
    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 1134
    const/4 v0, 0x1

    .line 1135
    .local v0, enabled:Z
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1136
    const/4 v0, 0x0

    .line 1138
    :cond_0
    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/16 v3, 0x8

    .line 1094
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1095
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;-><init>(Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;Lcom/htc/store/activity/detail/DetailSimilar$1;)V

    .line 1096
    .local v0, holder:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;
    const v2, 0x7f0c002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/store/module/view/TileImageView;

    iput-object v2, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mIcon:Lcom/htc/store/module/view/TileImageView;

    .line 1097
    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mLabel:Landroid/widget/TextView;

    .line 1098
    const v2, 0x7f0c002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mStamp:Landroid/widget/TextView;

    .line 1099
    const v2, 0x7f0c0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mCountCommentDownload:Landroid/widget/TextView;

    .line 1100
    const v2, 0x7f0c0032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mCountLike:Landroid/widget/TextView;

    .line 1101
    const v2, 0x7f0c002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mCommentLayout:Landroid/view/View;

    .line 1102
    const v2, 0x7f0c002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    const v2, 0x7f0c002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->isHtcAccountExisted()Z
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$5200(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1106
    iget-object v2, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mCommentLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    :cond_0
    iget-object v2, v0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->mCountCommentDownload:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1109
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1110
    return-object v1
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1115
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$5300(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1116
    invoke-virtual {p0, p3}, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->getItemItem(I)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 1117
    .local v1, item:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v1, :cond_0

    .line 1118
    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineActionTypeOnClick()I

    move-result v0

    .line 1119
    .local v0, actionType:I
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "actionType: "

    aput-object v6, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    .line 1121
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$5400()I

    move-result v7

    const/16 v8, 0x12

    if-le v7, v8, :cond_1

    :goto_0
    invoke-static {v4, v5, v6, v2}, Lcom/htc/store/util/ActivityUtils;->startDetailActivityByOnlineIdAndType(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 1130
    .end local v0           #actionType:I
    .end local v1           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #actionType:I
    .restart local v1       #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_1
    move v2, v3

    .line 1121
    goto :goto_0

    .line 1123
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "Invalid actionType"

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1127
    .end local v0           #actionType:I
    .end local v1           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "Network is not available."

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1128
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->showNoNetworkDialog()V
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$5500(Lcom/htc/store/activity/detail/DetailSimilar;)V

    goto :goto_1
.end method
