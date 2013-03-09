.class Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;
.super Ljava/lang/Object;
.source "PersonIndicatorRequest.java"

# interfaces
.implements Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 34
    .parameter "result"

    .prologue
    .line 731
    const/16 v20, 0x0

    .line 733
    .local v20, count:I
    const/16 v21, 0x0

    .line 735
    .local v21, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 736
    .local v5, projection:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getLatestActivity()Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;

    move-result-object v9

    .line 737
    .local v9, activity:Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "contactId"

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 739
    .local v14, lContactId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->isSense40Above()Z
    invoke-static {v3}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->access$000(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x8a

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x96

    if-ne v3, v4, :cond_5

    .line 741
    :cond_0
    const-string v8, "date2 DESC"

    .line 746
    .local v8, sort_order:Ljava/lang/String;
    :goto_0
    iget-wide v3, v9, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mContactId:J

    cmp-long v3, v3, v14

    if-eqz v3, :cond_1

    .line 747
    invoke-virtual {v9}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->resetValue()V

    .line 749
    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    .local v19, addr:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 752
    .local v29, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v33, 0x0

    .line 753
    .local v33, phoneCount:I
    :cond_2
    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 754
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 755
    .local v32, number:Ljava/lang/String;
    const-string v3, "PHONE_NUMBERS_EQUAL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    const-string v3, "(address,"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-static/range {v32 .. v32}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    const/16 v3, 0x29

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 759
    add-int/lit8 v33, v33, 0x1

    .line 760
    const/16 v3, 0xf0

    move/from16 v0, v33

    if-ge v0, v3, :cond_3

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    .line 761
    :cond_3
    const/16 v33, 0x0

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestContentType:I

    const/16 v4, 0x66

    if-eq v3, v4, :cond_6

    .line 765
    const/4 v3, 0x0

    const-string v4, " ( "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    const-string v3, " ) AND read = 0 "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const-string v3, " AND thread_id != 0 "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string v3, " AND ( sms_type=1 OR mms_type=130 OR mms_type=132) "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    .end local v5           #projection:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    .line 786
    .restart local v5       #projection:[Ljava/lang/String;
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 796
    :goto_3
    if-eqz v21, :cond_2

    .line 798
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestContentType:I

    const/16 v4, 0x66

    if-eq v3, v4, :cond_a

    .line 799
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    add-int v20, v20, v3

    .line 835
    :cond_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 743
    .end local v8           #sort_order:Ljava/lang/String;
    .end local v19           #addr:Ljava/lang/StringBuilder;
    .end local v29           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v32           #number:Ljava/lang/String;
    .end local v33           #phoneCount:I
    :cond_5
    const-string v8, "date DESC"

    .restart local v8       #sort_order:Ljava/lang/String;
    goto/16 :goto_0

    .line 773
    .restart local v19       #addr:Ljava/lang/StringBuilder;
    .restart local v29       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v32       #number:Ljava/lang/String;
    .restart local v33       #phoneCount:I
    :cond_6
    const/4 v3, 0x0

    const-string v4, " ( "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    const-string v3, " ) AND thread_id != 0 "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v3, " AND ( sms_type=1 OR mms_type=130 OR mms_type=132) "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->isSense40Above()Z
    invoke-static {v3}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->access$000(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x8a

    if-eq v3, v4, :cond_7

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x96

    if-ne v3, v4, :cond_8

    .line 778
    :cond_7
    const/4 v3, 0x7

    new-array v5, v3, [Ljava/lang/String;

    .end local v5           #projection:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "read"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "date"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "date2"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "sub"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string v4, "address"

    aput-object v4, v5, v3

    const/4 v3, 0x6

    const-string v4, "sub_cs"

    aput-object v4, v5, v3

    .restart local v5       #projection:[Ljava/lang/String;
    goto :goto_2

    .line 780
    :cond_8
    const/4 v3, 0x6

    new-array v5, v3, [Ljava/lang/String;

    .end local v5           #projection:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "read"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "date"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "sub"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "address"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string v4, "sub_cs"

    aput-object v4, v5, v3

    .restart local v5       #projection:[Ljava/lang/String;
    goto/16 :goto_2

    .line 789
    :catch_0
    move-exception v22

    .line 790
    .local v22, e:Ljava/lang/Exception;
    const-string v3, "PersonIndicatorRequest"

    const-string v4, "Query Unread Message failed in PersonIndicatorRequest"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    if-eqz v21, :cond_9

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_9

    .line 792
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 802
    .end local v22           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_2
    const-string v3, "read"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 803
    .local v24, idxIsRead:I
    const-string v3, "address"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 804
    .local v23, idxAddress:I
    const-string v3, "sub"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 805
    .local v25, idxSmsBody:I
    const-string v3, "date"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 806
    .local v26, idxSmsDate:I
    const-string v3, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 807
    .local v27, idxSmsId:I
    const-string v3, "sub_cs"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 809
    .local v28, idxSmsSubCS:I
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 810
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_b

    .line 811
    add-int/lit8 v20, v20, 0x1

    .line 812
    :cond_b
    if-eqz v9, :cond_c

    .line 813
    invoke-virtual {v9}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->resetValue()V

    .line 814
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_d

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_d

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 815
    const-string v10, " "

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v13, "MESSAGE"

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v9 .. v18}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->setValue(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V

    .line 826
    :cond_c
    :goto_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 828
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_c

    .line 829
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 818
    :cond_d
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_e

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_e

    .line 819
    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v13, "MESSAGE"

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v9 .. v18}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->setValue(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 835
    .end local v23           #idxAddress:I
    .end local v24           #idxIsRead:I
    .end local v25           #idxSmsBody:I
    .end local v26           #idxSmsDate:I
    .end local v27           #idxSmsId:I
    .end local v28           #idxSmsSubCS:I
    :catchall_0
    move-exception v3

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v3

    .line 822
    .restart local v23       #idxAddress:I
    .restart local v24       #idxIsRead:I
    .restart local v25       #idxSmsBody:I
    .restart local v26       #idxSmsDate:I
    .restart local v27       #idxSmsId:I
    .restart local v28       #idxSmsSubCS:I
    :cond_e
    :try_start_3
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v13, "MESSAGE"

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v9 .. v18}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->setValue(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 839
    .end local v23           #idxAddress:I
    .end local v24           #idxIsRead:I
    .end local v25           #idxSmsBody:I
    .end local v26           #idxSmsDate:I
    .end local v27           #idxSmsId:I
    .end local v28           #idxSmsSubCS:I
    :cond_f
    const-string v3, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 843
    .end local v29           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v32           #number:Ljava/lang/String;
    .end local v33           #phoneCount:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_15

    .line 844
    const/4 v3, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 846
    .restart local v29       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v31, 0x0

    .line 847
    .local v31, mailCount:I
    :goto_5
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xf0

    move/from16 v0, v31

    if-ge v0, v3, :cond_11

    .line 848
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 849
    .local v30, mail:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const/16 v3, 0x2c

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 851
    add-int/lit8 v31, v31, 0x1

    .line 852
    goto :goto_5

    .line 853
    .end local v30           #mail:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_15

    .line 854
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_12

    .line 855
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 857
    :cond_12
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_13

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestContentType:I

    const/16 v4, 0x66

    if-eq v3, v4, :cond_16

    .line 860
    const/4 v3, 0x0

    const-string v4, " address in ("

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const-string v3, ") AND read = 0 AND msg_type = 0 AND ( mms_type=130 OR mms_type=132 )"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    .end local v5           #projection:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    .line 879
    .restart local v5       #projection:[Ljava/lang/String;
    :cond_13
    :goto_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v21

    .line 889
    :goto_7
    if-eqz v21, :cond_15

    .line 891
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestContentType:I

    const/16 v4, 0x66

    if-eq v3, v4, :cond_1a

    .line 892
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    add-int v20, v20, v3

    .line 928
    :cond_14
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 933
    .end local v29           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v31           #mailCount:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/IndicatorRequest;->mResult:Lcom/android/htccontacts/indicator/IndicatorResult;

    const-string v4, "MESSAGE"

    move/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    .line 934
    return-object p1

    .line 866
    .restart local v29       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v31       #mailCount:I
    :cond_16
    const/4 v3, 0x0

    const-string v4, " address in ("

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    const-string v3, ") AND msg_type = 0 AND ( mms_type=130 OR mms_type=132 )"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->isSense40Above()Z
    invoke-static {v3}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->access$000(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x8a

    if-eq v3, v4, :cond_17

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x96

    if-ne v3, v4, :cond_18

    .line 870
    :cond_17
    const/4 v3, 0x7

    new-array v5, v3, [Ljava/lang/String;

    .end local v5           #projection:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "read"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "date"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "date2"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "sub"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string v4, "address"

    aput-object v4, v5, v3

    const/4 v3, 0x6

    const-string v4, "sub_cs"

    aput-object v4, v5, v3

    .restart local v5       #projection:[Ljava/lang/String;
    goto :goto_6

    .line 872
    :cond_18
    const/4 v3, 0x6

    new-array v5, v3, [Ljava/lang/String;

    .end local v5           #projection:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "read"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "date"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "sub"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "address"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string v4, "sub_cs"

    aput-object v4, v5, v3

    .restart local v5       #projection:[Ljava/lang/String;
    goto/16 :goto_6

    .line 882
    :catch_1
    move-exception v22

    .line 883
    .restart local v22       #e:Ljava/lang/Exception;
    const-string v3, "PersonIndicatorRequest"

    const-string v4, "Query Unread Message part2 fail in PersonIndicatorRequest"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    if-eqz v21, :cond_19

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_19

    .line 885
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 886
    :cond_19
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 895
    .end local v22           #e:Ljava/lang/Exception;
    :cond_1a
    :try_start_6
    const-string v3, "read"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 896
    .restart local v24       #idxIsRead:I
    const-string v3, "address"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 897
    .restart local v23       #idxAddress:I
    const-string v3, "sub"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 898
    .restart local v25       #idxSmsBody:I
    const-string v3, "date"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 899
    .restart local v26       #idxSmsDate:I
    const-string v3, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 900
    .restart local v27       #idxSmsId:I
    const-string v3, "sub_cs"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 902
    .restart local v28       #idxSmsSubCS:I
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 903
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1b

    .line 904
    add-int/lit8 v20, v20, 0x1

    .line 905
    :cond_1b
    if-eqz v9, :cond_1c

    .line 906
    invoke-virtual {v9}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->resetValue()V

    .line 907
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1d

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1d

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1d

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 908
    const-string v10, " "

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v13, "MESSAGE"

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v9 .. v18}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->setValue(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V

    .line 919
    :cond_1c
    :goto_8
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 921
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1c

    .line 922
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 911
    :cond_1d
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1e

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_1e

    .line 912
    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v13, "MESSAGE"

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v9 .. v18}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->setValue(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    .line 928
    .end local v23           #idxAddress:I
    .end local v24           #idxIsRead:I
    .end local v25           #idxSmsBody:I
    .end local v26           #idxSmsDate:I
    .end local v27           #idxSmsId:I
    .end local v28           #idxSmsSubCS:I
    :catchall_1
    move-exception v3

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v3

    .line 915
    .restart local v23       #idxAddress:I
    .restart local v24       #idxIsRead:I
    .restart local v25       #idxSmsBody:I
    .restart local v26       #idxSmsDate:I
    .restart local v27       #idxSmsId:I
    .restart local v28       #idxSmsSubCS:I
    :cond_1e
    :try_start_7
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v13, "MESSAGE"

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v9 .. v18}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->setValue(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_8
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method
