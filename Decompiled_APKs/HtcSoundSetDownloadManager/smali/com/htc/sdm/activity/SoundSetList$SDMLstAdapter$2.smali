.class Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v10, -0x1

    .line 1471
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1600(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)Landroid/content/Context;

    move-result-object v5

    const-wide/32 v6, 0x80000

    invoke-static {v5, v6, v7}, Lcom/htc/sdm/util/SDMDBUtil;->isDataStorageFull(Landroid/content/Context;J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1473
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/sdm/util/SDMUtil;->CreateDataStorageFullDialog(Landroid/content/Context;)V

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1100(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v6, v6, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v6

    sub-int v0, v5, v6

    .line 1478
    .local v0, itemIdx:I
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isCurSelDefault:Z
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1300(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)Z

    move-result v5

    if-ne v8, v5, :cond_3

    .line 1480
    const/4 v3, 0x0

    .line 1481
    .local v3, soundUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1482
    .local v4, tIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1500
    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1501
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5, v10, v4}, Lcom/htc/sdm/activity/SoundSetList;->setResult(ILandroid/content/Intent;)V

    .line 1502
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_bSaveOrNot:Z
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$1700(Lcom/htc/sdm/activity/SoundSetList;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v5

    if-eq v5, v12, :cond_2

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    .line 1508
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v8, v8, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v8}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v8

    invoke-static {v8}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8, v3}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    .line 1510
    :cond_2
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5}, Lcom/htc/sdm/activity/SoundSetList;->finish()V

    goto :goto_0

    .line 1485
    :pswitch_0
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 1486
    goto :goto_1

    .line 1488
    :pswitch_1
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 1489
    goto :goto_1

    .line 1497
    :pswitch_2
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_1

    .line 1512
    .end local v3           #soundUri:Landroid/net/Uri;
    .end local v4           #tIntent:Landroid/content/Intent;
    :cond_3
    if-ltz v0, :cond_7

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1500(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 1514
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1500(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sdm/SoundSetParcelable;

    .line 1515
    .local v1, parcelable:Lcom/htc/sdm/SoundSetParcelable;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1516
    .restart local v4       #tIntent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 1518
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v2

    .line 1519
    .local v2, refTypeId:I
    if-ne v8, v2, :cond_4

    .line 1521
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    const/16 v6, 0x3e7

    #calls: Lcom/htc/sdm/activity/SoundSetList;->showDialogSafe(I)V
    invoke-static {v5, v6}, Lcom/htc/sdm/activity/SoundSetList;->access$1800(Lcom/htc/sdm/activity/SoundSetList;I)V

    .line 1522
    new-instance v5, Lcom/htc/sdm/activity/SoundSetList$ApplySoundSetTask;

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v6, v6, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/htc/sdm/activity/SoundSetList$ApplySoundSetTask;-><init>(Lcom/htc/sdm/activity/SoundSetList;Lcom/htc/sdm/activity/SoundSetList$1;)V

    new-array v6, v11, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v1}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Lcom/htc/sdm/activity/SoundSetList$ApplySoundSetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1524
    :cond_4
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActivityMode:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$2000(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v5

    if-ne v11, v5, :cond_6

    .line 1526
    const/4 v3, 0x0

    .line 1527
    .restart local v3       #soundUri:Landroid/net/Uri;
    invoke-virtual {v1}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v3

    .line 1528
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1529
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5, v10, v4}, Lcom/htc/sdm/activity/SoundSetList;->setResult(ILandroid/content/Intent;)V

    .line 1530
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_bSaveOrNot:Z
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$1700(Lcom/htc/sdm/activity/SoundSetList;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eq v2, v12, :cond_5

    const/16 v5, 0x9

    if-eq v2, v5, :cond_5

    .line 1536
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/sdm/SoundSetParcelable;->getSrcType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v2}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8, v3}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    .line 1538
    :cond_5
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5}, Lcom/htc/sdm/activity/SoundSetList;->finish()V

    goto/16 :goto_0

    .line 1542
    .end local v3           #soundUri:Landroid/net/Uri;
    :cond_6
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/sdm/SoundSetParcelable;->getSrcType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v2}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    .line 1543
    invoke-virtual {v1}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1544
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5, v10, v4}, Lcom/htc/sdm/activity/SoundSetList;->setResult(ILandroid/content/Intent;)V

    .line 1545
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5}, Lcom/htc/sdm/activity/SoundSetList;->finish()V

    goto/16 :goto_0

    .line 1556
    .end local v1           #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    .end local v2           #refTypeId:I
    .end local v4           #tIntent:Landroid/content/Intent;
    :cond_7
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5, v9}, Lcom/htc/sdm/activity/SoundSetList;->setResult(I)V

    .line 1557
    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5}, Lcom/htc/sdm/activity/SoundSetList;->finish()V

    goto/16 :goto_0

    .line 1482
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
