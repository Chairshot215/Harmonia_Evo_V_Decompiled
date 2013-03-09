.class Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;
.super Lcom/android/providers/contacts/DataRowHandlerForPhoto;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoDataRowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "photoStore"

    .prologue
    .line 10454
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 10455
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V

    .line 10456
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4
    .parameter "db"
    .parameter "transactionContext"
    .parameter "c"

    .prologue
    .line 10676
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 10678
    .local v0, count:I
    if-lez v0, :cond_0

    .line 10679
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 10681
    .local v1, photoId:J
    iget-object v3, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;->deleteThumbnailFile(JLandroid/content/Context;)V

    .line 10683
    .end local v1           #photoId:J
    :cond_0
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 29
    .parameter "db"
    .parameter "transactionContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 10467
    const/4 v15, 0x0

    .line 10468
    .local v15, isMyContact:Z
    const-wide/16 v18, -0x1

    .line 10469
    .local v18, myRawContactId:J
    const-wide/16 v16, -0x1

    .line 10470
    .local v16, myContactId:J
    const-wide/16 v8, -0x1

    .line 10471
    .local v8, currectMyContactPhotoId:J
    const-wide/16 v10, 0x0

    .line 10472
    .local v10, currectMyContactPhotoType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v26, v0

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mOpenHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    invoke-static/range {v26 .. v26}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1600(Lcom/android/providers/contacts/HtcContactsProvider2;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->getMyContactIds(Landroid/database/sqlite/SQLiteDatabase;)Landroid/os/Bundle;

    move-result-object v7

    .line 10474
    .local v7, bundleMyContactIds:Landroid/os/Bundle;
    if-eqz v7, :cond_0

    const-string v26, "_id"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_0

    const-string v26, "contact_id"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 10479
    const-string v26, "_id"

    const-wide/16 v27, -0x1

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 10481
    const-string v26, "contact_id"

    const-wide/16 v27, -0x1

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 10483
    cmp-long v26, v18, p3

    if-nez v26, :cond_0

    .line 10484
    const/4 v15, 0x1

    .line 10488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->queryContactPhotoIdType(J)Landroid/os/Bundle;
    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1700(Lcom/android/providers/contacts/HtcContactsProvider2;J)Landroid/os/Bundle;

    move-result-object v23

    .line 10489
    .local v23, photoIdType:Landroid/os/Bundle;
    if-eqz v23, :cond_0

    .line 10490
    const-string v26, "_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    const-string v26, "_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 10493
    .local v5, LcurrectMyContactPhotoId:Ljava/lang/Long;
    :goto_0
    const-string v26, "_id"

    const-wide/16 v27, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 10495
    const-string v26, "data7"

    const-wide/16 v27, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 10511
    .end local v5           #LcurrectMyContactPhotoId:Ljava/lang/Long;
    .end local v23           #photoIdType:Landroid/os/Bundle;
    :cond_0
    const-string v26, "overlay_icon"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v20

    .line 10513
    .local v20, overlayData:[B
    const-string v26, "overlay_icon"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 10516
    const-wide/high16 v26, 0x400c

    invoke-static/range {v26 .. v27}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 10518
    const/16 v20, 0x0

    .line 10521
    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v21

    .line 10525
    .local v21, photoId:J
    const/16 v26, 0x42

    sget-short v27, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 10526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v26, v0

    const-string v27, "com.htc.friendstream.sinaweiboplugin"

    move-object/from16 v0, v26

    move-wide/from16 v1, p3

    move-object/from16 v3, v27

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->isRawContactIdThisAccountType(JLjava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1800(Lcom/android/providers/contacts/HtcContactsProvider2;JLjava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 10528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v26, v0

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->ensureWeiboOverlayData()V
    invoke-static/range {v26 .. v26}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1900(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    .line 10529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v26, v0

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->WeibooverlayData:[B
    invoke-static/range {v26 .. v26}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2000(Lcom/android/providers/contacts/HtcContactsProvider2;)[B

    move-result-object v20

    .line 10534
    :cond_2
    const/16 v26, 0x10

    sget-short v27, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 10535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v26, v0

    const-string v27, "com.htc.socialnetwork.chinasns"

    move-object/from16 v0, v26

    move-wide/from16 v1, p3

    move-object/from16 v3, v27

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->isRawContactIdThisAccountType(JLjava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1800(Lcom/android/providers/contacts/HtcContactsProvider2;JLjava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 10536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v26, v0

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->ensureQQOverlayData()V
    invoke-static/range {v26 .. v26}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2100(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    .line 10537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v26, v0

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->QQoverlayData:[B
    invoke-static/range {v26 .. v26}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2200(Lcom/android/providers/contacts/HtcContactsProvider2;)[B

    move-result-object v20

    .line 10542
    :cond_3
    const-wide/16 v26, 0x0

    cmp-long v26, v21, v26

    if-lez v26, :cond_4

    .line 10543
    const-string v26, "data15"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 10545
    .local v12, data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v26

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    move-object/from16 v3, v26

    invoke-static {v0, v1, v12, v2, v3}, Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;->updatePeopleThumbnail(J[B[BLandroid/content/Context;)Z

    .line 10548
    if-eqz v15, :cond_4

    const-wide/16 v26, 0x0

    cmp-long v26, v26, v8

    if-gez v26, :cond_4

    .line 10549
    const-string v26, "data7"

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 10551
    .local v6, LinsertPhotoType:Ljava/lang/Long;
    if-nez v6, :cond_7

    const-wide/16 v13, 0x0

    .line 10553
    .local v13, insertPhotoType:J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->getPhotoTypeWeight(J)I
    invoke-static {v0, v10, v11}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2300(Lcom/android/providers/contacts/HtcContactsProvider2;J)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->getPhotoTypeWeight(J)I
    invoke-static {v0, v13, v14}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2300(Lcom/android/providers/contacts/HtcContactsProvider2;J)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_4

    .line 10554
    const-wide/16 v26, 0x0

    cmp-long v26, v26, v16

    if-gez v26, :cond_4

    .line 10559
    sget-object v26, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v27, "contacts_info"

    invoke-static/range {v26 .. v27}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 10562
    .local v24, updateUri:Landroid/net/Uri;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 10563
    .local v25, valuesContactPhotoId:Landroid/content/ContentValues;
    const-string v26, "photo_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10576
    .end local v6           #LinsertPhotoType:Ljava/lang/Long;
    .end local v12           #data:[B
    .end local v13           #insertPhotoType:J
    .end local v24           #updateUri:Landroid/net/Uri;
    .end local v25           #valuesContactPhotoId:Landroid/content/ContentValues;
    :cond_4
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isFaceBookPhoneProject()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 10577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, p3

    move/from16 v3, v27

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->downloadOriginalFacebookLargePhoto(JZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1500(Lcom/android/providers/contacts/HtcContactsProvider2;JZ)V

    .line 10580
    :cond_5
    return-wide v21

    .line 10490
    .end local v20           #overlayData:[B
    .end local v21           #photoId:J
    .restart local v23       #photoIdType:Landroid/os/Bundle;
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 10551
    .end local v23           #photoIdType:Landroid/os/Bundle;
    .restart local v6       #LinsertPhotoType:Ljava/lang/Long;
    .restart local v12       #data:[B
    .restart local v20       #overlayData:[B
    .restart local v21       #photoId:J
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto :goto_1
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 10
    .parameter "db"
    .parameter "transactionContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 10591
    const-string v8, "overlay_icon"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 10593
    .local v3, overlayData:[B
    const-string v8, "overlay_icon"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 10595
    const-wide/high16 v8, 0x400c

    invoke-static {v8, v9}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10597
    const/4 v3, 0x0

    .line 10601
    :cond_0
    const-string v8, "data7"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "data8"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 10605
    const-string v8, "data7"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 10607
    const-string v8, "data7"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 10609
    :cond_1
    const-string v8, "data8"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 10611
    const-string v8, "data8"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 10614
    :cond_2
    const-string v8, "data9"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 10616
    const-string v8, "data9"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 10620
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 10622
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 10624
    .local v2, dataHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    const-string v8, "data15"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 10626
    const/4 v8, 0x1

    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 10630
    .local v6, rawContactId:J
    const/4 v8, 0x0

    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 10631
    .local v0, LphotoId:Ljava/lang/Long;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 10636
    .local v4, photoId:J
    :goto_0
    const/16 v8, 0x42

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v8, v9, :cond_4

    .line 10637
    iget-object v8, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-string v9, "com.htc.friendstream.sinaweiboplugin"

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->isRawContactIdThisAccountType(JLjava/lang/String;)Z
    invoke-static {v8, v6, v7, v9}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1800(Lcom/android/providers/contacts/HtcContactsProvider2;JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 10639
    iget-object v8, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->ensureWeiboOverlayData()V
    invoke-static {v8}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1900(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    .line 10640
    iget-object v8, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->WeibooverlayData:[B
    invoke-static {v8}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2000(Lcom/android/providers/contacts/HtcContactsProvider2;)[B

    move-result-object v3

    .line 10645
    :cond_4
    const/16 v8, 0x10

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v8, v9, :cond_5

    .line 10646
    iget-object v8, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-string v9, "com.htc.socialnetwork.chinasns"

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->isRawContactIdThisAccountType(JLjava/lang/String;)Z
    invoke-static {v8, v6, v7, v9}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1800(Lcom/android/providers/contacts/HtcContactsProvider2;JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 10648
    iget-object v8, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->ensureQQOverlayData()V
    invoke-static {v8}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2100(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    .line 10649
    iget-object v8, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->QQoverlayData:[B
    invoke-static {v8}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2200(Lcom/android/providers/contacts/HtcContactsProvider2;)[B

    move-result-object v3

    .line 10656
    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_6

    .line 10657
    const-string v8, "data15"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 10659
    .local v1, data:[B
    iget-object v8, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v8}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v4, v5, v1, v3, v8}, Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;->updatePeopleThumbnail(J[B[BLandroid/content/Context;)Z

    .line 10664
    .end local v0           #LphotoId:Ljava/lang/Long;
    .end local v1           #data:[B
    .end local v4           #photoId:J
    .end local v6           #rawContactId:J
    :cond_6
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isFaceBookPhoneProject()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 10665
    const/4 v8, 0x1

    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 10666
    .restart local v6       #rawContactId:J
    iget-object v8, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const/4 v9, 0x0

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->downloadOriginalFacebookLargePhoto(JZ)V
    invoke-static {v8, v6, v7, v9}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1500(Lcom/android/providers/contacts/HtcContactsProvider2;JZ)V

    .line 10669
    .end local v6           #rawContactId:J
    :cond_7
    const/4 v8, 0x1

    return v8

    .line 10631
    .restart local v0       #LphotoId:Ljava/lang/Long;
    .restart local v6       #rawContactId:J
    :cond_8
    invoke-virtual {v2, v6, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPhotoIdByRawContactId(J)J

    move-result-wide v4

    goto :goto_0
.end method
