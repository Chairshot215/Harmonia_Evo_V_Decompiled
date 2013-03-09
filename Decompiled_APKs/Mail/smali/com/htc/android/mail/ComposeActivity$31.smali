.class Lcom/htc/android/mail/ComposeActivity$31;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->removeServerAttachments()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;

.field final synthetic val$nRet:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4665
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$31;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iput-object p2, p0, Lcom/htc/android/mail/ComposeActivity$31;->val$nRet:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 4667
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$31;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v7}, Lcom/htc/android/mail/ComposeActivity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4720
    :goto_0
    return-void

    .line 4670
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "ComposeActivity"

    const-string v8, "removeServerAttachment"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4672
    :cond_1
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$31;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAttachSwitch:Lcom/htc/android/mail/widget/MailAttachmentSwitch;
    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$5400(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/widget/MailAttachmentSwitch;

    move-result-object v7

    if-nez v7, :cond_2

    .line 4673
    const-string v7, "ComposeActivity"

    const-string v8, "attachViewList null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4678
    :cond_2
    const/4 v2, 0x0

    .line 4679
    .local v2, bExist:Z
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$31;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAttachlist:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$5500(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 4680
    .local v3, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_7

    .line 4681
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$31;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAttachlist:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$5500(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 4682
    .local v0, attachView:Landroid/widget/RelativeLayout;
    if-nez v0, :cond_4

    .line 4680
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4685
    :cond_4
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/Attachment;

    .line 4686
    .local v1, attachment:Lcom/htc/android/mail/Attachment;
    if-eqz v1, :cond_3

    .line 4690
    :try_start_0
    iget-object v7, v1, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_5

    .line 4691
    const/4 v2, 0x0

    .line 4706
    :goto_3
    iget-boolean v7, v1, Lcom/htc/android/mail/Attachment;->fromServer:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    if-nez v2, :cond_3

    .line 4707
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$31;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAttachlist:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$5500(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 4709
    add-int/lit8 v3, v3, -0x1

    .line 4710
    add-int/lit8 v6, v6, -0x1

    .line 4712
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$31;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$5610(Lcom/htc/android/mail/ComposeActivity;)I

    .line 4713
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$31;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-wide v8, v1, Lcom/htc/android/mail/Attachment;->dispSize:J

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/ComposeActivity;->access$5722(Lcom/htc/android/mail/ComposeActivity;J)J

    .line 4715
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$31;->val$nRet:Landroid/os/Message;

    iget v8, v7, Landroid/os/Message;->arg1:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/os/Message;->arg1:I

    goto :goto_2

    .line 4693
    :cond_5
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v7, v1, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 4694
    .local v5, file:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    .line 4695
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4696
    const/4 v2, 0x1

    goto :goto_3

    .line 4698
    .end local v5           #file:Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 4699
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "ComposeActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4700
    :cond_6
    const/4 v2, 0x0

    .line 4704
    goto :goto_3

    .line 4701
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 4702
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 4703
    const/4 v2, 0x0

    goto :goto_3

    .line 4719
    .end local v0           #attachView:Landroid/widget/RelativeLayout;
    .end local v1           #attachment:Lcom/htc/android/mail/Attachment;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_7
    iget-object v7, p0, Lcom/htc/android/mail/ComposeActivity$31;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$31;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mTotalAttachmentCount:I
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$5600(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/android/mail/ComposeActivity$31;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->expandAttachmentView:Z
    invoke-static {v9}, Lcom/htc/android/mail/ComposeActivity;->access$5800(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/mail/ComposeActivity;->updateAttachmentSwitch(IZ)V

    goto/16 :goto_0
.end method
