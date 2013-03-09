.class Lcom/android/mms/ui/ComposeMessageActivity$96;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 16541
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 16544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mPhoneCountSyncObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16200(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 16546
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mPhoneCount:I
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16302(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 16547
    monitor-exit v2

    .line 16656
    :cond_0
    :goto_0
    return-void

    .line 16547
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 16553
    :cond_1
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data2"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v3, v1

    .line 16559
    .local v3, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 16563
    .local v17, phones:Landroid/database/Cursor;
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16564
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mPhoneCountSyncObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16200(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 16565
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mPhoneCount:I
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16302(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 16566
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16567
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 16566
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 16572
    :cond_3
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 16573
    .local v15, phoneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;>;"
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 16574
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 16575
    .local v16, phonecount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    .line 16576
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 16577
    .local v19, type:I
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 16580
    .local v13, number:Ljava/lang/String;
    if-nez v19, :cond_5

    .line 16581
    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 16584
    .local v12, label:Ljava/lang/String;
    :goto_2
    if-eqz v12, :cond_4

    if-eqz v13, :cond_4

    .line 16585
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v2, v12, v13}, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16586
    :cond_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 16575
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 16583
    .end local v12           #label:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static/range {v19 .. v19}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #label:Ljava/lang/String;
    goto :goto_2

    .line 16588
    .end local v12           #label:Ljava/lang/String;
    .end local v13           #number:Ljava/lang/String;
    .end local v19           #type:I
    :cond_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 16590
    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v16

    .line 16593
    if-lez v16, :cond_b

    .line 16596
    const-string v8, ""

    .line 16597
    .local v8, defaultvalue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v18

    .line 16598
    .local v18, t:[Ljava/lang/String;
    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    array-length v1, v0

    if-lez v1, :cond_7

    .line 16599
    const/4 v1, 0x0

    aget-object v8, v18, v1

    .line 16604
    :cond_7
    const/4 v7, 0x1

    .line 16605
    .local v7, bdefaultisphone:Z
    invoke-static {v8}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 16606
    const/4 v1, 0x0

    sput v1, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_defaultsel:I

    .line 16607
    const/4 v7, 0x0

    .line 16611
    :cond_8
    sget-object v2, Lcom/android/mms/ui/ComposeMessageActivity;->NumberLock:Ljava/lang/Object;

    monitor-enter v2

    .line 16612
    :try_start_3
    move/from16 v0, v16

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->menuitemarray:[Ljava/lang/String;

    .line 16613
    move/from16 v0, v16

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    .line 16614
    move/from16 v0, v16

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->displayname:[Ljava/lang/String;

    .line 16615
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 16617
    const/4 v11, 0x0

    .local v11, k:I
    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_9

    .line 16618
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v11

    .line 16619
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->menuitemarray:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v11

    .line 16620
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->displayname:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v11

    .line 16617
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 16615
    .end local v11           #k:I
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 16624
    .restart local v11       #k:I
    :cond_9
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 16625
    .local v10, it:Ljava/util/Iterator;
    const/4 v9, 0x0

    .line 16626
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 16627
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;

    .line 16628
    .local v14, p:Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;
    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->getTypeLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 16629
    .restart local v12       #label:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 16631
    .restart local v13       #number:Ljava/lang/String;
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    aput-object v13, v1, v9

    .line 16632
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->menuitemarray:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 16633
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->displayname:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 16637
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-static {v8, v1}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 16640
    sput v9, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_defaultsel:I

    .line 16643
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 16645
    goto :goto_4

    .line 16647
    .end local v7           #bdefaultisphone:Z
    .end local v8           #defaultvalue:Ljava/lang/String;
    .end local v10           #it:Ljava/util/Iterator;
    .end local v11           #k:I
    .end local v12           #label:Ljava/lang/String;
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #p:Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;
    .end local v18           #t:[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mPhoneCountSyncObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16200(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 16648
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move/from16 v0, v16

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mPhoneCount:I
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16302(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 16649
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 16651
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v1

    const-string v2, "2.1"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 16652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 16649
    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method
