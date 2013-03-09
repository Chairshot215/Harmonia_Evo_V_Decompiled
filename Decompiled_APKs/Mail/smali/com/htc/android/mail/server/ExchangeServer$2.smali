.class Lcom/htc/android/mail/server/ExchangeServer$2;
.super Ljava/lang/Object;
.source "ExchangeServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/server/ExchangeServer;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/server/ExchangeServer;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/server/ExchangeServer;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 176
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 275
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ExchangeServer"

    const-string v4, "close() data initial"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I
    invoke-static {v0, v12}, Lcom/htc/android/mail/server/ExchangeServer;->access$302(Lcom/htc/android/mail/server/ExchangeServer;I)I

    .line 277
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/htc/android/mail/server/ExchangeServer;->access$602(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/htc/android/mail/server/ExchangeServer;->access$702(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    :goto_0
    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z
    invoke-static {v0, v12}, Lcom/htc/android/mail/server/ExchangeServer;->access$502(Lcom/htc/android/mail/server/ExchangeServer;Z)Z

    .line 281
    return-void

    .line 180
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I
    invoke-static {v0}, Lcom/htc/android/mail/server/ExchangeServer;->access$300(Lcom/htc/android/mail/server/ExchangeServer;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 268
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ExchangeServer"

    const-string v4, "close(): cancel - cancel EXCHG_refresh"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_2
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v4}, Lcom/htc/android/mail/server/ExchangeServer;->access$400(Lcom/htc/android/mail/server/ExchangeServer;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    const/4 v9, 0x3

    invoke-interface {v0, v4, v5, v9}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelSyncSource(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    :cond_3
    :goto_1
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ExchangeServer"

    const-string v4, "close() data initial"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I
    invoke-static {v0, v12}, Lcom/htc/android/mail/server/ExchangeServer;->access$302(Lcom/htc/android/mail/server/ExchangeServer;I)I

    .line 277
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/htc/android/mail/server/ExchangeServer;->access$602(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/htc/android/mail/server/ExchangeServer;->access$702(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    goto :goto_0

    .line 183
    :sswitch_0
    :try_start_2
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ExchangeServer"

    const-string v4, "close(): cancel EXCHG_refresh"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_5
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v4}, Lcom/htc/android/mail/server/ExchangeServer;->access$400(Lcom/htc/android/mail/server/ExchangeServer;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    const/4 v9, 0x3

    invoke-interface {v0, v4, v5, v9}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelSyncSource(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 272
    :catch_0
    move-exception v7

    .line 273
    .local v7, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ExchangeServer"

    const-string v4, "close() data initial"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I
    invoke-static {v0, v12}, Lcom/htc/android/mail/server/ExchangeServer;->access$302(Lcom/htc/android/mail/server/ExchangeServer;I)I

    .line 277
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/htc/android/mail/server/ExchangeServer;->access$602(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/htc/android/mail/server/ExchangeServer;->access$702(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    goto/16 :goto_0

    .line 187
    .end local v7           #e:Landroid/os/RemoteException;
    :sswitch_1
    :try_start_4
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ExchangeServer"

    const-string v4, "close(): cancel EXCHG_fetchPartByUid"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 275
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "ExchangeServer"

    const-string v5, "close() data initial"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_7
    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I
    invoke-static {v4, v12}, Lcom/htc/android/mail/server/ExchangeServer;->access$302(Lcom/htc/android/mail/server/ExchangeServer;I)I

    .line 277
    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;
    invoke-static {v4, v11}, Lcom/htc/android/mail/server/ExchangeServer;->access$602(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;
    invoke-static {v4, v11}, Lcom/htc/android/mail/server/ExchangeServer;->access$702(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z
    invoke-static {v4, v12}, Lcom/htc/android/mail/server/ExchangeServer;->access$502(Lcom/htc/android/mail/server/ExchangeServer;Z)Z

    .line 275
    throw v0

    .line 190
    :sswitch_2
    :try_start_5
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ExchangeServer"

    const-string v4, "close(): cancel EXCHG_moveMail"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 194
    :sswitch_3
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ExchangeServer"

    const-string v4, "close(): cancel EXCHG_fetchMultiAttachments"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_8
    const/4 v6, 0x0

    .line 197
    .local v6, cur:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 198
    .local v3, where:Ljava/lang/String;
    const-string v8, "0"

    .line 199
    .local v8, strId:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .line 200
    .local v1, partURI:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z
    invoke-static {v0}, Lcom/htc/android/mail/server/ExchangeServer;->access$500(Lcom/htc/android/mail/server/ExchangeServer;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 201
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 204
    :cond_9
    const/4 v0, 0x1

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    .line 205
    .local v2, proj:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_message = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/server/ExchangeServer;->access$600(Lcom/htc/android/mail/server/ExchangeServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' AND _filereference = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/server/ExchangeServer;->access$700(Lcom/htc/android/mail/server/ExchangeServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/server/ExchangeServer;->access$800(Lcom/htc/android/mail/server/ExchangeServer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 208
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v8

    .line 213
    :cond_a
    if-eqz v6, :cond_b

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 217
    .end local v2           #proj:[Ljava/lang/String;
    :cond_b
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "0"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 218
    :cond_c
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 219
    const-string v0, "ExchangeServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t query part id, where: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 275
    :goto_3
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ExchangeServer"

    const-string v4, "close() data initial"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_d
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I
    invoke-static {v0, v12}, Lcom/htc/android/mail/server/ExchangeServer;->access$302(Lcom/htc/android/mail/server/ExchangeServer;I)I

    .line 277
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/htc/android/mail/server/ExchangeServer;->access$602(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/htc/android/mail/server/ExchangeServer;->access$702(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    goto/16 :goto_0

    .line 209
    :catch_1
    move-exception v7

    .line 210
    .local v7, e:Ljava/lang/Exception;
    :try_start_8
    const-string v0, "ExchangeServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel EXCHG_fetchMailAttach exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v8, "0"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 213
    if-eqz v6, :cond_b

    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 213
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_e

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_e

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_e
    throw v0

    .line 221
    :cond_f
    const-string v0, "ExchangeServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t query part id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/server/ExchangeServer;->access$600(Lcom/htc/android/mail/server/ExchangeServer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/server/ExchangeServer;->access$700(Lcom/htc/android/mail/server/ExchangeServer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 225
    :cond_10
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v4}, Lcom/htc/android/mail/server/ExchangeServer;->access$400(Lcom/htc/android/mail/server/ExchangeServer;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    const/16 v9, 0x64

    invoke-interface {v0, v4, v5, v9, v8}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelMailOperation(JILjava/lang/String;)V

    goto/16 :goto_1

    .line 230
    .end local v1           #partURI:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v8           #strId:Ljava/lang/String;
    :sswitch_4
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "ExchangeServer"

    const-string v4, "close(): cancel EXCHG_fetchMailAttach"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_11
    const/4 v6, 0x0

    .line 233
    .restart local v6       #cur:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 234
    .restart local v3       #where:Ljava/lang/String;
    const-string v8, "0"

    .line 235
    .restart local v8       #strId:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .line 236
    .restart local v1       #partURI:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z
    invoke-static {v0}, Lcom/htc/android/mail/server/ExchangeServer;->access$500(Lcom/htc/android/mail/server/ExchangeServer;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 237
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 240
    :cond_12
    const/4 v0, 0x1

    :try_start_a
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    .line 241
    .restart local v2       #proj:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_message = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/server/ExchangeServer;->access$600(Lcom/htc/android/mail/server/ExchangeServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' AND _filereference = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/server/ExchangeServer;->access$700(Lcom/htc/android/mail/server/ExchangeServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/server/ExchangeServer;->access$800(Lcom/htc/android/mail/server/ExchangeServer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    if-eqz v6, :cond_13

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 244
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v8

    .line 249
    :cond_13
    if-eqz v6, :cond_14

    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 253
    .end local v2           #proj:[Ljava/lang/String;
    :cond_14
    :goto_4
    if-eqz v8, :cond_15

    const-string v0, "0"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 254
    :cond_15
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "ExchangeServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t query easPart id, where: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    .line 275
    :cond_16
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "ExchangeServer"

    const-string v4, "close() data initial"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_17
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I
    invoke-static {v0, v12}, Lcom/htc/android/mail/server/ExchangeServer;->access$302(Lcom/htc/android/mail/server/ExchangeServer;I)I

    .line 277
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/htc/android/mail/server/ExchangeServer;->access$602(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #setter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/htc/android/mail/server/ExchangeServer;->access$702(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    goto/16 :goto_0

    .line 245
    :catch_2
    move-exception v7

    .line 246
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_c
    const-string v0, "ExchangeServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel EXCHG_fetchMailAttach exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v8, "0"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 249
    if-eqz v6, :cond_14

    :try_start_d
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 249
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    if-eqz v6, :cond_18

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_18

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_18
    throw v0

    .line 257
    :cond_19
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v4}, Lcom/htc/android/mail/server/ExchangeServer;->access$400(Lcom/htc/android/mail/server/ExchangeServer;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    const/16 v9, 0x64

    invoke-interface {v0, v4, v5, v9, v8}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelMailOperation(JILjava/lang/String;)V

    goto/16 :goto_1

    .line 262
    .end local v1           #partURI:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v8           #strId:Ljava/lang/String;
    :sswitch_5
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "ExchangeServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close(): cancel EXCHG_getRemaining: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/server/ExchangeServer;->access$600(Lcom/htc/android/mail/server/ExchangeServer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_1a
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v4}, Lcom/htc/android/mail/server/ExchangeServer;->access$400(Lcom/htc/android/mail/server/ExchangeServer;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    const/16 v9, 0x65

    iget-object v10, p0, Lcom/htc/android/mail/server/ExchangeServer$2;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/android/mail/server/ExchangeServer;->access$600(Lcom/htc/android/mail/server/ExchangeServer;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v4, v5, v9, v10}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelMailOperation(JILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_1

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x1f7 -> :sswitch_1
        0x1fe -> :sswitch_4
        0x1ff -> :sswitch_5
        0x200 -> :sswitch_3
    .end sparse-switch
.end method
