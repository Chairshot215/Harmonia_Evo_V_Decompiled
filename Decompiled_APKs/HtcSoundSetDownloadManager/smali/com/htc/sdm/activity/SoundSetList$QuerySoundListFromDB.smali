.class Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuerySoundListFromDB"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetList;


# direct methods
.method public constructor <init>(Lcom/htc/sdm/activity/SoundSetList;)V
    .locals 0
    .parameter

    .prologue
    .line 2475
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2476
    return-void
.end method

.method private QueryList()V
    .locals 37

    .prologue
    .line 2502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    .line 2504
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I
    invoke-static {v3}, Lcom/htc/sdm/activity/SoundSetList;->access$2800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 2506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    .line 2539
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v2, v2, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 2541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$2800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$2900(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 2543
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v3}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 2548
    :try_start_0
    new-instance v35, Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2564
    .local v35, rm:Landroid/media/RingtoneManager;
    invoke-virtual/range {v35 .. v35}, Landroid/media/RingtoneManager;->getIncludeDrm()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2566
    const/4 v2, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 2568
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v2

    invoke-static {v2}, Lcom/htc/sdm/util/SDMUtil;->RefID2RMType(I)I

    move-result v36

    .line 2569
    .local v36, rmType:I
    if-lez v36, :cond_5

    .line 2571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v3}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v3

    move/from16 v0, v36

    invoke-static {v2, v0, v3}, Lcom/htc/sdm/util/SDMDBUtil;->CheckDefaultRingtone(Landroid/content/Context;II)V

    .line 2572
    invoke-virtual/range {v35 .. v36}, Landroid/media/RingtoneManager;->setType(I)V

    .line 2573
    invoke-virtual/range {v35 .. v35}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v33

    .line 2576
    .local v33, lCursor:Landroid/database/Cursor;
    if-eqz v33, :cond_4

    :try_start_1
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2580
    :cond_2
    const/4 v11, 0x0

    .line 2581
    .local v11, fileUri:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/sdm/SkuConst;->TMO_THEME_FRAMEWORK:Z

    if-eqz v2, :cond_d

    .line 2583
    const/4 v2, 0x2

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2589
    :goto_1
    new-instance v1, Lcom/htc/sdm/SoundSetParcelable;

    const-wide/16 v2, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "0"

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const-string v13, "4"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v12}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v12

    invoke-static {v12}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, v33

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v27, ""

    const-string v28, ""

    const-string v29, ""

    const/16 v30, 0x2

    const/16 v31, 0x0

    move-object v12, v11

    invoke-direct/range {v1 .. v31}, Lcom/htc/sdm/SoundSetParcelable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2616
    .local v1, parcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v1, :cond_3

    .line 2618
    const/16 v34, 0x0

    .line 2621
    .local v34, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/sdm/SoundSetParcelable;->getSDMFileUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v34

    .line 2628
    :goto_2
    if-eqz v34, :cond_3

    .line 2630
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v2, v2, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2633
    .end local v34           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 2638
    .end local v1           #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    .end local v11           #fileUri:Ljava/lang/String;
    :cond_4
    if-eqz v33, :cond_5

    .line 2640
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 2648
    .end local v33           #lCursor:Landroid/database/Cursor;
    .end local v35           #rm:Landroid/media/RingtoneManager;
    .end local v36           #rmType:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v2, v2, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    new-instance v3, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB$1;-><init>(Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2671
    :cond_6
    :goto_3
    return-void

    .line 2508
    :cond_7
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I
    invoke-static {v3}, Lcom/htc/sdm/activity/SoundSetList;->access$2800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_bStartAsDeleteMode:Z
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$3400(Lcom/htc/sdm/activity/SoundSetList;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nDeleteModeCaller:I
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$3500(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 2512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Lcom/htc/sdm/util/SDMDBUtil;->loadDelModeListsFromDB(Landroid/content/Context;III)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 2516
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Lcom/htc/sdm/util/SDMDBUtil;->loadDelModeListsFromDB(Landroid/content/Context;III)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 2522
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I
    invoke-static {v3}, Lcom/htc/sdm/activity/SoundSetList;->access$2800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 2524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v4

    const/4 v5, 0x7

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/htc/sdm/util/SDMDBUtil;->loadListsFromDB(Landroid/content/Context;IIIZ)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 2526
    :cond_a
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I
    invoke-static {v3}, Lcom/htc/sdm/activity/SoundSetList;->access$2800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_bStartAsDeleteMode:Z
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$3400(Lcom/htc/sdm/activity/SoundSetList;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nDeleteModeCaller:I
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$3500(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 2530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Lcom/htc/sdm/util/SDMDBUtil;->loadDelModeListsFromDB(Landroid/content/Context;III)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 2534
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Lcom/htc/sdm/util/SDMDBUtil;->loadDelModeListsFromDB(Landroid/content/Context;III)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 2550
    :catch_0
    move-exception v32

    .line 2552
    .local v32, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 2554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2556
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v2, v2, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$2900(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v3, v3, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->UpdatetList(Ljava/util/ArrayList;)V

    .line 2558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$1200(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$1200(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto/16 :goto_3

    .line 2587
    .end local v32           #e:Ljava/lang/Exception;
    .restart local v11       #fileUri:Ljava/lang/String;
    .restart local v33       #lCursor:Landroid/database/Cursor;
    .restart local v35       #rm:Landroid/media/RingtoneManager;
    .restart local v36       #rmType:I
    :cond_d
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 2623
    .restart local v1       #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    .restart local v34       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v32

    .line 2625
    .local v32, e:Ljava/io/FileNotFoundException;
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2626
    const/16 v34, 0x0

    goto/16 :goto_2

    .line 2638
    .end local v1           #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    .end local v11           #fileUri:Ljava/lang/String;
    .end local v32           #e:Ljava/io/FileNotFoundException;
    .end local v34           #pfd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v2

    if-eqz v33, :cond_e

    .line 2640
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2

    .line 2657
    .end local v33           #lCursor:Landroid/database/Cursor;
    .end local v35           #rm:Landroid/media/RingtoneManager;
    .end local v36           #rmType:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$2800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$2500(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v2, v2, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    new-instance v3, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB$2;-><init>(Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2481
    :try_start_0
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->uiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$3200(Lcom/htc/sdm/activity/SoundSetList;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2484
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2485
    .local v1, msg:Landroid/os/Message;
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->QueryList()V

    .line 2486
    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2487
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->uiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$3200(Lcom/htc/sdm/activity/SoundSetList;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2497
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->m_QuerySoundListThread:Ljava/lang/Thread;
    invoke-static {v2, v4}, Lcom/htc/sdm/activity/SoundSetList;->access$3302(Lcom/htc/sdm/activity/SoundSetList;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2499
    :goto_0
    return-void

    .line 2490
    :catch_0
    move-exception v0

    .line 2493
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2497
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->m_QuerySoundListThread:Ljava/lang/Thread;
    invoke-static {v2, v4}, Lcom/htc/sdm/activity/SoundSetList;->access$3302(Lcom/htc/sdm/activity/SoundSetList;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->m_QuerySoundListThread:Ljava/lang/Thread;
    invoke-static {v3, v4}, Lcom/htc/sdm/activity/SoundSetList;->access$3302(Lcom/htc/sdm/activity/SoundSetList;Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v2
.end method
