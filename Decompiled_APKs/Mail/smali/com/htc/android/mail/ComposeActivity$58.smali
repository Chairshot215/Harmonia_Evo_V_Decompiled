.class Lcom/htc/android/mail/ComposeActivity$58;
.super Landroid/os/Handler;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 7797
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7800
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 7916
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 7802
    :pswitch_1
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v3, v3, Lcom/htc/android/mail/ComposeActivity;->sending:Z

    if-nez v3, :cond_1

    .line 7804
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ComposeActivity"

    const-string v4, "SUCCESS ,cancel before>"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7807
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ComposeActivity"

    const-string v4, "compose_sent_success>"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7808
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3, v6}, Lcom/htc/android/mail/ComposeActivity;->removeDialog(I)V

    .line 7809
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const v5, 0x7f0b0121

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/ComposeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 7811
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ComposeActivity;->setResult(I)V

    .line 7814
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mbNeedNotifyReadScreenContactStatusChanged:Z
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$3100(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7815
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v4}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/MailEventBroadcaster;->sendContactChangeStatus(Landroid/content/Context;)V

    .line 7816
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mbNeedNotifyReadScreenContactStatusChanged:Z
    invoke-static {v3, v6}, Lcom/htc/android/mail/ComposeActivity;->access$3102(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 7819
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDraftMessageId:J
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$3300(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 7820
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/messages/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDraftMessageId:J
    invoke-static {v5}, Lcom/htc/android/mail/ComposeActivity;->access$3300(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7825
    :cond_4
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->doLeaveGetContactThread:Z
    invoke-static {v3, v7}, Lcom/htc/android/mail/ComposeActivity;->access$6702(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 7828
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3}, Lcom/htc/android/mail/ComposeActivity;->finish()V

    goto/16 :goto_0

    .line 7831
    :pswitch_2
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v3, v3, Lcom/htc/android/mail/ComposeActivity;->sending:Z

    if-nez v3, :cond_5

    .line 7833
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ComposeActivity"

    const-string v4, "FAIL , cancel before 2>"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7836
    :cond_5
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3, v6}, Lcom/htc/android/mail/ComposeActivity;->removeDialog(I)V

    .line 7837
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "ComposeActivity"

    const-string v4, "compose_sent_fail>"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7838
    :cond_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 7839
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 7840
    .local v2, showString:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 7847
    .end local v2           #showString:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3, v6}, Lcom/htc/android/mail/ComposeActivity;->setResult(I)V

    .line 7850
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mbNeedNotifyReadScreenContactStatusChanged:Z
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$3100(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7851
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v4}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/MailEventBroadcaster;->sendContactChangeStatus(Landroid/content/Context;)V

    .line 7852
    :cond_7
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mbNeedNotifyReadScreenContactStatusChanged:Z
    invoke-static {v3, v6}, Lcom/htc/android/mail/ComposeActivity;->access$3102(Lcom/htc/android/mail/ComposeActivity;Z)Z

    goto/16 :goto_0

    .line 7843
    :cond_8
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ComposeActivity;->showDialog(I)V

    goto :goto_1

    .line 7857
    :pswitch_3
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "ComposeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mEditableWebviewContentChanged : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mEditableWebviewContentChanged:Z
    invoke-static {v5}, Lcom/htc/android/mail/ComposeActivity;->access$9100(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7858
    :cond_9
    move-object v0, p1

    .line 7859
    .local v0, htmlMsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWebViewLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$9200(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 7860
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mEditableWebviewContentChanged:Z
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$9100(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 7861
    iget-object v5, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mHtmlText:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/htc/android/mail/ComposeActivity;->access$9302(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 7862
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "ComposeActivity"

    const-string v5, "content is changed"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7863
    :cond_a
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get_html_string:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mHtmlText:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/mail/ComposeActivity;->access$9300(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7868
    :cond_b
    :goto_2
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v5, 0x1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mEditableHtmlGot:Z
    invoke-static {v3, v5}, Lcom/htc/android/mail/ComposeActivity;->access$9402(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 7869
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWebViewLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$9200(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 7871
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "ComposeActivity"

    const-string v5, "clear webview in get_html_string end"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7872
    :cond_c
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ComposeActivity$58;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 7873
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ComposeActivity$58;->removeMessages(I)V

    .line 7874
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->releaseReplyTextItems()V
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$9500(Lcom/htc/android/mail/ComposeActivity;)V

    .line 7876
    :cond_d
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 7866
    :cond_e
    :try_start_1
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "ComposeActivity"

    const-string v5, "content is not changed"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 7879
    .end local v0           #htmlMsg:Landroid/os/Message;
    :pswitch_4
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "ComposeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mEditableWebviewContentChanged : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mEditableWebviewContentChanged:Z
    invoke-static {v5}, Lcom/htc/android/mail/ComposeActivity;->access$9100(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7880
    :cond_f
    move-object v1, p1

    .line 7881
    .local v1, htmlMsg2:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWebViewLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$9200(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 7882
    :try_start_2
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mEditableWebviewContentChanged:Z
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$9100(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 7883
    iget-object v5, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mHtmlText:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/htc/android/mail/ComposeActivity;->access$9302(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 7884
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "ComposeActivity"

    const-string v5, "content is changed"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7885
    :cond_10
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v3, :cond_11

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get_html_string:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mHtmlText:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/mail/ComposeActivity;->access$9300(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7890
    :cond_11
    :goto_3
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v5, 0x1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mEditableHtmlGot:Z
    invoke-static {v3, v5}, Lcom/htc/android/mail/ComposeActivity;->access$9402(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 7891
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWebViewLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$9200(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 7893
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "ComposeActivity"

    const-string v5, "clear webview in get_html_string end"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7894
    :cond_12
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ComposeActivity$58;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 7895
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ComposeActivity$58;->removeMessages(I)V

    .line 7896
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->releaseReplyTextItems()V
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$9500(Lcom/htc/android/mail/ComposeActivity;)V

    .line 7898
    :cond_13
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7900
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->checkMailSize()Z
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$9600(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 7901
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ComposeActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 7888
    :cond_14
    :try_start_3
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "ComposeActivity"

    const-string v5, "content is not changed"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 7898
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 7905
    :cond_15
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->doSendMail()V
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$9700(Lcom/htc/android/mail/ComposeActivity;)V

    goto/16 :goto_0

    .line 7911
    .end local v1           #htmlMsg2:Landroid/os/Message;
    :pswitch_5
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mMimeType:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$9800(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/android/mail/ComposeActivity;->loadReplyText(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/htc/android/mail/ComposeActivity;->access$9900(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7912
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mEditableWebviewContentChanged:Z
    invoke-static {v3, v7}, Lcom/htc/android/mail/ComposeActivity;->access$9102(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 7913
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWeb:Lcom/htc/android/mail/HtcEditableWebView;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$7400(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/HtcEditableWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/HtcEditableWebView;->requestFocus()Z

    .line 7914
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$58;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWeb:Lcom/htc/android/mail/HtcEditableWebView;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$7400(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/HtcEditableWebView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Lcom/htc/android/mail/HtcEditableWebView;->setCaretPos(II)V

    goto/16 :goto_0

    .line 7800
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
