.class Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;
.super Landroid/content/BroadcastReceiver;
.source "ContactWidgetMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->initPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;


# direct methods
.method constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.android.mail.intent.change"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 579
    const-string v17, "syncFinish"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "anddroid.intent.action.GROUP_MODIFICATION"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryGroupList:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    goto :goto_0

    .line 583
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.EAS_ACCOUNT_REMOVED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.intent.action.ACTION_ACCOUNT_DELETION_CONTACT_UPDATE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.intent.action.ACTION_FREQUENCY_GROUP_FREQUENCY_UPDATE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 593
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.intent.action.ACTION_FREQUENCY_GROUP_FREQUENCY_UPDATE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 594
    const-string v17, "Frequent Contacts"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 600
    :cond_4
    const-string v17, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 601
    .local v15, strGroupName:Ljava/lang/String;
    const-string v17, "old_grouptitle"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 602
    .local v16, strOldGroupname:Ljava/lang/String;
    const-string v17, "group_has_cleared"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 604
    .local v5, bGroupCleared:Z
    const-string v17, "_id"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 606
    .local v12, lPersonId:J
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-gez v17, :cond_5

    .line 607
    const-string v17, "contact_id"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 610
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const-string v18, "EAS_CONTACT_SVR_DEL_LIST"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeleteList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$102(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const-string v18, "EAS_CONTACT_SVR_UPD_LIST"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASUpdateList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$202(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 612
    const-string v17, "EAS_CONTACT_SVR_ADD_LIST"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 614
    .local v4, bEASAdd:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeleteList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeleteList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 616
    .local v14, size:I
    const-wide/16 v9, -0x1

    .line 617
    .local v9, id:J
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v14, :cond_7

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeleteList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 617
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 622
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 624
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeleteList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 627
    .end local v8           #i:I
    .end local v9           #id:J
    .end local v14           #size:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASUpdateList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASUpdateList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 629
    .restart local v14       #size:I
    const-wide/16 v9, -0x1

    .line 630
    .restart local v9       #id:J
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    if-ge v8, v14, :cond_a

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASUpdateList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 630
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 635
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 637
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASUpdateList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 640
    .end local v8           #i:I
    .end local v9           #id:J
    .end local v14           #size:I
    :cond_b
    const-string v17, "delete"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_c

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$502(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 646
    :cond_c
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-lez v17, :cond_13

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    long-to-int v0, v12

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_d
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.EAS_ACCOUNT_REMOVED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.intent.action.ACTION_ACCOUNT_DELETION_CONTACT_UPDATE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.intent.action.ACTION_FREQUENCY_GROUP_FREQUENCY_UPDATE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    const-string v17, "com.android.contacts"

    const-string v18, "authority"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 692
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$902(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 752
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_10

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1602(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 756
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-eqz v17, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-eqz v17, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-eqz v17, :cond_2a

    .line 758
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v17

    const/16 v18, 0x1a14

    invoke-interface/range {v17 .. v18}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v17

    const/16 v18, 0x1a14

    invoke-interface/range {v17 .. v18}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 760
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v17

    const/16 v18, 0x1a14

    invoke-interface/range {v17 .. v18}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 649
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const-string v18, "contact_id_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$502(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto/16 :goto_5

    .line 650
    :cond_14
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-lez v17, :cond_d

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isContactExist(Ljava/util/ArrayList;Ljava/lang/Long;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->idExistinChangeContactList(J)I
    invoke-static {v0, v12, v13}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;J)I

    move-result v11

    .line 655
    .local v11, index_:I
    if-gez v11, :cond_16

    .line 656
    new-instance v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    .line 657
    .local v7, cc:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;
    iput-wide v12, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->pid:J

    .line 658
    const-string v17, "group_row_id_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->group:Ljava/util/ArrayList;

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_15

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_15
    iget-object v0, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->group:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    goto/16 :goto_5

    .line 664
    .end local v7           #cc:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_d

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;

    .line 667
    .restart local v7       #cc:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;
    const-string v17, "group_row_id_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_17

    .line 668
    const-string v17, "group_row_id_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->group:Ljava/util/ArrayList;

    .line 671
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget-object v0, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->group:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    goto/16 :goto_5

    .line 670
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->group:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->group:Ljava/util/ArrayList;

    goto :goto_7

    .line 678
    .end local v7           #cc:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;
    .end local v11           #index_:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$902(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    goto/16 :goto_5

    .line 699
    :cond_19
    const/4 v6, 0x0

    .line 700
    .local v6, bIsNeededRefresh:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const-string v18, "group_has_deleted"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsGroupDeleted:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1102(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 703
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_24

    .line 706
    if-nez v5, :cond_1a

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    .line 709
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsGroupDeleted:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-nez v17, :cond_1b

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->StoreGroupnameToDB()V

    .line 711
    :cond_1b
    const/4 v6, 0x1

    .line 721
    :cond_1c
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_27

    .line 723
    :cond_1e
    const/4 v6, 0x1

    .line 733
    :cond_1f
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_21

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_22

    .line 736
    :cond_21
    const/4 v6, 0x1

    .line 739
    :cond_22
    if-eqz v6, :cond_f

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$902(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mInitialize:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1502(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 747
    :cond_23
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-gez v17, :cond_f

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    goto/16 :goto_6

    .line 714
    :cond_24
    if-eqz v15, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_26

    :cond_25
    const-wide/16 v17, -0x1

    cmp-long v17, v12, v17

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isContactExist(Ljava/util/ArrayList;Ljava/lang/Long;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 718
    :cond_26
    const/4 v6, 0x1

    goto/16 :goto_8

    .line 724
    :cond_27
    const-string v17, "link"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_28

    .line 725
    const/4 v6, 0x1

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1202(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    goto/16 :goto_9

    .line 727
    :cond_28
    const-string v17, "facebook_update_photo_done"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_29

    const-string v17, "flickr_update_photo_done"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_29

    if-eqz v4, :cond_1f

    .line 729
    :cond_29
    const/4 v6, 0x1

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1302(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    goto/16 :goto_9

    .line 761
    .end local v6           #bIsNeededRefresh:Z
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScreenStateOff:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-nez v17, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-nez v17, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 766
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 767
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z
    invoke-static {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    move-result-object v17

    if-nez v17, :cond_2d

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v19, v0

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Landroid/content/Context;

    move-result-object v19

    const-string v20, "QueryUnderScreenOff"

    invoke-static/range {v19 .. v20}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    invoke-static {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2102(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    .line 774
    :goto_a
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z
    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2302(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v17

    const/16 v18, 0x1a14

    invoke-interface/range {v17 .. v18}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v17

    if-eqz v17, :cond_2c

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v17

    const/16 v18, 0x1a14

    invoke-interface/range {v17 .. v18}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 781
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v17

    const/16 v18, 0x1a14

    invoke-interface/range {v17 .. v18}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 772
    :cond_2d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->acquirePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    goto :goto_a

    .line 774
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17
.end method
