.class final Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DeleteBySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteBySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteBySelectActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    .line 1250
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1251
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1339
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x76d

    if-ne v0, v1, :cond_0

    .line 1340
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    .line 1341
    :cond_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 1342
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v9, -0x1

    .line 1290
    sparse-switch p1, :sswitch_data_0

    .line 1334
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 1295
    .restart local p2
    :sswitch_0
    if-eqz p2, :cond_1

    instance-of v3, p2, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 1296
    check-cast v0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;

    .line 1297
    .local v0, cook:Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;->eTime:J

    .line 1298
    const-string v3, "DeleteBySelectActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete: time-consuming> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;->eTime:J

    iget-wide v7, v0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;->sTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    check-cast p2, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;

    .end local p2
    iget-boolean v3, p2, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;->isFinished:Z

    if-eqz v3, :cond_0

    .line 1308
    .end local v0           #cook:Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1309
    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1310
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v3, v4}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$702(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1311
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #calls: Lcom/android/mms/ui/DeleteBySelectActivity;->releaseWakeLock()V
    invoke-static {v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$800(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    .line 1318
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1319
    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/DeleteBySelectActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v9, v5}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    .line 1325
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteAll:Z
    invoke-static {v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1100(Lcom/android/mms/ui/DeleteBySelectActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1326
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1327
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "delete_all"

    iget-object v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteAll:Z
    invoke-static {v4}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1100(Lcom/android/mms/ui/DeleteBySelectActivity;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1328
    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v3, v9, v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 1331
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->finish()V

    goto/16 :goto_0

    .line 1313
    :catch_0
    move-exception v1

    .line 1314
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1290
    nop

    :sswitch_data_0
    .sparse-switch
        0x709 -> :sswitch_0
        0x7d1 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1255
    invoke-static {}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1256
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$900(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$900(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1260
    :cond_0
    if-eqz p3, :cond_2

    .line 1261
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$902(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1262
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1268
    const-string v0, "DeleteBySelectActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad query token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$900(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #calls: Lcom/android/mms/ui/DeleteBySelectActivity;->initListView()V
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1500(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    .line 1274
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #calls: Lcom/android/mms/ui/DeleteBySelectActivity;->initDeleteButton()V
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1600(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    .line 1285
    :goto_1
    monitor-exit v1

    .line 1286
    return-void

    .line 1264
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    new-instance v2, Lcom/android/mms/ui/DeleteBySelectListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/DeleteBySelectActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-direct {v2, v3, p3, v4}, Lcom/android/mms/ui/DeleteBySelectListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mAdapter:Lcom/android/mms/ui/DeleteBySelectListAdapter;
    invoke-static {v0, v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$402(Lcom/android/mms/ui/DeleteBySelectActivity;Lcom/android/mms/ui/DeleteBySelectListAdapter;)Lcom/android/mms/ui/DeleteBySelectListAdapter;

    goto :goto_0

    .line 1285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1277
    :cond_1
    :try_start_1
    const-string v0, "DeleteBySelectActivity"

    const-string v2, "Cannot load undelivered messages."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->finish()V

    goto :goto_1

    .line 1282
    .restart local p2
    :cond_2
    const-string v0, "DeleteBySelectActivity"

    const-string v2, "Cannot init the cursor for the thread list."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1262
    :pswitch_data_0
    .packed-switch 0x6a5
        :pswitch_0
    .end packed-switch
.end method
