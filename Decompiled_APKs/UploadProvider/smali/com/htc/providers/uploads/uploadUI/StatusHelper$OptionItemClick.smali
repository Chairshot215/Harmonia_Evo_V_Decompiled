.class Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;
.super Ljava/lang/Object;
.source "StatusHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/uploadUI/StatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionItemClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/uploadUI/StatusHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 300
    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v12, v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->currentItem:Lcom/htc/providers/uploads/UploadItem;

    invoke-interface {v12}, Lcom/htc/providers/uploads/UploadItem;->getId()I

    move-result v11

    .line 301
    .local v11, uploadId:I
    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v12, v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mRoot:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/htc/providers/uploads/UploadHelper;->queryUploadStatusByUploadId(Landroid/content/Context;I)Lcom/htc/providers/uploads/UploadItem;

    move-result-object v5

    .line 303
    .local v5, item:Lcom/htc/providers/uploads/UploadItem;
    const-string v12, "StatusHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "option item is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    packed-switch p2, :pswitch_data_0

    .line 359
    :goto_0
    invoke-static {}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->access$000()Ljava/util/Hashtable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 360
    .local v6, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 361
    .local v1, count:I
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 362
    invoke-static {}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->access$000()Ljava/util/Hashtable;

    move-result-object v12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    invoke-virtual {v12}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->getNotificationCount()I

    move-result v12

    add-int/2addr v1, v12

    goto :goto_1

    .line 308
    .end local v1           #count:I
    .end local v6           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :pswitch_0
    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v12, v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mRoot:Landroid/view/View;

    const v13, 0x7f080018

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 309
    .local v10, title:Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 311
    .local v8, oldTitle:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v12, v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mRoot:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget v13, v13, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->batchId:I

    invoke-static {v12, v11, v13}, Lcom/htc/providers/uploads/UploadHelper;->clearFileUpload(Landroid/content/Context;II)V

    .line 314
    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v13, v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mutex:Ljava/lang/Object;

    monitor-enter v13

    .line 316
    :try_start_0
    invoke-static {}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->access$000()Ljava/util/Hashtable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 317
    .restart local v6       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 318
    invoke-static {}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->access$000()Ljava/util/Hashtable;

    move-result-object v12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    .line 319
    .local v9, status:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v12, v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->currentItem:Lcom/htc/providers/uploads/UploadItem;

    invoke-virtual {v9, v12}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->removeItem(Lcom/htc/providers/uploads/UploadItem;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 320
    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-virtual {v12}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->notifyDataSetChanged()V

    .line 324
    .end local v9           #status:Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
    :cond_1
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    const/4 v1, 0x0

    .line 326
    .restart local v1       #count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    sget-object v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->STATUS:[I

    array-length v12, v12

    if-ge v2, v12, :cond_2

    .line 327
    invoke-static {}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->access$000()Ljava/util/Hashtable;

    move-result-object v12

    sget-object v13, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->STATUS:[I

    aget v13, v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    invoke-virtual {v12}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->getNotificationCount()I

    move-result v12

    add-int/2addr v1, v12

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 324
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v6           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 329
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v6       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    const/16 v14, 0x28

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x29

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, newTitle:Ljava/lang/String;
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    if-nez v1, :cond_3

    .line 337
    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v13, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget v13, v13, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->batchId:I

    invoke-virtual {v12, v13}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->cancelStatus(I)V

    .line 339
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .end local v2           #i:I
    const-string v12, "UPDATE_NOTIFY"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v2, i:Landroid/content/Intent;
    const-string v12, "batchId"

    iget-object v13, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget v13, v13, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->batchId:I

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v12, v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->obserActivity:Landroid/app/Activity;

    invoke-virtual {v12, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 344
    .end local v1           #count:I
    .end local v2           #i:Landroid/content/Intent;
    .end local v6           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7           #newTitle:Ljava/lang/String;
    .end local v8           #oldTitle:Ljava/lang/String;
    .end local v10           #title:Landroid/widget/TextView;
    :pswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v3, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v12, v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mRoot:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/htc/providers/uploads/UploadHelper;->resumeFileUpload(Landroid/content/Context;Ljava/util/List;)Z

    goto/16 :goto_0

    .line 349
    .end local v3           #idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_2
    new-instance v4, Landroid/content/Intent;

    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v12, v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->obserActivity:Landroid/app/Activity;

    const-class v13, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;

    invoke-direct {v4, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .local v4, intent:Landroid/content/Intent;
    const-string v12, "com.htc.providers.uploads.FILE_TITLE"

    invoke-interface {v5}, Lcom/htc/providers/uploads/UploadItem;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v12, "com.htc.providers.uploads.FILE_MIME_TYPE"

    invoke-interface {v5}, Lcom/htc/providers/uploads/UploadItem;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v12, "com.htc.providers.uploads.FILE_INSERT_TIME"

    invoke-interface {v5}, Lcom/htc/providers/uploads/UploadItem;->getInsertDateTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v4, v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 354
    const-string v12, "com.htc.providers.uploads.FILE_ERROR_MESSAGE"

    invoke-interface {v5}, Lcom/htc/providers/uploads/UploadItem;->getRespMesg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    invoke-interface {v5}, Lcom/htc/providers/uploads/UploadItem;->getFileUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 356
    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v12, v12, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->obserActivity:Landroid/app/Activity;

    invoke-virtual {v12, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 364
    .end local v4           #intent:Landroid/content/Intent;
    .restart local v1       #count:I
    .restart local v6       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    if-nez v1, :cond_5

    .line 365
    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v13, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget v13, v13, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->batchId:I

    invoke-virtual {v12, v13}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->cancelStatus(I)V

    .line 368
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 369
    return-void

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
