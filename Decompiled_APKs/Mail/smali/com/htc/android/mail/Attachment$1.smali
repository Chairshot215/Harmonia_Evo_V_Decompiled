.class Lcom/htc/android/mail/Attachment$1;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/Attachment;->setAttachIndicatorIcon(Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/Attachment;

.field final synthetic val$attachIconid:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imgOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic val$saveThumbFlag:Ljava/lang/Boolean;

.field final synthetic val$weakRequestHandler:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/Attachment;Ljava/lang/ref/WeakReference;ILjava/lang/Boolean;Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/htc/android/mail/Attachment$1;->this$0:Lcom/htc/android/mail/Attachment;

    iput-object p2, p0, Lcom/htc/android/mail/Attachment$1;->val$weakRequestHandler:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/htc/android/mail/Attachment$1;->val$attachIconid:I

    iput-object p4, p0, Lcom/htc/android/mail/Attachment$1;->val$saveThumbFlag:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/htc/android/mail/Attachment$1;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/htc/android/mail/Attachment$1;->val$imgOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 380
    iget-object v7, p0, Lcom/htc/android/mail/Attachment$1;->val$weakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/MailRequestHandler;

    .line 381
    .local v4, requestHandler:Lcom/htc/android/mail/MailRequestHandler;
    if-nez v4, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget v7, p0, Lcom/htc/android/mail/Attachment$1;->val$attachIconid:I

    const v8, 0x208082d

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/htc/android/mail/Attachment$1;->val$attachIconid:I

    const v8, 0x2080203

    if-ne v7, v8, :cond_0

    .line 388
    :cond_2
    const/4 v1, 0x0

    .line 392
    .local v1, bmpd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v7, p0, Lcom/htc/android/mail/Attachment$1;->val$saveThumbFlag:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 393
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attachthumb_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/Attachment$1;->this$0:Lcom/htc/android/mail/Attachment;

    iget-object v8, v8, Lcom/htc/android/mail/Attachment;->messageId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/Attachment$1;->this$0:Lcom/htc/android/mail/Attachment;

    iget-wide v8, v8, Lcom/htc/android/mail/Attachment;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, thumbFileName:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/android/mail/Attachment$1;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/android/mail/Attachment;->searchForExistingThumbFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/htc/android/mail/Attachment;->access$000(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 396
    .local v6, thumbFilePath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/Attachment;->access$100()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "Attachment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thumbFilePath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_3
    if-nez v6, :cond_5

    .line 402
    iget-object v7, p0, Lcom/htc/android/mail/Attachment$1;->val$context:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x1

    #calls: Lcom/htc/android/mail/Attachment;->getAttachThumbFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v7, v8, v5, v9}, Lcom/htc/android/mail/Attachment;->access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 404
    invoke-static {}, Lcom/htc/android/mail/Attachment;->access$100()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "Attachment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create attach indicator and save to thumbFilepath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_4
    iget-object v7, p0, Lcom/htc/android/mail/Attachment$1;->this$0:Lcom/htc/android/mail/Attachment;

    iget-object v8, p0, Lcom/htc/android/mail/Attachment$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/android/mail/Attachment$1;->val$imgOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, p0, Lcom/htc/android/mail/Attachment$1;->val$attachIconid:I

    #calls: Lcom/htc/android/mail/Attachment;->generateAttachThumb(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/Attachment;->access$300(Lcom/htc/android/mail/Attachment;Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_0

    .line 408
    iget-object v7, p0, Lcom/htc/android/mail/Attachment$1;->this$0:Lcom/htc/android/mail/Attachment;

    iget-object v8, p0, Lcom/htc/android/mail/Attachment$1;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/android/mail/Attachment;->setAttachmentIndicator(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;Lcom/htc/android/mail/MailRequestHandler;)V
    invoke-static {v7, v8, v1, v4}, Lcom/htc/android/mail/Attachment;->access$400(Lcom/htc/android/mail/Attachment;Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;Lcom/htc/android/mail/MailRequestHandler;)V

    .line 409
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 411
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 412
    .local v3, fout:Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 413
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 414
    .end local v3           #fout:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 415
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 420
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Lcom/htc/android/mail/Attachment;->access$100()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "Attachment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "use existed attachment indicator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_6
    iget-object v7, p0, Lcom/htc/android/mail/Attachment$1;->this$0:Lcom/htc/android/mail/Attachment;

    iget-object v8, p0, Lcom/htc/android/mail/Attachment$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/android/mail/Attachment$1;->val$imgOptions:Landroid/graphics/BitmapFactory$Options;

    #calls: Lcom/htc/android/mail/Attachment;->setAttachmentIndicator(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;Lcom/htc/android/mail/MailRequestHandler;)V
    invoke-static {v7, v8, v9, v6, v4}, Lcom/htc/android/mail/Attachment;->access$500(Lcom/htc/android/mail/Attachment;Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;Lcom/htc/android/mail/MailRequestHandler;)V

    goto/16 :goto_0

    .line 425
    .end local v5           #thumbFileName:Ljava/lang/String;
    .end local v6           #thumbFilePath:Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/htc/android/mail/Attachment$1;->this$0:Lcom/htc/android/mail/Attachment;

    iget-object v8, p0, Lcom/htc/android/mail/Attachment$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/android/mail/Attachment$1;->val$imgOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, p0, Lcom/htc/android/mail/Attachment$1;->val$attachIconid:I

    #calls: Lcom/htc/android/mail/Attachment;->generateAttachThumb(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/Attachment;->access$300(Lcom/htc/android/mail/Attachment;Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 426
    if-eqz v1, :cond_0

    .line 427
    iget-object v7, p0, Lcom/htc/android/mail/Attachment$1;->this$0:Lcom/htc/android/mail/Attachment;

    iget-object v8, p0, Lcom/htc/android/mail/Attachment$1;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/android/mail/Attachment;->setAttachmentIndicator(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;Lcom/htc/android/mail/MailRequestHandler;)V
    invoke-static {v7, v8, v1, v4}, Lcom/htc/android/mail/Attachment;->access$400(Lcom/htc/android/mail/Attachment;Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;Lcom/htc/android/mail/MailRequestHandler;)V

    goto/16 :goto_0
.end method
