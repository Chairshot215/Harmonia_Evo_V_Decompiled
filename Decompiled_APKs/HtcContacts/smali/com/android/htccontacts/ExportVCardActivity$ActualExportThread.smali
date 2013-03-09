.class Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;
.super Ljava/lang/Thread;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActualExportThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/htccontacts/ExportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "fileName"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mCanceled:Z

    .line 174
    #setter for: Lcom/android/htccontacts/ExportVCardActivity;->mExportingFileName:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/htccontacts/ExportVCardActivity;->access$402(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/ExportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 176
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "ExportVCardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 178
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mCanceled:Z

    .line 303
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 299
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->cancel()V

    .line 307
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ExportVCardActivity;->finish()V

    .line 310
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #calls: Lcom/android/htccontacts/ExportVCardActivity;->isSearchDialogActived()Landroid/app/SearchManager;
    invoke-static {v1}, Lcom/android/htccontacts/ExportVCardActivity;->access$900(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/app/SearchManager;

    move-result-object v0

    .line 315
    .local v0, searchManager:Landroid/app/SearchManager;
    if-eqz v0, :cond_1

    .line 316
    const-string v1, "ExportVCardActivity"

    const-string v2, "ActualExportThread.onDismiss, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;
    invoke-static {v1}, Lcom/android/htccontacts/ExportVCardActivity;->access$1000(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 322
    .end local v0           #searchManager:Landroid/app/SearchManager;
    :cond_0
    :goto_0
    return-void

    .line 319
    .restart local v0       #searchManager:Landroid/app/SearchManager;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/ExportVCardActivity;->finish()V

    goto :goto_0
.end method

.method public run()V
    .locals 21

    .prologue
    .line 182
    const/4 v9, 0x1

    .line 183
    .local v9, shouldCallFinish:Z
    const/4 v8, 0x0

    .line 184
    .local v8, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$500(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/accounts/Account;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 185
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "account_type = \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v15}, Lcom/android/htccontacts/ExportVCardActivity;->access$500(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/accounts/Account;

    move-result-object v15

    iget-object v15, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "account_name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v15}, Lcom/android/htccontacts/ExportVCardActivity;->access$500(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/accounts/Account;

    move-result-object v15

    iget-object v15, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' AND deleted = \'0\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 189
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, composer:Lcom/android/vcard/VCardComposer;
    const/4 v12, 0x0

    .line 193
    .local v12, writer:Ljava/io/Writer;
    const/4 v5, 0x0

    .line 195
    .local v5, outputStream:Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mExportingFileName:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$400(Lcom/android/htccontacts/ExportVCardActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .local v6, outputStream:Ljava/io/OutputStream;
    :try_start_1
    new-instance v13, Ljava/io/BufferedWriter;

    new-instance v14, Ljava/io/OutputStreamWriter;

    invoke-direct {v14, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 207
    .end local v12           #writer:Ljava/io/Writer;
    .local v13, writer:Ljava/io/Writer;
    :try_start_2
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 208
    new-instance v2, Lcom/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    const v15, 0x18000008

    invoke-direct {v2, v14, v15}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;I)V

    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .local v2, composer:Lcom/android/vcard/VCardComposer;
    move-object v1, v2

    .line 213
    .end local v2           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v1       #composer:Lcom/android/vcard/VCardComposer;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$500(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/accounts/Account;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 214
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/vcard/VCardComposer;->setUseRawContact(Z)V

    .line 217
    :cond_0
    const/4 v14, 0x0

    invoke-virtual {v1, v8, v14}, Lcom/android/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 218
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, errorReason:Ljava/lang/String;
    const-string v14, "ExportVCardActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initialization of vCard composer failed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v14, "No error"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$600(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0a0298

    invoke-virtual/range {v17 .. v18}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;-><init>(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    const/4 v9, 0x0

    .line 276
    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 279
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v14

    if-nez v14, :cond_2

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #calls: Lcom/android/htccontacts/ExportVCardActivity;->isSearchDialogActived()Landroid/app/SearchManager;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$900(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/app/SearchManager;

    move-result-object v7

    .line 284
    .local v7, searchManager:Landroid/app/SearchManager;
    if-eqz v7, :cond_1c

    .line 285
    const-string v14, "ExportVCardActivity"

    const-string v15, "ActualExportThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$1000(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .end local v7           #searchManager:Landroid/app/SearchManager;
    :cond_2
    :goto_2
    move-object v5, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    move-object v12, v13

    .line 292
    .end local v4           #errorReason:Ljava/lang/String;
    .end local v13           #writer:Ljava/io/Writer;
    .restart local v12       #writer:Ljava/io/Writer;
    :cond_3
    :goto_3
    return-void

    .line 187
    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local v12           #writer:Ljava/io/Writer;
    :cond_4
    const-string v8, "ext_account_Type <> \'com.htc.socialnetwork.facebook\'"

    goto/16 :goto_0

    .line 197
    .restart local v1       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    .restart local v12       #writer:Ljava/io/Writer;
    :catch_0
    move-exception v3

    .line 198
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    const v15, 0x7f0a0296

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mExportingFileName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ExportVCardActivity;->access$400(Lcom/android/htccontacts/ExportVCardActivity;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .restart local v4       #errorReason:Ljava/lang/String;
    const/4 v9, 0x0

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$600(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;-><init>(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 276
    if-eqz v1, :cond_5

    .line 277
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 279
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v14

    if-nez v14, :cond_3

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #calls: Lcom/android/htccontacts/ExportVCardActivity;->isSearchDialogActived()Landroid/app/SearchManager;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$900(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/app/SearchManager;

    move-result-object v7

    .line 284
    .restart local v7       #searchManager:Landroid/app/SearchManager;
    if-eqz v7, :cond_1b

    .line 285
    const-string v14, "ExportVCardActivity"

    const-string v15, "ActualExportThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$1000(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    goto/16 :goto_3

    .line 211
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v4           #errorReason:Ljava/lang/String;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local v7           #searchManager:Landroid/app/SearchManager;
    .end local v12           #writer:Ljava/io/Writer;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .restart local v13       #writer:Ljava/io/Writer;
    :cond_6
    :try_start_4
    new-instance v2, Lcom/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    sget v15, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {v2, v14, v15}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;I)V

    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v2       #composer:Lcom/android/vcard/VCardComposer;
    move-object v1, v2

    .end local v2           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v1       #composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_1

    .line 227
    .restart local v4       #errorReason:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #calls: Lcom/android/htccontacts/ExportVCardActivity;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v14, v4}, Lcom/android/htccontacts/ExportVCardActivity;->access$700(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 229
    .local v11, translatedErrorReason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$600(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0a0297

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;-><init>(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    const/4 v9, 0x0

    .line 276
    if-eqz v1, :cond_8

    .line 277
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 279
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v14

    if-nez v14, :cond_9

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #calls: Lcom/android/htccontacts/ExportVCardActivity;->isSearchDialogActived()Landroid/app/SearchManager;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$900(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/app/SearchManager;

    move-result-object v7

    .line 284
    .restart local v7       #searchManager:Landroid/app/SearchManager;
    if-eqz v7, :cond_1d

    .line 285
    const-string v14, "ExportVCardActivity"

    const-string v15, "ActualExportThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$1000(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .end local v7           #searchManager:Landroid/app/SearchManager;
    :cond_9
    :goto_5
    move-object v5, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    move-object v12, v13

    .line 233
    .end local v13           #writer:Ljava/io/Writer;
    .restart local v12       #writer:Ljava/io/Writer;
    goto/16 :goto_3

    .line 236
    .end local v4           #errorReason:Ljava/lang/String;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local v11           #translatedErrorReason:Ljava/lang/String;
    .end local v12           #writer:Ljava/io/Writer;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .restart local v13       #writer:Ljava/io/Writer;
    :cond_a
    :try_start_5
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v10

    .line 238
    .local v10, size:I
    if-nez v10, :cond_d

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$600(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0a0298

    invoke-virtual/range {v17 .. v18}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;-><init>(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 241
    const/4 v9, 0x0

    .line 276
    if-eqz v1, :cond_b

    .line 277
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 279
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v14

    if-nez v14, :cond_c

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #calls: Lcom/android/htccontacts/ExportVCardActivity;->isSearchDialogActived()Landroid/app/SearchManager;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$900(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/app/SearchManager;

    move-result-object v7

    .line 284
    .restart local v7       #searchManager:Landroid/app/SearchManager;
    if-eqz v7, :cond_1e

    .line 285
    const-string v14, "ExportVCardActivity"

    const-string v15, "ActualExportThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$1000(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .end local v7           #searchManager:Landroid/app/SearchManager;
    :cond_c
    :goto_6
    move-object v5, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    move-object v12, v13

    .line 242
    .end local v13           #writer:Ljava/io/Writer;
    .restart local v12       #writer:Ljava/io/Writer;
    goto/16 :goto_3

    .line 245
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local v12           #writer:Ljava/io/Writer;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .restart local v13       #writer:Ljava/io/Writer;
    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 248
    :goto_7
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v14

    if-nez v14, :cond_15

    .line 249
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mCanceled:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v14, :cond_10

    .line 276
    if-eqz v1, :cond_e

    .line 277
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 279
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v14

    if-nez v14, :cond_f

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #calls: Lcom/android/htccontacts/ExportVCardActivity;->isSearchDialogActived()Landroid/app/SearchManager;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$900(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/app/SearchManager;

    move-result-object v7

    .line 284
    .restart local v7       #searchManager:Landroid/app/SearchManager;
    if-eqz v7, :cond_1f

    .line 285
    const-string v14, "ExportVCardActivity"

    const-string v15, "ActualExportThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$1000(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .end local v7           #searchManager:Landroid/app/SearchManager;
    :cond_f
    :goto_8
    move-object v5, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    move-object v12, v13

    .line 250
    .end local v13           #writer:Ljava/io/Writer;
    .restart local v12       #writer:Ljava/io/Writer;
    goto/16 :goto_3

    .line 254
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local v12           #writer:Ljava/io/Writer;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .restart local v13       #writer:Ljava/io/Writer;
    :cond_10
    :try_start_7
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 267
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 276
    .end local v10           #size:I
    :catchall_0
    move-exception v14

    move-object v5, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    move-object v12, v13

    .end local v13           #writer:Ljava/io/Writer;
    .restart local v12       #writer:Ljava/io/Writer;
    :goto_9
    if-eqz v1, :cond_11

    .line 277
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 279
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v15}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v15

    if-nez v15, :cond_12

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v15}, Lcom/android/htccontacts/ExportVCardActivity;->access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 283
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #calls: Lcom/android/htccontacts/ExportVCardActivity;->isSearchDialogActived()Landroid/app/SearchManager;
    invoke-static {v15}, Lcom/android/htccontacts/ExportVCardActivity;->access$900(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/app/SearchManager;

    move-result-object v7

    .line 284
    .restart local v7       #searchManager:Landroid/app/SearchManager;
    if-eqz v7, :cond_1a

    .line 285
    const-string v15, "ExportVCardActivity"

    const-string v16, "ActualExportThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;
    invoke-static {v15}, Lcom/android/htccontacts/ExportVCardActivity;->access$1000(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 276
    .end local v7           #searchManager:Landroid/app/SearchManager;
    :cond_12
    :goto_a
    throw v14

    .line 255
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local v12           #writer:Ljava/io/Writer;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .restart local v10       #size:I
    .restart local v13       #writer:Ljava/io/Writer;
    :catch_1
    move-exception v3

    .line 256
    .local v3, e:Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v4

    .line 257
    .restart local v4       #errorReason:Ljava/lang/String;
    const-string v14, "ExportVCardActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to read a contact: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #calls: Lcom/android/htccontacts/ExportVCardActivity;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v14, v4}, Lcom/android/htccontacts/ExportVCardActivity;->access$700(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 260
    .restart local v11       #translatedErrorReason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$600(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0a029a

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;-><init>(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 263
    const/4 v9, 0x0

    .line 276
    if-eqz v1, :cond_13

    .line 277
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 279
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v14

    if-nez v14, :cond_14

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #calls: Lcom/android/htccontacts/ExportVCardActivity;->isSearchDialogActived()Landroid/app/SearchManager;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$900(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/app/SearchManager;

    move-result-object v7

    .line 284
    .restart local v7       #searchManager:Landroid/app/SearchManager;
    if-eqz v7, :cond_20

    .line 285
    const-string v14, "ExportVCardActivity"

    const-string v15, "ActualExportThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$1000(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .end local v7           #searchManager:Landroid/app/SearchManager;
    :cond_14
    :goto_b
    move-object v5, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    move-object v12, v13

    .line 264
    .end local v13           #writer:Ljava/io/Writer;
    .restart local v12       #writer:Ljava/io/Writer;
    goto/16 :goto_3

    .line 270
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #errorReason:Ljava/lang/String;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local v11           #translatedErrorReason:Ljava/lang/String;
    .end local v12           #writer:Ljava/io/Writer;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .restart local v13       #writer:Ljava/io/Writer;
    :cond_15
    :try_start_a
    invoke-virtual {v13}, Ljava/io/Writer;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 276
    if-eqz v1, :cond_16

    .line 277
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 279
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v14

    if-nez v14, :cond_17

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #calls: Lcom/android/htccontacts/ExportVCardActivity;->isSearchDialogActived()Landroid/app/SearchManager;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$900(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/app/SearchManager;

    move-result-object v7

    .line 284
    .restart local v7       #searchManager:Landroid/app/SearchManager;
    if-eqz v7, :cond_22

    .line 285
    const-string v14, "ExportVCardActivity"

    const-string v15, "ActualExportThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$1000(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .end local v7           #searchManager:Landroid/app/SearchManager;
    :cond_17
    :goto_c
    move-object v5, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    move-object v12, v13

    .line 292
    .end local v13           #writer:Ljava/io/Writer;
    .restart local v12       #writer:Ljava/io/Writer;
    goto/16 :goto_3

    .line 271
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local v12           #writer:Ljava/io/Writer;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .restart local v13       #writer:Ljava/io/Writer;
    :catch_2
    move-exception v3

    .line 272
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_b
    const-string v14, "ExportVCardActivity"

    const-string v15, "Failed to close the file"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 276
    if-eqz v1, :cond_18

    .line 277
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 279
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    if-eqz v9, :cond_19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v14

    if-nez v14, :cond_19

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #calls: Lcom/android/htccontacts/ExportVCardActivity;->isSearchDialogActived()Landroid/app/SearchManager;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$900(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/app/SearchManager;

    move-result-object v7

    .line 284
    .restart local v7       #searchManager:Landroid/app/SearchManager;
    if-eqz v7, :cond_21

    .line 285
    const-string v14, "ExportVCardActivity"

    const-string v15, "ActualExportThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;
    invoke-static {v14}, Lcom/android/htccontacts/ExportVCardActivity;->access$1000(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .end local v7           #searchManager:Landroid/app/SearchManager;
    :cond_19
    :goto_d
    move-object v5, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    move-object v12, v13

    .line 273
    .end local v13           #writer:Ljava/io/Writer;
    .restart local v12       #writer:Ljava/io/Writer;
    goto/16 :goto_3

    .line 288
    .end local v3           #e:Ljava/io/IOException;
    .end local v10           #size:I
    .restart local v7       #searchManager:Landroid/app/SearchManager;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v15}, Lcom/android/htccontacts/ExportVCardActivity;->finish()V

    goto/16 :goto_a

    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v4       #errorReason:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->finish()V

    goto/16 :goto_3

    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local v12           #writer:Ljava/io/Writer;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .restart local v13       #writer:Ljava/io/Writer;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->finish()V

    goto/16 :goto_2

    .restart local v11       #translatedErrorReason:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->finish()V

    goto/16 :goto_5

    .end local v4           #errorReason:Ljava/lang/String;
    .end local v11           #translatedErrorReason:Ljava/lang/String;
    .restart local v10       #size:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->finish()V

    goto/16 :goto_6

    :cond_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->finish()V

    goto/16 :goto_8

    .local v3, e:Ljava/io/IOException;
    .restart local v4       #errorReason:Ljava/lang/String;
    .restart local v11       #translatedErrorReason:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->finish()V

    goto/16 :goto_b

    .end local v4           #errorReason:Ljava/lang/String;
    .end local v11           #translatedErrorReason:Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->finish()V

    goto :goto_d

    .end local v3           #e:Ljava/io/IOException;
    :cond_22
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v14}, Lcom/android/htccontacts/ExportVCardActivity;->finish()V

    goto/16 :goto_c

    .line 276
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .end local v7           #searchManager:Landroid/app/SearchManager;
    .end local v10           #size:I
    .end local v13           #writer:Ljava/io/Writer;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    .restart local v12       #writer:Ljava/io/Writer;
    :catchall_1
    move-exception v14

    goto/16 :goto_9

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :catchall_2
    move-exception v14

    move-object v5, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    goto/16 :goto_9

    .line 197
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v3

    move-object v5, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    goto/16 :goto_4
.end method
