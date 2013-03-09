.class Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryMyContactNameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;",
        "Lcom/android/htccontacts/ui/EditContactActivity2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1553
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1554
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Landroid/content/Intent;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    .locals 33
    .parameter "target"
    .parameter "params"

    .prologue
    .line 1567
    new-instance v20, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2$1;)V

    .line 1568
    .local v20, result:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    move-object/from16 v11, p1

    .line 1571
    .local v11, context:Landroid/content/Context;
    invoke-virtual {v11}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1573
    .local v2, resolver:Landroid/content/ContentResolver;
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v17

    .line 1574
    .local v17, nSize:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_2

    .line 1575
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htccontacts/model/EntityDelta;

    .line 1576
    .local v13, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v13}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v32

    .line 1577
    .local v32, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v32 .. v32}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1574
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1585
    :cond_1
    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v13, v4}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    .line 1586
    .local v19, primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v19, :cond_0

    .line 1587
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1588
    .local v16, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "type"

    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a011f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    const-string v4, "data4"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1593
    .local v29, sPrefixName:Ljava/lang/String;
    const-string v4, "data6"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1596
    .local v30, sSuffixName:Ljava/lang/String;
    const-string v4, "data2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1599
    .local v23, sGivenName:Ljava/lang/String;
    const-string v4, "data5"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1602
    .local v24, sMiddleName:Ljava/lang/String;
    const-string v4, "data3"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1605
    .local v22, sFamilyName:Ljava/lang/String;
    const-string v4, "data7"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1608
    .local v26, sPhoneticGivenName:Ljava/lang/String;
    const-string v4, "data8"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1611
    .local v27, sPhoneticMiddleName:Ljava/lang/String;
    const-string v4, "data9"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1614
    .local v25, sPhoneticFamilyName:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->getJoinNamesDisplayName(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3000(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;

    move-result-object v12

    .line 1615
    .local v12, display:Ljava/lang/String;
    const-string v4, "EditContactActivity2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground of QueryMyContactNameTask display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const-string v4, "name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    const-string v4, "prefix_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    const-string v4, "suffix_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    const-string v4, "given_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    const-string v4, "middle_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    const-string v4, "family_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    const-string v4, "phonetic_given_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    const-string v4, "phonetic_middle_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    const-string v4, "phonetic_family_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1632
    .end local v12           #display:Ljava/lang/String;
    .end local v13           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v16           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19           #primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v22           #sFamilyName:Ljava/lang/String;
    .end local v23           #sGivenName:Ljava/lang/String;
    .end local v24           #sMiddleName:Ljava/lang/String;
    .end local v25           #sPhoneticFamilyName:Ljava/lang/String;
    .end local v26           #sPhoneticGivenName:Ljava/lang/String;
    .end local v27           #sPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #sPrefixName:Ljava/lang/String;
    .end local v30           #sSuffixName:Ljava/lang/String;
    .end local v32           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_2
    const/4 v3, 0x0

    .line 1633
    .local v3, RAWQUERY_CONTENT_URI:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 1635
    .local v10, c:Landroid/database/Cursor;
    sget-object v3, Lcom/htc/provider/HtcContactsContract;->FACEBOOK_RAWQUERY_CONTENT_URI:Landroid/net/Uri;

    .line 1636
    const/4 v4, 0x0

    const-string v5, "select fullname from person where uid in (select loginId from accounts where defaultAccount=1)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1639
    if-eqz v10, :cond_4

    .line 1640
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1641
    const-string v4, "fullname"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1642
    .local v21, sFacebookUserName:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1643
    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/htc/util/contacts/ContactsUtility;->fixStructuredNameComponents(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v18

    .line 1644
    .local v18, name:Landroid/content/ContentValues;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1646
    .restart local v16       #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "type"

    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    const-string v4, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    const-string v4, "prefix_name"

    const-string v5, "data4"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    const-string v4, "suffix_name"

    const-string v5, "data6"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    const-string v4, "given_name"

    const-string v5, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    const-string v4, "middle_name"

    const-string v5, "data5"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    const-string v4, "family_name"

    const-string v5, "data3"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    const-string v4, "phonetic_given_name"

    const-string v5, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    const-string v4, "phonetic_middle_name"

    const-string v5, "data8"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    const-string v4, "phonetic_family_name"

    const-string v5, "data9"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    .end local v16           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18           #name:Landroid/content/ContentValues;
    .end local v21           #sFacebookUserName:Ljava/lang/String;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1660
    const/4 v10, 0x0

    .line 1663
    :cond_4
    sget-object v3, Lcom/htc/provider/HtcContactsContract;->PLURK_RAWQUERY_CONTENT_URI:Landroid/net/Uri;

    .line 1664
    const/4 v4, 0x0

    const-string v5, "select fullname from users where _id in (select user_id from accounts where default_account=1)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1667
    if-eqz v10, :cond_6

    .line 1668
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1669
    const-string v4, "fullname"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1670
    .local v28, sPlurkUserName:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1671
    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/htc/util/contacts/ContactsUtility;->fixStructuredNameComponents(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v18

    .line 1672
    .restart local v18       #name:Landroid/content/ContentValues;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1673
    .restart local v16       #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "type"

    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    const-string v4, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    const-string v4, "prefix_name"

    const-string v5, "data4"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    const-string v4, "suffix_name"

    const-string v5, "data6"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    const-string v4, "given_name"

    const-string v5, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    const-string v4, "middle_name"

    const-string v5, "data5"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    const-string v4, "family_name"

    const-string v5, "data3"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    const-string v4, "phonetic_given_name"

    const-string v5, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    const-string v4, "phonetic_middle_name"

    const-string v5, "data8"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    const-string v4, "phonetic_family_name"

    const-string v5, "data9"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    .end local v16           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18           #name:Landroid/content/ContentValues;
    .end local v28           #sPlurkUserName:Ljava/lang/String;
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1687
    const/4 v10, 0x0

    .line 1690
    :cond_6
    sget-object v3, Lcom/htc/provider/HtcContactsContract;->TWITTER_RAWQUERY_CONTENT_URI_3_5:Landroid/net/Uri;

    .line 1691
    invoke-virtual {v11}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "select username from accounts where defaultaccount = 1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1694
    if-eqz v10, :cond_8

    .line 1695
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1696
    const-string v4, "username"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1697
    .local v31, sTwitterUserName:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1698
    move-object/from16 v0, v31

    invoke-static {v2, v0}, Lcom/htc/util/contacts/ContactsUtility;->fixStructuredNameComponents(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v18

    .line 1699
    .restart local v18       #name:Landroid/content/ContentValues;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1700
    .restart local v16       #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "type"

    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    const-string v4, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    const-string v4, "prefix_name"

    const-string v5, "data4"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    const-string v4, "suffix_name"

    const-string v5, "data6"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    const-string v4, "given_name"

    const-string v5, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    const-string v4, "middle_name"

    const-string v5, "data5"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    const-string v4, "family_name"

    const-string v5, "data3"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    const-string v4, "phonetic_given_name"

    const-string v5, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    const-string v4, "phonetic_middle_name"

    const-string v5, "data8"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    const-string v4, "phonetic_family_name"

    const-string v5, "data9"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1713
    .end local v16           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18           #name:Landroid/content/ContentValues;
    .end local v31           #sTwitterUserName:Ljava/lang/String;
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1714
    const/4 v10, 0x0

    .line 1717
    :cond_8
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3100(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1718
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v4

    iget-object v4, v4, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName:Ljava/util/Map;

    const-string v5, "display_name"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1719
    .local v14, googlePlusDispalyName:Ljava/lang/String;
    invoke-static {v2, v14}, Lcom/htc/util/contacts/ContactsUtility;->fixStructuredNameComponents(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v18

    .line 1720
    .restart local v18       #name:Landroid/content/ContentValues;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1721
    .restart local v16       #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "type"

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v5

    iget-object v5, v5, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusDisplayType:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    const-string v4, "name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    const-string v4, "prefix_name"

    const-string v5, "data4"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    const-string v4, "suffix_name"

    const-string v5, "data6"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    const-string v4, "given_name"

    const-string v5, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    const-string v4, "middle_name"

    const-string v5, "data5"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    const-string v4, "family_name"

    const-string v5, "data3"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    const-string v4, "phonetic_given_name"

    const-string v5, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    const-string v4, "phonetic_middle_name"

    const-string v5, "data8"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    const-string v4, "phonetic_family_name"

    const-string v5, "data9"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    .end local v14           #googlePlusDispalyName:Ljava/lang/String;
    .end local v16           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18           #name:Landroid/content/ContentValues;
    :cond_9
    const-string v4, "EditContactActivity2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground of QueryMyContactNameTask result.EditNameData.size(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    return-object v20
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1549
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    check-cast p2, [Landroid/content/Intent;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameTask;->doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Landroid/content/Intent;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;)V
    .locals 1
    .parameter "target"
    .parameter "result"

    .prologue
    .line 1742
    if-nez p2, :cond_1

    .line 1746
    :cond_0
    :goto_0
    return-void

    .line 1743
    :cond_1
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3200(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1744
    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static {p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1502(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    .line 1745
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->doEditMyContactName()V
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3300(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1549
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    check-cast p2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameTask;->onPostExecute(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1559
    if-eqz p1, :cond_0

    .line 1560
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->setQueryNamePhotoTaskDone(Z)V

    .line 1562
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1549
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameTask;->onPreExecute(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    return-void
.end method
