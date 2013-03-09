.class Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;
.super Landroid/os/AsyncTask;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "showRecipientDialogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field addr:Ljava/lang/String;

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;

.field view:Lcom/htc/android/mail/ReceiverList;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReceiverList;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 1233
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    .line 1234
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1229
    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->name:Ljava/lang/String;

    .line 1230
    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->addr:Ljava/lang/String;

    .line 1231
    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    .line 1235
    iput-object p2, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    .line 1236
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1239
    const-wide/16 v0, -0x1

    .line 1240
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    if-nez v2, :cond_1

    .line 1241
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ReadScreen"

    const-string v3, "curRecp null>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1248
    :goto_0
    return-object v2

    .line 1244
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiveLabelEvent>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    iget-boolean v4, v4, Lcom/htc/android/mail/ReceiverList;->haveDisplayName:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mShowRecipientDialog:Z
    invoke-static {v4}, Lcom/htc/android/mail/ReadScreen;->access$1100(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :cond_2
    aget-object v2, p1, v5

    iput-object v2, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->name:Ljava/lang/String;

    .line 1246
    aget-object v2, p1, v6

    iput-object v2, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->addr:Ljava/lang/String;

    .line 1247
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    iget-object v3, v3, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ReadScreen;->getContactId(Ljava/lang/String;)J

    move-result-wide v0

    .line 1248
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1228
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x1

    .line 1252
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v7}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v4

    .line 1253
    .local v4, ifFinish:Z
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "ReadScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showRecipientDialogTask>>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mIsDestroyed:Z
    invoke-static {v9}, Lcom/htc/android/mail/ReadScreen;->access$1500(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :cond_0
    if-nez v4, :cond_1

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mIsDestroyed:Z
    invoke-static {v7}, Lcom/htc/android/mail/ReadScreen;->access$1500(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1255
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ReadScreen"

    const-string v8, "showRecipientDialogTask return in Finish>"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    :cond_2
    :goto_0
    return-void

    .line 1261
    :cond_3
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 1262
    const-string v7, "ReadScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " view.contactId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    iget-wide v9, v9, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    iget-wide v7, v7, Lcom/htc/android/mail/ReceiverList;->contactId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4

    .line 1269
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    iget-wide v9, v9, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1270
    .local v5, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v7, v5}, Lcom/htc/android/mail/ReadScreen;->startActivity(Landroid/content/Intent;)V

    .line 1274
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #setter for: Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z
    invoke-static {v7, v11}, Lcom/htc/android/mail/ReadScreen;->access$1602(Lcom/htc/android/mail/ReadScreen;Z)Z

    goto :goto_0

    .line 1279
    .end local v5           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v7, 0x4

    new-array v0, v7, [Ljava/lang/String;

    .line 1280
    .local v0, addrLists:[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    const v9, 0x7f0b002f

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v0, v7

    .line 1281
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    const v8, 0x7f0b010a

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v0, v11

    .line 1282
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    const v9, 0x7f0b010b

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v0, v7

    .line 1283
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    const v9, 0x7f0b010c

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v0, v7

    .line 1285
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #setter for: Lcom/htc/android/mail/ReadScreen;->mShowRecipientDialog:Z
    invoke-static {v7, v11}, Lcom/htc/android/mail/ReadScreen;->access$1102(Lcom/htc/android/mail/ReadScreen;Z)Z

    .line 1286
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct {v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1288
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const/16 v6, 0x17

    .line 1289
    .local v6, maxChars:I
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->view:Lcom/htc/android/mail/ReceiverList;

    iget-boolean v7, v7, Lcom/htc/android/mail/ReceiverList;->haveDisplayName:Z

    if-eqz v7, :cond_6

    .line 1290
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->name:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 1291
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->name:Ljava/lang/String;

    .line 1292
    .local v3, dispName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->addr:Ljava/lang/String;

    .line 1297
    .local v2, dispAddr:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1306
    .end local v2           #dispAddr:Ljava/lang/String;
    .end local v3           #dispName:Ljava/lang/String;
    :goto_1
    new-instance v7, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;

    invoke-direct {v7, p0}, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;-><init>(Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;)V

    invoke-virtual {v1, v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1348
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 1299
    :cond_5
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->addr:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 1301
    :cond_6
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->addr:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1228
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
