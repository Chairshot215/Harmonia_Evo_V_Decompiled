.class Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GroupPeopleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupPeopleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/group/GroupPeopleView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupPeopleView;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 904
    invoke-virtual {p1}, Lcom/android/htccontacts/group/GroupPeopleView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 907
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 909
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 913
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/GroupPeopleView;

    .line 914
    .local v0, activity:Lcom/android/htccontacts/group/GroupPeopleView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupPeopleView;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 918
    iget-object v1, v0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 919
    iget-object v1, v0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 921
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->setResult(I)V

    .line 922
    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupPeopleView;->finish()V

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/group/GroupPeopleView;

    .line 929
    .local v7, activity:Lcom/android/htccontacts/group/GroupPeopleView;
    const v2, 0x7f070016

    invoke-virtual {v7, v2}, Lcom/android/htccontacts/group/GroupPeopleView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 930
    .local v13, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/android/htccontacts/group/GroupPeopleView;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_e

    .line 932
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 933
    const/4 v10, 0x0

    .line 934
    .local v10, hasPhoto:Z
    if-eqz p3, :cond_3

    .line 935
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 936
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 937
    .local v9, bytes:[B
    if-eqz v9, :cond_0

    array-length v2, v9

    if-lez v2, :cond_0

    .line 938
    const/4 v2, 0x0

    array-length v4, v9

    invoke-static {v9, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 940
    .local v8, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v13, v8}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(Landroid/graphics/Bitmap;)V

    .line 941
    iget-object v2, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 942
    iget-object v2, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 944
    :cond_1
    iput-object v8, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    .line 945
    const/4 v10, 0x1

    .line 949
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #bytes:[B
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 950
    const/16 p3, 0x0

    .line 952
    :cond_3
    if-nez v10, :cond_4

    .line 953
    const/4 v2, 0x0

    iput-object v2, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    .line 954
    iget-object v2, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/provider/HtcContactsContract$Groups;->getDefaultGroupIconResource(Ljava/lang/String;)I

    move-result v11

    .line 955
    .local v11, iconResId:I
    invoke-virtual {v13, v11}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(I)V

    .line 957
    .end local v11           #iconResId:I
    :cond_4
    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v7}, Lcom/android/htccontacts/group/GroupPeopleView;->access$200(Lcom/android/htccontacts/group/GroupPeopleView;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 958
    invoke-virtual {v7}, Lcom/android/htccontacts/group/GroupPeopleView;->startIndicator()V

    .line 1025
    .end local v10           #hasPhoto:Z
    :cond_5
    :goto_0
    return-void

    .line 961
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_c

    .line 962
    if-eqz p3, :cond_5

    .line 965
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 966
    iget-object v14, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    .line 967
    .local v14, name:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 968
    const-string v2, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 970
    :cond_7
    const-string v2, "summ_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 971
    .local v5, count:I
    const-string v2, "is_attribute_set"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 972
    .local v12, is_attribute_sync:I
    const-string v2, "system_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/htccontacts/group/GroupPeopleView;->mGroupSystemId:Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/android/htccontacts/group/GroupPeopleView;->access$302(Lcom/android/htccontacts/group/GroupPeopleView;Ljava/lang/String;)Ljava/lang/String;

    .line 975
    iput-object v14, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    .line 976
    iget-object v2, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v7, v2, v5}, Lcom/android/htccontacts/group/GroupPeopleView;->initTitle(Ljava/lang/String;I)V

    .line 983
    if-nez v5, :cond_8

    .line 984
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/htccontacts/group/GroupPeopleView;->access$400(Lcom/android/htccontacts/group/GroupPeopleView;)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f0a0194

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 987
    :cond_8
    if-nez v12, :cond_a

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSyncable:Z

    .line 988
    iget-object v3, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    .line 990
    .local v3, photo:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Lcom/android/htccontacts/group/GroupPeopleView;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;

    .line 991
    .local v1, parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    if-eqz v3, :cond_b

    const/4 v2, 0x1

    :goto_2
    iget-object v4, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->setCache(ZLandroid/graphics/Bitmap;Ljava/lang/String;ILjava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    .end local v1           #parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    .end local v3           #photo:Landroid/graphics/Bitmap;
    .end local v5           #count:I
    .end local v12           #is_attribute_sync:I
    .end local v14           #name:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_0

    .line 987
    .restart local v5       #count:I
    .restart local v12       #is_attribute_sync:I
    .restart local v14       #name:Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    .line 991
    .restart local v1       #parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    .restart local v3       #photo:Landroid/graphics/Bitmap;
    :cond_b
    const/4 v2, 0x0

    goto :goto_2

    .line 997
    .end local v1           #parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    .end local v3           #photo:Landroid/graphics/Bitmap;
    .end local v5           #count:I
    .end local v12           #is_attribute_sync:I
    .end local v14           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v2

    .line 1001
    :cond_c
    if-nez p1, :cond_5

    .line 1002
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/htccontacts/group/GroupPeopleView;->mIsDirty:Z

    .line 1003
    #getter for: Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/android/htccontacts/group/GroupPeopleView;->access$500(Lcom/android/htccontacts/group/GroupPeopleView;)Landroid/database/Cursor;

    move-result-object v15

    .line 1004
    .local v15, tempCursor:Landroid/database/Cursor;
    move-object/from16 v0, p3

    #setter for: Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;
    invoke-static {v7, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->access$502(Lcom/android/htccontacts/group/GroupPeopleView;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1005
    invoke-virtual {v7}, Lcom/android/htccontacts/group/GroupPeopleView;->setAdapter()V

    .line 1006
    if-eqz v15, :cond_d

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1007
    invoke-virtual {v7, v15}, Lcom/android/htccontacts/group/GroupPeopleView;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1009
    :cond_d
    const v2, 0x7f0a032c

    invoke-virtual {v7, v2}, Lcom/android/htccontacts/group/GroupPeopleView;->setEmptyText(I)V

    .line 1010
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/android/htccontacts/group/GroupPeopleView;->setAddButtonVisiablity(Z)V

    goto/16 :goto_0

    .line 1015
    .end local v15           #tempCursor:Landroid/database/Cursor;
    :cond_e
    if-eqz p3, :cond_5

    .line 1017
    if-eqz v7, :cond_f

    .line 1018
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 1021
    :cond_f
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
