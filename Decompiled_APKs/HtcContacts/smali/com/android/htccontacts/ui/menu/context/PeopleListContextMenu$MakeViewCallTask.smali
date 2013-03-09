.class Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$MakeViewCallTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "PeopleListContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MakeViewCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/htccontacts/util/ImData;",
        ">;",
        "Lcom/android/htccontacts/app/BaseActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/BaseActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 745
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 746
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    check-cast p1, Lcom/android/htccontacts/app/BaseActivity;

    .end local p1
    check-cast p2, [Ljava/lang/Long;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$MakeViewCallTask;->doInBackground(Lcom/android/htccontacts/app/BaseActivity;[Ljava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/android/htccontacts/app/BaseActivity;[Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 38
    .parameter "target"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/app/BaseActivity;",
            "[",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 751
    const/16 v27, 0x0

    .line 890
    :goto_0
    return-object v27

    .line 753
    :cond_0
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 754
    .local v21, contactId:J
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "presence_raw_contact_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "presence_data_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "im_account"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "im_handle"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "protocol"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "custom_protocol"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "mode"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "mimetype"

    aput-object v3, v4, v2

    .line 764
    .local v4, CPROJECTION_WITH_PRESENCE:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/app/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "presence_raw_contact_id IN (SELECT _id FROM raw_contacts where contact_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 766
    .local v19, c:Landroid/database/Cursor;
    if-eqz v19, :cond_11

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_11

    .line 767
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v27, imDataArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    const-string v36, ""

    .line 770
    .local v36, rawContactIdList:Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 771
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 772
    .local v35, rawContactId:I
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 773
    .local v7, dataId:I
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 774
    .local v26, imAccount:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 775
    .local v28, imHandle:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 776
    .local v34, protocol:I
    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 777
    .local v11, customProtocol:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 778
    .local v12, presence:I
    const/4 v2, 0x7

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 780
    .local v30, mimetype:Ljava/lang/String;
    const/4 v2, 0x2

    move/from16 v0, v34

    if-eq v2, v0, :cond_3

    const/4 v2, -0x1

    move/from16 v0, v34

    if-ne v2, v0, :cond_2

    const-string v2, "com.qik.android.protocol"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x3

    move/from16 v0, v34

    if-ne v2, v0, :cond_b

    .line 783
    :cond_3
    const/4 v2, 0x5

    if-le v12, v2, :cond_1

    .line 784
    const/4 v2, 0x3

    move/from16 v0, v34

    if-ne v2, v0, :cond_9

    .line 786
    const/16 v37, 0x0

    .line 788
    .local v37, skypeCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/app/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/provider/HtcContactsContract$Data;->CONTENT_URI_DATA_ONLY:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .end local v7           #dataId:I
    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v7, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND mimetype=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/com.skype.android.videocall.action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    .line 792
    if-eqz v37, :cond_4

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 793
    new-instance v5, Lcom/android/htccontacts/util/ImData;

    const/4 v2, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v6, v35

    move-object/from16 v8, v26

    move-object/from16 v9, v28

    move/from16 v10, v34

    invoke-direct/range {v5 .. v12}, Lcom/android/htccontacts/util/ImData;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 794
    .local v5, imData:Lcom/android/htccontacts/util/ImData;
    sget v2, Lcom/android/htccontacts/util/ImData;->VIDEO_CALL:I

    invoke-virtual {v5, v2}, Lcom/android/htccontacts/util/ImData;->setType(I)V

    .line 795
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    const/4 v2, 0x3

    move/from16 v0, v34

    if-ne v2, v0, :cond_7

    .line 797
    const-string v2, "vnd.android.cursor.item/com.skype.android.videocall.action"

    invoke-virtual {v5, v2}, Lcom/android/htccontacts/util/ImData;->setDataMimetype(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    .end local v5           #imData:Lcom/android/htccontacts/util/ImData;
    :cond_4
    :goto_2
    if-eqz v37, :cond_5

    .line 806
    :try_start_2
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 822
    .end local v37           #skypeCursor:Landroid/database/Cursor;
    :cond_5
    :goto_3
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 825
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v36

    goto/16 :goto_1

    .line 800
    .restart local v5       #imData:Lcom/android/htccontacts/util/ImData;
    .restart local v37       #skypeCursor:Landroid/database/Cursor;
    :cond_7
    :try_start_3
    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Lcom/android/htccontacts/util/ImData;->setDataMimetype(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 805
    .end local v5           #imData:Lcom/android/htccontacts/util/ImData;
    :catchall_0
    move-exception v2

    if-eqz v37, :cond_8

    .line 806
    :try_start_4
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 805
    :cond_8
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 883
    .end local v11           #customProtocol:Ljava/lang/String;
    .end local v12           #presence:I
    .end local v26           #imAccount:Ljava/lang/String;
    .end local v28           #imHandle:Ljava/lang/String;
    .end local v30           #mimetype:Ljava/lang/String;
    .end local v34           #protocol:I
    .end local v35           #rawContactId:I
    .end local v37           #skypeCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v2

    .line 812
    .restart local v7       #dataId:I
    .restart local v11       #customProtocol:Ljava/lang/String;
    .restart local v12       #presence:I
    .restart local v26       #imAccount:Ljava/lang/String;
    .restart local v28       #imHandle:Ljava/lang/String;
    .restart local v30       #mimetype:Ljava/lang/String;
    .restart local v34       #protocol:I
    .restart local v35       #rawContactId:I
    :cond_9
    :try_start_5
    new-instance v5, Lcom/android/htccontacts/util/ImData;

    move/from16 v6, v35

    move-object/from16 v8, v26

    move-object/from16 v9, v28

    move/from16 v10, v34

    invoke-direct/range {v5 .. v12}, Lcom/android/htccontacts/util/ImData;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 813
    .restart local v5       #imData:Lcom/android/htccontacts/util/ImData;
    sget v2, Lcom/android/htccontacts/util/ImData;->VIDEO_CALL:I

    invoke-virtual {v5, v2}, Lcom/android/htccontacts/util/ImData;->setType(I)V

    .line 814
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    const/4 v2, 0x3

    move/from16 v0, v34

    if-ne v2, v0, :cond_a

    .line 816
    const-string v2, "vnd.android.cursor.item/com.skype.android.videocall.action"

    invoke-virtual {v5, v2}, Lcom/android/htccontacts/util/ImData;->setDataMimetype(Ljava/lang/String;)V

    goto :goto_3

    .line 819
    :cond_a
    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Lcom/android/htccontacts/util/ImData;->setDataMimetype(Ljava/lang/String;)V

    goto :goto_3

    .line 831
    .end local v5           #imData:Lcom/android/htccontacts/util/ImData;
    :cond_b
    const/4 v2, 0x5

    if-le v12, v2, :cond_1

    .line 832
    new-instance v29, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    .local v29, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v7

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 836
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/app/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    .line 837
    .local v33, pm:Landroid/content/pm/PackageManager;
    if-eqz v33, :cond_d

    .line 838
    const/high16 v2, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    .line 839
    .local v20, candidateList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 840
    new-instance v5, Lcom/android/htccontacts/util/ImData;

    move/from16 v6, v35

    move-object/from16 v8, v26

    move-object/from16 v9, v28

    move/from16 v10, v34

    invoke-direct/range {v5 .. v12}, Lcom/android/htccontacts/util/ImData;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 841
    .restart local v5       #imData:Lcom/android/htccontacts/util/ImData;
    sget v2, Lcom/android/htccontacts/util/ImData;->VIDEO_CALL:I

    invoke-virtual {v5, v2}, Lcom/android/htccontacts/util/ImData;->setType(I)V

    .line 842
    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Lcom/android/htccontacts/util/ImData;->setDataMimetype(Ljava/lang/String;)V

    .line 843
    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/htccontacts/util/ImData;->setGenericVCIntent(Landroid/content/Intent;)V

    .line 844
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 849
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_1

    .line 853
    .end local v5           #imData:Lcom/android/htccontacts/util/ImData;
    .end local v20           #candidateList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_d
    const-string v2, "PeopleListContextMenu"

    const-string v3, "PackageManager instance cannot be obtained!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 858
    .end local v7           #dataId:I
    .end local v11           #customProtocol:Ljava/lang/String;
    .end local v12           #presence:I
    .end local v26           #imAccount:Ljava/lang/String;
    .end local v28           #imHandle:Ljava/lang/String;
    .end local v29           #intent:Landroid/content/Intent;
    .end local v30           #mimetype:Ljava/lang/String;
    .end local v33           #pm:Landroid/content/pm/PackageManager;
    .end local v34           #protocol:I
    .end local v35           #rawContactId:I
    :cond_e
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 859
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/app/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v15, v2

    const/4 v2, 0x1

    const-string v3, "display_name"

    aput-object v3, v15, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v32

    .line 863
    .local v32, nameCursor:Landroid/database/Cursor;
    if-eqz v32, :cond_14

    .line 865
    :cond_f
    :try_start_6
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 866
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 867
    .local v24, id:J
    const/4 v2, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 869
    .local v31, name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/util/ImData;

    .line 870
    .restart local v5       #imData:Lcom/android/htccontacts/util/ImData;
    invoke-virtual {v5}, Lcom/android/htccontacts/util/ImData;->getRawcontactId()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v24, v2

    if-nez v2, :cond_10

    .line 871
    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/android/htccontacts/util/ImData;->setDiaplsyName(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 877
    .end local v5           #imData:Lcom/android/htccontacts/util/ImData;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v24           #id:J
    .end local v31           #name:Ljava/lang/String;
    :catchall_2
    move-exception v2

    :try_start_7
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 887
    .end local v27           #imDataArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    .end local v32           #nameCursor:Landroid/database/Cursor;
    .end local v36           #rawContactIdList:Ljava/lang/String;
    :cond_11
    if-eqz v19, :cond_12

    .line 888
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_12
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 877
    .restart local v27       #imDataArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    .restart local v32       #nameCursor:Landroid/database/Cursor;
    .restart local v36       #rawContactIdList:Ljava/lang/String;
    :cond_13
    :try_start_8
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 883
    .end local v32           #nameCursor:Landroid/database/Cursor;
    :cond_14
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/app/BaseActivity;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/app/BaseActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 895
    .local p2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    if-nez p2, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    move-object v2, p2

    .line 900
    .local v2, imDataArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 901
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/ImData;

    .line 902
    .local v1, imData:Lcom/android/htccontacts/util/ImData;
    const/4 v3, 0x0

    .line 905
    .local v3, intent:Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 907
    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getIntentYahooVideoCall()Landroid/content/Intent;

    move-result-object v3

    .line 921
    :goto_1
    if-eqz v3, :cond_0

    .line 924
    :try_start_0
    invoke-virtual {p1, v3}, Lcom/android/htccontacts/app/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    :catch_0
    move-exception v4

    goto :goto_0

    .line 908
    :cond_2
    const/4 v4, 0x3

    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 910
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getDataId()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 913
    :cond_3
    const/4 v4, -0x1

    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v5

    if-ne v4, v5, :cond_4

    const-string v4, "com.qik.android.protocol"

    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getCustomProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 916
    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getIntentIm()Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    .line 918
    :cond_4
    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getGenericVCIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    .line 930
    .end local v1           #imData:Lcom/android/htccontacts/util/ImData;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    invoke-static {p1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->createTmoVideoCallDialog(Landroid/app/Activity;Ljava/util/ArrayList;)Landroid/app/Dialog;

    move-result-object v0

    .line 931
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 933
    invoke-virtual {p1, v0}, Lcom/android/htccontacts/app/BaseActivity;->manageDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    check-cast p1, Lcom/android/htccontacts/app/BaseActivity;

    .end local p1
    check-cast p2, Ljava/util/ArrayList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$MakeViewCallTask;->onPostExecute(Lcom/android/htccontacts/app/BaseActivity;Ljava/util/ArrayList;)V

    return-void
.end method
