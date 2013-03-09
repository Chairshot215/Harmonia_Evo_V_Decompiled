.class Lcom/android/phone/PhoneApp$CbQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CbQueryHandler"
.end annotation


# instance fields
.field public final CONTENT_URI:Landroid/net/Uri;

.field public final PROJECTION:[Ljava/lang/String;

.field public final QUERY_TOKEN:I

.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Landroid/content/ContentResolver;)V
    .locals 4
    .parameter
    .parameter "cr"

    .prologue
    const/4 v3, 0x1

    .line 4656
    iput-object p1, p0, Lcom/android/phone/PhoneApp$CbQueryHandler;->this$0:Lcom/android/phone/PhoneApp;

    .line 4657
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 4652
    iput v3, p0, Lcom/android/phone/PhoneApp$CbQueryHandler;->QUERY_TOKEN:I

    .line 4653
    const-string v0, "content://cbchannels/cbch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp$CbQueryHandler;->CONTENT_URI:Landroid/net/Uri;

    .line 4654
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "channel"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "enable"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/PhoneApp$CbQueryHandler;->PROJECTION:[Ljava/lang/String;

    .line 4658
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 48
    .parameter "token"
    .parameter "cookie"
    .parameter "cur"

    .prologue
    .line 4663
    const/4 v11, 0x0

    .line 4665
    .local v11, bInit:Z
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 4666
    .local v37, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$CbQueryHandler;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v45

    .line 4669
    .local v45, sp:Landroid/content/SharedPreferences;
    const-string v2, "gsm.sim.cbmi.channel"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 4670
    .local v43, simCh:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Lcom/android/phone/util/CbsUtils;->removeGsmCmasChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 4671
    .local v39, rSimCh:Ljava/lang/String;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim ch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refine sim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    const/16 v44, 0x0

    .line 4674
    .local v44, simChList:[Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v44

    .line 4675
    :cond_0
    const/16 v40, 0x0

    .line 4685
    .local v40, receiveCh:Z
    if-eqz p3, :cond_2

    .line 4686
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 4687
    .local v21, count:I
    const/16 v35, 0x0

    .line 4688
    .local v35, mDbChannels:Ljava/lang/String;
    if-eqz v21, :cond_8

    .line 4689
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4690
    const/16 v29, 0x0

    .local v29, i:I
    :goto_0
    move/from16 v0, v29

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 4691
    const-string v2, "channel"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 4692
    if-eqz v43, :cond_7

    move-object/from16 v0, v43

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 4693
    const/4 v11, 0x1

    .line 4702
    .end local v29           #i:I
    :cond_1
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4703
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 4704
    const/16 p3, 0x0

    .line 4717
    .end local v21           #count:I
    .end local v35           #mDbChannels:Ljava/lang/String;
    :cond_2
    if-nez v11, :cond_5

    .line 4718
    move-object/from16 v41, v43

    .line 4719
    .local v41, s:Ljava/lang/String;
    if-eqz v41, :cond_5

    .line 4720
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getConstantChannelList()Ljava/util/ArrayList;

    move-result-object v20

    .line 4721
    .local v20, consList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 4722
    .local v15, channel:Ljava/lang/Integer;
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 4723
    .local v14, ch:Ljava/lang/String;
    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4724
    const/4 v11, 0x1

    .line 4729
    .end local v14           #ch:Ljava/lang/String;
    .end local v15           #channel:Ljava/lang/Integer;
    :cond_4
    if-eqz v44, :cond_5

    if-nez v11, :cond_5

    .line 4730
    move-object/from16 v9, v44

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v34, v0

    .local v34, len$:I
    const/16 v30, 0x0

    .local v30, i$:I
    :goto_2
    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_5

    aget-object v42, v9, v30

    .line 4731
    .local v42, sch:Ljava/lang/String;
    const-string v2, "0"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4732
    const/16 v40, 0x1

    .line 4742
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v20           #consList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30           #i$:I
    .end local v34           #len$:I
    .end local v41           #s:Ljava/lang/String;
    .end local v42           #sch:Ljava/lang/String;
    :cond_5
    const/16 v22, 0x0

    .line 4744
    .local v22, cscbList:Ljava/lang/String;
    const/16 v17, 0x0

    .line 4747
    .local v17, cnt:I
    if-eqz v11, :cond_13

    .line 4748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$CbQueryHandler;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$2900(Lcom/android/phone/PhoneApp;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$CbQueryHandler;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp$CbQueryHandler;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "channel DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 4751
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4752
    const-string v2, "PhoneApp"

    const-string v3, "delete all channels"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    :cond_6
    if-eqz p3, :cond_b

    .line 4761
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 4764
    .restart local v21       #count:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4765
    const/16 v29, 0x0

    .restart local v29       #i:I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 4766
    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 4767
    .local v31, id:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v31

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 4771
    .local v47, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$CbQueryHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 4773
    .local v13, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4775
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 4765
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 4696
    .end local v13           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v17           #cnt:I
    .end local v22           #cscbList:Ljava/lang/String;
    .end local v31           #id:J
    .end local v47           #where:Ljava/lang/String;
    .restart local v35       #mDbChannels:Ljava/lang/String;
    :cond_7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 4690
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 4699
    .end local v29           #i:I
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 4730
    .end local v21           #count:I
    .end local v35           #mDbChannels:Ljava/lang/String;
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v20       #consList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v30       #i$:I
    .restart local v34       #len$:I
    .restart local v41       #s:Ljava/lang/String;
    .restart local v42       #sch:Ljava/lang/String;
    :cond_9
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2

    .line 4777
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v20           #consList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30           #i$:I
    .end local v34           #len$:I
    .end local v41           #s:Ljava/lang/String;
    .end local v42           #sch:Ljava/lang/String;
    .restart local v17       #cnt:I
    .restart local v21       #count:I
    .restart local v22       #cscbList:Ljava/lang/String;
    .restart local v29       #i:I
    :cond_a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 4778
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 4779
    const/16 p3, 0x0

    .line 4785
    .end local v21           #count:I
    .end local v29           #i:I
    :cond_b
    const-string v2, "gsm.cb.max.channel"

    const-string v3, "10"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 4787
    .local v36, max:Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 4788
    .local v8, SimMaxCnt:I
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimMaxCnt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4793
    const-string v2, "initMsgId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get cbmi from EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4807
    :cond_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 4808
    .local v23, cscbStr:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getConstantChannelList()Ljava/util/ArrayList;

    move-result-object v19

    .line 4809
    .local v19, consChList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 4810
    .restart local v15       #channel:Ljava/lang/Integer;
    new-instance v46, Landroid/content/ContentValues;

    invoke-direct/range {v46 .. v46}, Landroid/content/ContentValues;-><init>()V

    .line 4811
    .local v46, values:Landroid/content/ContentValues;
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 4813
    .restart local v14       #ch:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/phone/util/CbsUtils;->getConstantChannelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4815
    .local v16, chname:Ljava/lang/String;
    const-string v2, "title"

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4816
    const-string v2, "channel"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4817
    const-string v2, "enable"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$CbQueryHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 4821
    .restart local v13       #builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 4822
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4823
    add-int/lit8 v17, v17, 0x1

    .line 4824
    const/4 v2, 0x1

    move/from16 v0, v17

    if-gt v0, v2, :cond_d

    .line 4825
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4827
    :cond_d
    const-string v2, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4835
    .end local v13           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #ch:Ljava/lang/String;
    .end local v15           #channel:Ljava/lang/Integer;
    .end local v16           #chname:Ljava/lang/String;
    .end local v46           #values:Landroid/content/ContentValues;
    :cond_e
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getGsmAllCmasChannelCount()I

    move-result v2

    add-int v17, v17, v2

    .line 4839
    if-eqz v44, :cond_f

    .line 4840
    move-object/from16 v9, v44

    .restart local v9       #arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v34, v0

    .restart local v34       #len$:I
    const/16 v30, 0x0

    .local v30, i$:I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_f

    aget-object v14, v9, v30

    .line 4842
    .restart local v14       #ch:Ljava/lang/String;
    move/from16 v0, v17

    if-lt v0, v8, :cond_18

    .line 4883
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v14           #ch:Ljava/lang/String;
    .end local v30           #i$:I
    .end local v34           #len$:I
    :cond_f
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isvivoPTB()Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "recevie_channel_list"

    move-object/from16 v0, v45

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const/4 v12, 0x1

    .line 4884
    .local v12, bPTBfirstboot:Z
    :goto_6
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiveCh/bPTBfirstboot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    if-nez v40, :cond_10

    if-eqz v12, :cond_11

    .line 4888
    :cond_10
    move/from16 v0, v17

    if-ge v0, v8, :cond_1e

    .line 4889
    add-int/lit8 v17, v17, 0x1

    .line 4890
    const/16 v40, 0x1

    .line 4891
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1d

    .line 4892
    const-string v2, "0"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4903
    :cond_11
    :goto_7
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_12

    .line 4904
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 4906
    :cond_12
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "final channel list> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4907
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "final ch list cnt> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4911
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$CbQueryHandler;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cbchannels"

    move-object/from16 v0, v37

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4919
    .end local v8           #SimMaxCnt:I
    .end local v12           #bPTBfirstboot:Z
    .end local v19           #consChList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23           #cscbStr:Ljava/lang/StringBuilder;
    .end local v36           #max:Ljava/lang/String;
    :cond_13
    :goto_8
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getConstantChListCount()I

    move-result v24

    .line 4920
    .local v24, defaultCnt:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$CbQueryHandler;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lcom/android/phone/util/CbsUtils;->getCmdLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 4921
    .local v18, comLangStr:Ljava/lang/String;
    if-lez v24, :cond_1f

    const/16 v27, 0x1

    .line 4923
    .local v27, hasDefaultCh:Z
    :goto_9
    move-object/from16 v38, v39

    .line 4924
    .local v38, pureSimCh:Ljava/lang/String;
    if-eqz v27, :cond_14

    .line 4925
    invoke-static/range {v39 .. v39}, Lcom/android/phone/util/CbsUtils;->removeConstantChannels(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 4929
    :cond_14
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    const/16 v28, 0x1

    .line 4950
    .local v28, hasSimChannel:Z
    :goto_a
    invoke-interface/range {v45 .. v45}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    .line 4951
    .local v26, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "recevie_channel_list"

    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4953
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable index> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4956
    if-nez v28, :cond_15

    if-eqz v27, :cond_21

    :cond_15
    const/4 v10, 0x1

    .line 4957
    .local v10, bEnableCellBroadcast:Z
    :goto_b
    const-string v2, "pref_key_cb_enable"

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4958
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4960
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ch list after init> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasSimCh? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasDefaulCh? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4962
    if-nez v28, :cond_16

    if-eqz v27, :cond_22

    .line 4966
    :cond_16
    if-nez v22, :cond_17

    .line 4971
    if-eqz v28, :cond_17

    .line 4972
    move-object/from16 v22, v39

    .line 4975
    :cond_17
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v2, v0, v1}, Lcom/android/phone/util/CbsUtils;->setCBCh(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 4995
    :goto_c
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/util/CbsUtils;->setCbSyncCompleted(Z)V

    .line 4997
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->deleteNonReadonlyConstant()V

    .line 4998
    return-void

    .line 4844
    .end local v10           #bEnableCellBroadcast:Z
    .end local v18           #comLangStr:Ljava/lang/String;
    .end local v24           #defaultCnt:I
    .end local v26           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v27           #hasDefaultCh:Z
    .end local v28           #hasSimChannel:Z
    .end local v38           #pureSimCh:Ljava/lang/String;
    .restart local v8       #SimMaxCnt:I
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v14       #ch:Ljava/lang/String;
    .restart local v19       #consChList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23       #cscbStr:Ljava/lang/StringBuilder;
    .restart local v30       #i$:I
    .restart local v34       #len$:I
    .restart local v36       #max:Ljava/lang/String;
    :cond_18
    const/4 v15, 0x0

    .line 4845
    .local v15, channel:I
    const/16 v33, 0x1

    .line 4847
    .local v33, isInt:Z
    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    .line 4852
    :goto_d
    const-string v2, "0"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    if-eqz v33, :cond_1b

    .line 4853
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 4854
    new-instance v46, Landroid/content/ContentValues;

    invoke-direct/range {v46 .. v46}, Landroid/content/ContentValues;-><init>()V

    .line 4855
    .restart local v46       #values:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4856
    const-string v2, "channel"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4857
    const-string v2, "enable"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$CbQueryHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 4861
    .restart local v13       #builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 4862
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4863
    add-int/lit8 v17, v17, 0x1

    .line 4864
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1a

    .line 4865
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4840
    .end local v13           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v46           #values:Landroid/content/ContentValues;
    :cond_19
    :goto_e
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_5

    .line 4848
    :catch_0
    move-exception v25

    .line 4849
    .local v25, e:Ljava/lang/Exception;
    const/16 v33, 0x0

    .line 4850
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not parse simStr to int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 4867
    .end local v25           #e:Ljava/lang/Exception;
    .restart local v13       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v46       #values:Landroid/content/ContentValues;
    :cond_1a
    const-string v2, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 4873
    .end local v13           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v46           #values:Landroid/content/ContentValues;
    :cond_1b
    const-string v2, "0"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4874
    const/16 v40, 0x1

    goto :goto_e

    .line 4883
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v14           #ch:Ljava/lang/String;
    .end local v15           #channel:I
    .end local v30           #i$:I
    .end local v33           #isInt:Z
    .end local v34           #len$:I
    :cond_1c
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 4894
    .restart local v12       #bPTBfirstboot:Z
    :cond_1d
    const-string v2, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 4897
    :cond_1e
    const-string v2, "PhoneApp"

    const-string v3, "channel reach max, can not add channel 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4898
    const/16 v40, 0x0

    goto/16 :goto_7

    .line 4912
    :catch_1
    move-exception v25

    .line 4913
    .local v25, e:Landroid/os/RemoteException;
    const-string v2, "CbQueryHandler"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 4914
    .end local v25           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v25

    .line 4915
    .local v25, e:Landroid/content/OperationApplicationException;
    const-string v2, "CbQueryHandler"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v25 .. v25}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 4921
    .end local v8           #SimMaxCnt:I
    .end local v12           #bPTBfirstboot:Z
    .end local v19           #consChList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23           #cscbStr:Ljava/lang/StringBuilder;
    .end local v25           #e:Landroid/content/OperationApplicationException;
    .end local v36           #max:Ljava/lang/String;
    .restart local v18       #comLangStr:Ljava/lang/String;
    .restart local v24       #defaultCnt:I
    :cond_1f
    const/16 v27, 0x0

    goto/16 :goto_9

    .line 4929
    .restart local v27       #hasDefaultCh:Z
    .restart local v38       #pureSimCh:Ljava/lang/String;
    :cond_20
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 4956
    .restart local v26       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v28       #hasSimChannel:Z
    :cond_21
    const/4 v10, 0x0

    goto/16 :goto_b

    .line 4978
    .restart local v10       #bEnableCellBroadcast:Z
    :cond_22
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/phone/util/CbsUtils;->setCBCh(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 4979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$CbQueryHandler;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->setPreferCBLanguage()V

    goto/16 :goto_c
.end method
