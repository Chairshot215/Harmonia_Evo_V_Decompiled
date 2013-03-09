.class Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;
.super Landroid/os/AsyncTask;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "showRecipientDialogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/ComposeActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;

.field view:Lcom/htc/android/mail/ReceiverList;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity;)V
    .locals 1
    .parameter
    .parameter "target"

    .prologue
    const/4 v0, 0x0

    .line 1713
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    .line 1714
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1710
    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    .line 1711
    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    .line 1715
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    .line 1716
    iget-object v0, p2, Lcom/htc/android/mail/ComposeActivity;->currRecipient:Lcom/htc/android/mail/ReceiverList;

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    .line 1717
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1709
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 22
    .parameter "params"

    .prologue
    .line 1721
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1779
    :goto_0
    return-object v1

    .line 1722
    :cond_0
    const/16 v17, -0x1

    .line 1723
    .local v17, contactId:I
    const/16 v19, -0x1

    .line 1724
    .local v19, methodId:I
    const/16 v21, -0x1

    .line 1725
    .local v21, typeId:I
    const-string v4, "data1 LIKE ?"

    .line 1726
    .local v4, where:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1728
    .local v15, cCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/android/mail/ComposeActivity;->MAIL_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    iget-object v7, v7, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1730
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1731
    const-string v1, "_id"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1732
    .local v13, _mId:Ljava/lang/String;
    const-string v1, "contact_id"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1733
    .local v11, _Id:Ljava/lang/String;
    const-string v1, "data2"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 1735
    .local v12, _TypeId:Ljava/lang/String;
    :try_start_1
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1736
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1737
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v12, v1, :cond_1

    if-nez v12, :cond_7

    .line 1738
    :cond_1
    const/16 v21, -0x1

    .line 1749
    .end local v11           #_Id:Ljava/lang/String;
    .end local v12           #_TypeId:Ljava/lang/String;
    .end local v13           #_mId:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v15, :cond_3

    .line 1750
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1752
    :cond_3
    if-ltz v17, :cond_9

    if-ltz v19, :cond_9

    .line 1753
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    move/from16 v0, v17

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 1754
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    move/from16 v0, v19

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/htc/android/mail/ReceiverList;->methodId:J

    .line 1755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    move/from16 v0, v21

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/htc/android/mail/ReceiverList;->typeId:J

    .line 1763
    :goto_3
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->getReadOnlyContactsType()Ljava/util/ArrayList;

    move-result-object v20

    .line 1764
    .local v20, readOnlyTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_type"

    aput-object v2, v7, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1767
    .local v16, cc:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/mail/ReceiverList;->canAddToGroup:Z

    .line 1768
    if-eqz v16, :cond_6

    .line 1769
    :cond_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1770
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1771
    .local v14, accountType:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1773
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/mail/ReceiverList;->canAddToGroup:Z

    .line 1777
    .end local v14           #accountType:Ljava/lang/String;
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1779
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1740
    .end local v16           #cc:Landroid/database/Cursor;
    .end local v20           #readOnlyTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #_Id:Ljava/lang/String;
    .restart local v12       #_TypeId:Ljava/lang/String;
    .restart local v13       #_mId:Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v21

    goto/16 :goto_1

    .line 1742
    :catch_0
    move-exception v18

    .line 1743
    .local v18, e:Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v1, "ComposeActivity"

    const-string v2, "NumberFormatException occurs in getContactId()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 1746
    .end local v11           #_Id:Ljava/lang/String;
    .end local v12           #_TypeId:Ljava/lang/String;
    .end local v13           #_mId:Ljava/lang/String;
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v18

    .line 1747
    .local v18, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "ComposeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryContactId() Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1749
    if-eqz v15, :cond_3

    goto/16 :goto_2

    .end local v18           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_8

    .line 1750
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1749
    :cond_8
    throw v1

    .line 1757
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 1758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/htc/android/mail/ReceiverList;->methodId:J

    .line 1759
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/htc/android/mail/ReceiverList;->typeId:J

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1709
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1783
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ComposeActivity;

    .line 1784
    .local v0, target:Lcom/htc/android/mail/ComposeActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1785
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    #calls: Lcom/htc/android/mail/ComposeActivity;->showRecipientMenu(Lcom/htc/android/mail/ReceiverList;)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$2600(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ReceiverList;)V

    .line 1787
    :cond_0
    return-void
.end method
