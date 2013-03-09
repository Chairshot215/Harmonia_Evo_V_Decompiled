.class Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;
.super Ljava/lang/Object;
.source "ContactListSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactListSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleChoicePickerDialogHandler"
.end annotation


# instance fields
.field checkedItem:I

.field final synthetic this$0:Lcom/android/htccontacts/ContactListSearchPicker;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ContactListSearchPicker;)V
    .locals 1
    .parameter

    .prologue
    .line 3571
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3572
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->checkedItem:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ContactListSearchPicker;Lcom/android/htccontacts/ContactListSearchPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3571
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;-><init>(Lcom/android/htccontacts/ContactListSearchPicker;)V

    return-void
.end method

.method private createDataDialog(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/content/ContentValues;)Lcom/htc/widget/HtcAlertDialog;
    .locals 49
    .parameter "context"
    .parameter "title"
    .parameter "contactUri"
    .parameter "mimetypes"
    .parameter "values"

    .prologue
    .line 3583
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 3584
    .local v40, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 3585
    .local v34, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 3587
    .local v42, phonesIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v8, ""

    .line 3588
    .local v8, selection:Ljava/lang/String;
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v45, v0

    .line 3589
    .local v45, size:I
    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v45

    if-ge v0, v1, :cond_1

    .line 3590
    aget-object v37, p4, v25

    .line 3591
    .local v37, mimetype:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mimetype"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v37 .. v37}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3594
    add-int/lit8 v9, v45, -0x1

    move/from16 v0, v25

    if-ge v0, v9, :cond_0

    .line 3595
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  OR "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3589
    :cond_0
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 3599
    .end local v37           #mimetype:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x6

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "data1"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string v10, "data2"

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-string v10, "data3"

    aput-object v10, v7, v9

    const/4 v9, 0x4

    const-string v10, "is_super_primary"

    aput-object v10, v7, v9

    const/4 v9, 0x5

    const-string v10, "mimetype"

    aput-object v10, v7, v9

    .line 3607
    .local v7, projection:[Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 3608
    .local v14, contactId:J
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 3610
    .local v6, queryUri:Landroid/net/Uri;
    const-string v9, "data"

    invoke-static {v6, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 3612
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {v9}, Lcom/android/htccontacts/ContactListSearchPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3614
    .local v5, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    const-string v10, "data2  ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3617
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_d

    .line 3618
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 3619
    .local v17, counts:I
    const-string v9, "_id"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 3620
    .local v27, ididx:I
    const-string v9, "data2"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 3622
    .local v48, typeidx:I
    const-string v9, "data1"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 3624
    .local v22, dataidx:I
    const-string v9, "data3"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 3626
    .local v33, labelidx:I
    const-string v9, "is_super_primary"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 3628
    .local v46, superPrimaryidx:I
    const-string v9, "mimetype"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 3630
    .local v36, mimeTypeIdx:I
    const/4 v9, 0x2

    move/from16 v0, v17

    if-ge v0, v9, :cond_3

    .line 3631
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3632
    if-eqz p5, :cond_2

    .line 3633
    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 3634
    .local v18, data:Ljava/lang/String;
    move/from16 v0, v27

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 3635
    .local v19, dataId:J
    move/from16 v0, v36

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 3636
    .local v35, mime:Ljava/lang/String;
    const-string v9, "_id"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3637
    const-string v9, "data1"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3638
    const-string v9, "mimetype"

    move-object/from16 v0, p5

    move-object/from16 v1, v35

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3641
    .end local v18           #data:Ljava/lang/String;
    .end local v19           #dataId:J
    .end local v35           #mime:Ljava/lang/String;
    :cond_2
    const/16 v23, 0x0

    .line 3752
    .end local v17           #counts:I
    .end local v22           #dataidx:I
    .end local v27           #ididx:I
    .end local v33           #labelidx:I
    .end local v36           #mimeTypeIdx:I
    .end local v46           #superPrimaryidx:I
    .end local v48           #typeidx:I
    :goto_1
    return-object v23

    .line 3645
    .restart local v17       #counts:I
    .restart local v22       #dataidx:I
    .restart local v27       #ididx:I
    .restart local v33       #labelidx:I
    .restart local v36       #mimeTypeIdx:I
    .restart local v46       #superPrimaryidx:I
    .restart local v48       #typeidx:I
    :cond_3
    const/16 v16, 0x0

    .line 3646
    .local v16, count:I
    :cond_4
    :goto_2
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_c

    const/16 v9, 0xc8

    move/from16 v0, v16

    if-ge v0, v9, :cond_c

    .line 3647
    move/from16 v0, v27

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 3648
    .local v26, id:I
    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 3649
    .local v39, number:Ljava/lang/String;
    move/from16 v0, v48

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 3650
    .local v47, type:I
    move/from16 v0, v33

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 3651
    .local v31, label:Ljava/lang/String;
    move/from16 v0, v46

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 3652
    .local v28, isprimary:I
    move/from16 v0, v36

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 3653
    .restart local v35       #mime:Ljava/lang/String;
    const/4 v13, -0x1

    .line 3654
    .local v13, commonId:I
    if-eqz v35, :cond_5

    .line 3655
    const-string v9, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3656
    invoke-static/range {v47 .. v47}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v13

    .line 3671
    :cond_5
    :goto_3
    const/16 v44, 0x0

    .line 3672
    .local v44, sequence:Ljava/lang/CharSequence;
    if-eqz v31, :cond_a

    .line 3673
    move-object/from16 v44, v31

    .line 3682
    :goto_4
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3685
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3686
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3687
    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3688
    if-lez v28, :cond_6

    .line 3689
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->checkedItem:I

    .line 3691
    :cond_6
    add-int/lit8 v16, v16, 0x1

    .line 3692
    goto :goto_2

    .line 3658
    .end local v44           #sequence:Ljava/lang/CharSequence;
    :cond_7
    const-string v9, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3659
    invoke-static/range {v47 .. v47}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v13

    goto :goto_3

    .line 3661
    :cond_8
    const-string v9, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3663
    invoke-static/range {v47 .. v47}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v13

    goto :goto_3

    .line 3666
    :cond_9
    invoke-static/range {v47 .. v47}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v13

    goto :goto_3

    .line 3675
    .restart local v44       #sequence:Ljava/lang/CharSequence;
    :cond_a
    if-lez v13, :cond_b

    .line 3676
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {v9, v13}, Lcom/android/htccontacts/ContactListSearchPicker;->getString(I)Ljava/lang/String;

    move-result-object v44

    goto :goto_4

    .line 3678
    :cond_b
    const-string v44, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 3695
    .end local v13           #commonId:I
    .end local v26           #id:I
    .end local v28           #isprimary:I
    .end local v31           #label:Ljava/lang/String;
    .end local v35           #mime:Ljava/lang/String;
    .end local v39           #number:Ljava/lang/String;
    .end local v44           #sequence:Ljava/lang/CharSequence;
    .end local v47           #type:I
    :catchall_0
    move-exception v9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v9

    :cond_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3699
    .end local v16           #count:I
    .end local v17           #counts:I
    .end local v22           #dataidx:I
    .end local v27           #ididx:I
    .end local v33           #labelidx:I
    .end local v36           #mimeTypeIdx:I
    .end local v46           #superPrimaryidx:I
    .end local v48           #typeidx:I
    :cond_d
    move-object/from16 v24, p3

    .line 3701
    .local v24, finalcontactUri:Landroid/net/Uri;
    new-instance v21, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3704
    .local v21, dataPickerBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v43, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$1;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$1;-><init>(Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;)V

    .line 3710
    .local v43, selectionlistener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v41, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v40

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$2;-><init>(Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;)V

    .line 3722
    .local v41, oklistener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v12, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler$3;-><init>(Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;)V

    .line 3729
    .local v12, cancellistener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3730
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v29, v0

    .line 3732
    .local v29, items:[Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 3733
    .local v32, labelArraySize:I
    const/16 v25, 0x0

    :goto_5
    move-object/from16 v0, v29

    array-length v9, v0

    move/from16 v0, v25

    if-ge v0, v9, :cond_10

    .line 3734
    const-string v30, ""

    .line 3735
    .local v30, lab:Ljava/lang/CharSequence;
    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    .line 3736
    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #lab:Ljava/lang/CharSequence;
    check-cast v30, Ljava/lang/CharSequence;

    .line 3738
    .restart local v30       #lab:Ljava/lang/CharSequence;
    :cond_e
    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/CharSequence;

    .line 3739
    .local v38, num:Ljava/lang/CharSequence;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 3740
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v29, v25

    .line 3733
    :goto_6
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    .line 3742
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v29, v25

    goto :goto_6

    .line 3746
    .end local v30           #lab:Ljava/lang/CharSequence;
    .end local v38           #num:Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->checkedItem:I

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v9, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3748
    const v9, 0x7f0a014f

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3749
    const v9, 0x7f0a0152

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3751
    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v23

    .line 3752
    .local v23, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_1
.end method


# virtual methods
.method public create(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/content/ContentValues;)Lcom/htc/widget/HtcAlertDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "contactUri"
    .parameter "mimetypes"
    .parameter "values"

    .prologue
    .line 3576
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/ContactListSearchPicker$SingleChoicePickerDialogHandler;->createDataDialog(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/content/ContentValues;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method
