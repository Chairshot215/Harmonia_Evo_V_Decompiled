.class public Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GroupDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/group/GroupDetailView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1068
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1071
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/htccontacts/group/GroupDetailView;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 1073
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1077
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/GroupDetailView;

    .line 1078
    .local v0, activity:Lcom/android/htccontacts/group/GroupDetailView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupDetailView;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 1082
    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1083
    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1085
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->setResult(I)V

    .line 1086
    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupDetailView;->finish()V

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 25
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 1092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htccontacts/group/GroupDetailView;

    .line 1093
    .local v13, activity:Lcom/android/htccontacts/group/GroupDetailView;
    const v3, 0x7f070016

    invoke-virtual {v13, v3}, Lcom/android/htccontacts/group/GroupDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 1095
    .local v23, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Lcom/android/htccontacts/group/GroupDetailView;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1097
    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 1098
    const/16 v19, 0x0

    .line 1099
    .local v19, hasPhoto:Z
    if-eqz p3, :cond_2

    .line 1100
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1101
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 1102
    .local v15, bytes:[B
    if-eqz v15, :cond_1

    array-length v3, v15

    if-lez v3, :cond_1

    .line 1103
    const/4 v3, 0x0

    array-length v5, v15

    invoke-static {v15, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1105
    .local v14, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(Landroid/graphics/Bitmap;)V

    .line 1107
    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/htccontacts/group/GroupDetailView;->access$900(Lcom/android/htccontacts/group/GroupDetailView;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/htccontacts/group/GroupDetailView;->access$900(Lcom/android/htccontacts/group/GroupDetailView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1108
    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/htccontacts/group/GroupDetailView;->access$900(Lcom/android/htccontacts/group/GroupDetailView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1110
    :cond_0
    #setter for: Lcom/android/htccontacts/group/GroupDetailView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/htccontacts/group/GroupDetailView;->access$902(Lcom/android/htccontacts/group/GroupDetailView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1111
    const/16 v19, 0x1

    .line 1114
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .end local v15           #bytes:[B
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/htccontacts/group/GroupDetailView;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1117
    :cond_2
    if-nez v19, :cond_3

    .line 1118
    const/4 v3, 0x0

    #setter for: Lcom/android/htccontacts/group/GroupDetailView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13, v3}, Lcom/android/htccontacts/group/GroupDetailView;->access$902(Lcom/android/htccontacts/group/GroupDetailView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1119
    iget-object v3, v13, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/provider/HtcContactsContract$Groups;->getDefaultGroupIconResource(Ljava/lang/String;)I

    move-result v20

    .line 1120
    .local v20, iconResId:I
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(I)V

    .line 1213
    .end local v19           #hasPhoto:Z
    .end local v20           #iconResId:I
    :cond_3
    :goto_0
    return-void

    .line 1123
    :cond_4
    if-nez p1, :cond_a

    .line 1124
    if-eqz p3, :cond_3

    .line 1127
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1128
    iget-object v0, v13, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1129
    .local v24, name:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1130
    const-string v3, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1133
    :cond_5
    const-string v3, "summ_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1134
    .local v6, count:I
    const-string v3, "is_attribute_set"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1136
    .local v22, is_attribute:I
    iget v0, v13, Lcom/android/htccontacts/group/GroupDetailView;->mGroupIsReadOnly:I

    move/from16 v18, v0

    .line 1137
    .local v18, groupIsReadOnly:I
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 1139
    const-string v3, "system_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/htccontacts/group/GroupDetailView;->mGroupSystemId:Ljava/lang/String;
    invoke-static {v13, v3}, Lcom/android/htccontacts/group/GroupDetailView;->access$1002(Lcom/android/htccontacts/group/GroupDetailView;Ljava/lang/String;)Ljava/lang/String;

    .line 1140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1142
    .local v17, countString:Ljava/lang/String;
    #setter for: Lcom/android/htccontacts/group/GroupDetailView;->mMemberCount:I
    invoke-static {v13, v6}, Lcom/android/htccontacts/group/GroupDetailView;->access$1102(Lcom/android/htccontacts/group/GroupDetailView;I)I

    .line 1143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderPrimaryText(Ljava/lang/String;)V

    .line 1144
    if-nez v22, :cond_7

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v13, Lcom/android/htccontacts/group/GroupDetailView;->mIsSyncable:Z

    .line 1145
    const/4 v4, 0x0

    .line 1146
    .local v4, photo:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_8

    .line 1149
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(Landroid/graphics/Bitmap;)V

    .line 1150
    throw v4

    .line 1151
    const/4 v4, 0x0

    .line 1159
    :goto_2
    invoke-virtual {v13}, Lcom/android/htccontacts/group/GroupDetailView;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;

    .line 1160
    .local v2, parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    if-eqz v4, :cond_9

    const/4 v3, 0x1

    :goto_3
    iget-object v5, v13, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->setCache(ZLandroid/graphics/Bitmap;Ljava/lang/String;ILjava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    .end local v2           #parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    .end local v4           #photo:Landroid/graphics/Bitmap;
    .end local v6           #count:I
    .end local v17           #countString:Ljava/lang/String;
    .end local v18           #groupIsReadOnly:I
    .end local v22           #is_attribute:I
    .end local v24           #name:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/htccontacts/group/GroupDetailView;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 1144
    .restart local v6       #count:I
    .restart local v17       #countString:Ljava/lang/String;
    .restart local v18       #groupIsReadOnly:I
    .restart local v22       #is_attribute:I
    .restart local v24       #name:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    .line 1156
    .restart local v4       #photo:Landroid/graphics/Bitmap;
    :cond_8
    const v3, 0x2080251

    :try_start_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1167
    .end local v4           #photo:Landroid/graphics/Bitmap;
    .end local v6           #count:I
    .end local v17           #countString:Ljava/lang/String;
    .end local v18           #groupIsReadOnly:I
    .end local v22           #is_attribute:I
    .end local v24           #name:Ljava/lang/String;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/htccontacts/group/GroupDetailView;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v3

    .line 1160
    .restart local v2       #parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    .restart local v4       #photo:Landroid/graphics/Bitmap;
    .restart local v6       #count:I
    .restart local v17       #countString:Ljava/lang/String;
    .restart local v18       #groupIsReadOnly:I
    .restart local v22       #is_attribute:I
    .restart local v24       #name:Ljava/lang/String;
    :cond_9
    const/4 v3, 0x0

    goto :goto_3

    .line 1172
    .end local v2           #parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    .end local v4           #photo:Landroid/graphics/Bitmap;
    .end local v6           #count:I
    .end local v17           #countString:Ljava/lang/String;
    .end local v18           #groupIsReadOnly:I
    .end local v22           #is_attribute:I
    .end local v24           #name:Ljava/lang/String;
    :cond_a
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 1173
    const/4 v3, 0x0

    #setter for: Lcom/android/htccontacts/group/GroupDetailView;->mIsDirty:Z
    invoke-static {v13, v3}, Lcom/android/htccontacts/group/GroupDetailView;->access$1202(Lcom/android/htccontacts/group/GroupDetailView;Z)Z

    .line 1174
    if-eqz p3, :cond_3

    .line 1177
    :try_start_2
    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htccontacts/group/GroupDetailView;->access$1300(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1178
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1180
    :cond_b
    const-string v3, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v0, v7

    move/from16 v21, v0

    .line 1181
    .local v21, id:I
    if-lez v21, :cond_c

    .line 1182
    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htccontacts/group/GroupDetailView;->access$1300(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    :cond_c
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1186
    .end local v21           #id:I
    :cond_d
    invoke-virtual {v13}, Lcom/android/htccontacts/group/GroupDetailView;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;

    .line 1187
    .restart local v2       #parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    invoke-virtual {v2}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->getCache()Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    move-result-object v16

    .line 1188
    .local v16, cache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;
    if-eqz v16, :cond_e

    .line 1189
    move-object/from16 v0, v16

    iget-boolean v8, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->hasPhoto:Z

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->title:Ljava/lang/String;

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->count:I

    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htccontacts/group/GroupDetailView;->access$1300(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/util/ArrayList;

    move-result-object v12

    move-object v7, v2

    invoke-virtual/range {v7 .. v12}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->setCache(ZLandroid/graphics/Bitmap;Ljava/lang/String;ILjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1195
    :cond_e
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/htccontacts/group/GroupDetailView;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .end local v2           #parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    .end local v16           #cache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;
    :catchall_1
    move-exception v3

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/htccontacts/group/GroupDetailView;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v3

    .line 1202
    :cond_f
    if-eqz p3, :cond_3

    .line 1205
    if-eqz v13, :cond_10

    .line 1206
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/htccontacts/group/GroupDetailView;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 1209
    :cond_10
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
