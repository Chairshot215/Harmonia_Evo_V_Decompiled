.class Lcom/htc/android/mail/ReadScreen$RequestHandler;
.super Lcom/htc/android/mail/MailRequestHandler;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestHandler"
.end annotation


# instance fields
.field private mLoadMailbodyThread:Ljava/lang/Thread;

.field private mLoadMailbodyThreadLock:Ljava/lang/Object;

.field private final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/ReadScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mTokenId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/util/MailDialogManager;)V
    .locals 1
    .parameter "tokenId"
    .parameter "context"
    .parameter "target"
    .parameter "dialogManager"

    .prologue
    .line 4740
    invoke-direct {p0, p2, p4}, Lcom/htc/android/mail/MailRequestHandler;-><init>(Landroid/content/Context;Lcom/htc/android/mail/util/MailDialogManager;)V

    .line 4736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mLoadMailbodyThread:Ljava/lang/Thread;

    .line 4737
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mLoadMailbodyThreadLock:Ljava/lang/Object;

    .line 4741
    iput p1, p0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mTokenId:I

    .line 4742
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    .line 4743
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "message"

    .prologue
    .line 4747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/android/mail/ReadScreen;

    .line 4748
    .local v15, target:Lcom/htc/android/mail/ReadScreen;
    if-nez v15, :cond_1

    .line 4886
    :cond_0
    :goto_0
    return-void

    .line 4750
    :cond_1
    invoke-virtual {v15}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 4751
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v16

    if-eqz v16, :cond_0

    const-string v16, "ReadScreen"

    const-string v17, "ReadScreen is finishing"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4755
    :cond_2
    const/4 v13, -0x1

    .line 4756
    .local v13, returnValue:I
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v16

    if-eqz v16, :cond_3

    const-string v16, "ReadScreen"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "RequestHandler: tokenId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mTokenId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " NowTokenId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$3900()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4757
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mTokenId:I

    move/from16 v16, v0

    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$3900()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 4760
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v16

    if-eqz v16, :cond_4

    const-string v16, "ReadScreen"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleMessage>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4761
    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/htc/android/mail/MailRequestHandler;->handleMessage(Landroid/os/Message;)V

    .line 4762
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_0

    .line 4793
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "Return"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 4794
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v16

    if-eqz v16, :cond_5

    const-string v16, "ReadScreen"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "finish fetchPartByUid_complete> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4795
    :cond_5
    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v16

    if-eqz v16, :cond_c

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/Account;->isExchange()Z

    move-result v16

    if-eqz v16, :cond_c

    #getter for: Lcom/htc/android/mail/ReadScreen;->isInlineAttachDownload:Z
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$7500(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 4796
    const/16 v16, 0x0

    #setter for: Lcom/htc/android/mail/ReadScreen;->isInlineAttachDownload:Z
    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/ReadScreen;->access$7502(Lcom/htc/android/mail/ReadScreen;Z)Z

    .line 4797
    #calls: Lcom/htc/android/mail/ReadScreen;->showMailBody()Ljava/lang/Thread;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$7400(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/Thread;

    .line 4801
    :goto_1
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v16

    if-eqz v16, :cond_6

    const-string v16, "ReadScreen"

    const-string v17, "reloadAttachment>3"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4802
    :cond_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/android/mail/Attachment;

    .line 4803
    .local v3, attach:Lcom/htc/android/mail/Attachment;
    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v16

    if-nez v16, :cond_d

    .line 4804
    #calls: Lcom/htc/android/mail/ReadScreen;->updateAllAttachmentButton(I)V
    invoke-static {v15, v13}, Lcom/htc/android/mail/ReadScreen;->access$7600(Lcom/htc/android/mail/ReadScreen;I)V

    goto/16 :goto_0

    .line 4766
    .end local v3           #attach:Lcom/htc/android/mail/Attachment;
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "Return"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 4767
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v16

    if-eqz v16, :cond_7

    const-string v16, "ReadScreen"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fetchImapAll_complete> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4769
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "MailNotFound"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 4770
    .local v9, mMailNotFound:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v9, v0, :cond_8

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_9

    .line 4772
    :cond_8
    #calls: Lcom/htc/android/mail/ReadScreen;->stopGetUnfinishedAnimation()V
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$5500(Lcom/htc/android/mail/ReadScreen;)V

    goto/16 :goto_0

    .line 4777
    :cond_9
    const/16 v16, 0x1

    #setter for: Lcom/htc/android/mail/ReadScreen;->mLoadAllDataDone:Z
    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/ReadScreen;->access$7102(Lcom/htc/android/mail/ReadScreen;Z)Z

    .line 4779
    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v16

    if-eqz v16, :cond_a

    .line 4781
    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v16

    #getter for: Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$5000(Lcom/htc/android/mail/ReadScreen;)F

    move-result v17

    const/high16 v18, 0x42c8

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/android/mail/HtcWebView;->setInitialScale(I)V

    .line 4782
    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/HtcWebView;->getScrollX()I

    move-result v16

    #setter for: Lcom/htc/android/mail/ReadScreen;->mRestoreScrollX:I
    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/ReadScreen;->access$7202(Lcom/htc/android/mail/ReadScreen;I)I

    .line 4783
    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/HtcWebView;->getScrollY()I

    move-result v16

    #setter for: Lcom/htc/android/mail/ReadScreen;->mRestoreScrollY:I
    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/ReadScreen;->access$7302(Lcom/htc/android/mail/ReadScreen;I)I

    .line 4786
    :cond_a
    #calls: Lcom/htc/android/mail/ReadScreen;->showMailBody()Ljava/lang/Thread;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$7400(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/Thread;

    .line 4787
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v16

    if-eqz v16, :cond_b

    const-string v16, "ReadScreen"

    const-string v17, "reloadAttachment>2"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4788
    :cond_b
    #calls: Lcom/htc/android/mail/ReadScreen;->reloadAttachment()V
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$4700(Lcom/htc/android/mail/ReadScreen;)V

    goto/16 :goto_0

    .line 4799
    .end local v9           #mMailNotFound:I
    :cond_c
    #calls: Lcom/htc/android/mail/ReadScreen;->showMailBody()Ljava/lang/Thread;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$7400(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/Thread;

    goto/16 :goto_1

    .line 4806
    .restart local v3       #attach:Lcom/htc/android/mail/Attachment;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mTokenId:I

    move/from16 v16, v0

    move/from16 v0, v16

    #calls: Lcom/htc/android/mail/ReadScreen;->updateAttachmentButton(ILcom/htc/android/mail/Attachment;I)V
    invoke-static {v15, v0, v3, v13}, Lcom/htc/android/mail/ReadScreen;->access$7700(Lcom/htc/android/mail/ReadScreen;ILcom/htc/android/mail/Attachment;I)V

    goto/16 :goto_0

    .line 4812
    .end local v3           #attach:Lcom/htc/android/mail/Attachment;
    :sswitch_2
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v16

    if-eqz v16, :cond_e

    const-string v16, "ReadScreen"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "finish fetchMultiAttachments_complete>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4813
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 4814
    .local v4, b:Landroid/os/Bundle;
    const-string v16, "Return"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 4815
    .local v12, ret:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v12, v0, :cond_10

    .line 4817
    #calls: Lcom/htc/android/mail/ReadScreen;->hideDownloadHtmlImageButton()V
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$6200(Lcom/htc/android/mail/ReadScreen;)V

    .line 4818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mLoadMailbodyThreadLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 4819
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mLoadMailbodyThread:Ljava/lang/Thread;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mLoadMailbodyThread:Ljava/lang/Thread;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->isAlive()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 4820
    #calls: Lcom/htc/android/mail/ReadScreen;->showMailBody()Ljava/lang/Thread;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$7400(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/Thread;

    .line 4822
    :cond_f
    monitor-exit v17

    goto/16 :goto_0

    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 4824
    :cond_10
    #calls: Lcom/htc/android/mail/ReadScreen;->stopDownloadHtmlImageBtnAnimation()V
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$7800(Lcom/htc/android/mail/ReadScreen;)V

    goto/16 :goto_0

    .line 4829
    .end local v4           #b:Landroid/os/Bundle;
    .end local v12           #ret:I
    :sswitch_3
    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v16

    if-eqz v16, :cond_11

    .line 4830
    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v16

    #getter for: Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$5000(Lcom/htc/android/mail/ReadScreen;)F

    move-result v17

    const/high16 v18, 0x42c8

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/android/mail/HtcWebView;->setInitialScale(I)V

    .line 4831
    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/HtcWebView;->getScrollX()I

    move-result v16

    #setter for: Lcom/htc/android/mail/ReadScreen;->mRestoreScrollX:I
    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/ReadScreen;->access$7202(Lcom/htc/android/mail/ReadScreen;I)I

    .line 4832
    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/HtcWebView;->getScrollY()I

    move-result v16

    #setter for: Lcom/htc/android/mail/ReadScreen;->mRestoreScrollY:I
    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/ReadScreen;->access$7302(Lcom/htc/android/mail/ReadScreen;I)I

    .line 4834
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mLoadMailbodyThreadLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 4835
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mLoadMailbodyThread:Ljava/lang/Thread;

    move-object/from16 v16, v0

    if-eqz v16, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mLoadMailbodyThread:Ljava/lang/Thread;

    move-object/from16 v16, v0

    if-eqz v16, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mLoadMailbodyThread:Ljava/lang/Thread;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->isAlive()Z

    move-result v16

    if-nez v16, :cond_13

    .line 4837
    :cond_12
    #calls: Lcom/htc/android/mail/ReadScreen;->showMailBody()Ljava/lang/Thread;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$7400(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/Thread;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mLoadMailbodyThread:Ljava/lang/Thread;

    .line 4839
    :cond_13
    monitor-exit v17

    goto/16 :goto_0

    :catchall_1
    move-exception v16

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v16

    .line 4842
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    .line 4843
    .local v14, status:Ljava/lang/Integer;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/htc/android/mail/ReadScreen;->_read:I

    goto/16 :goto_0

    .line 4848
    .end local v14           #status:Ljava/lang/Integer;
    :sswitch_5
    invoke-virtual {v15}, Lcom/htc/android/mail/ReadScreen;->finish()V

    goto/16 :goto_0

    .line 4853
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/View;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 4854
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/View;

    const v17, 0x7f09000f

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/QuickContactBadge;

    .line 4855
    .local v2, attBtn:Lcom/htc/widget/QuickContactBadge;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/View;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/android/mail/Attachment;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/htc/android/mail/Attachment;->attachmentIconBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 4856
    .local v5, bmpd:Landroid/graphics/drawable/BitmapDrawable;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 4857
    invoke-virtual {v2, v5}, Lcom/htc/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 4861
    .end local v2           #attBtn:Lcom/htc/widget/QuickContactBadge;
    .end local v5           #bmpd:Landroid/graphics/drawable/BitmapDrawable;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 4862
    .local v10, messageId:J
    iget-wide v0, v15, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    move-wide/from16 v16, v0

    cmp-long v16, v10, v16

    if-nez v16, :cond_0

    .line 4863
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 4864
    .local v8, done:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_14

    .line 4865
    #calls: Lcom/htc/android/mail/ReadScreen;->showMailBody()Ljava/lang/Thread;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$7400(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/Thread;

    .line 4866
    #calls: Lcom/htc/android/mail/ReadScreen;->setMailRead()V
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$7900(Lcom/htc/android/mail/ReadScreen;)V

    .line 4867
    #calls: Lcom/htc/android/mail/ReadScreen;->reloadAttachment()V
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$4700(Lcom/htc/android/mail/ReadScreen;)V

    .line 4880
    :goto_2
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/android/mail/ReadScreen;->removeDialog(I)V

    goto/16 :goto_0

    .line 4870
    :cond_14
    const/4 v7, 0x0

    .line 4871
    .local v7, del:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_15

    .line 4872
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<div align=\"center\" style=\"color: gray\">["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0b0206

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]</div>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4878
    .local v6, data:Ljava/lang/String;
    :goto_3
    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v16

    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 4875
    .end local v6           #data:Ljava/lang/String;
    :cond_15
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<div align=\"center\" style=\"color: gray\">["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0b0205

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]</div>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #data:Ljava/lang/String;
    goto :goto_3

    .line 4762
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0x10 -> :sswitch_4
        0x12 -> :sswitch_5
        0x13 -> :sswitch_5
        0x1b -> :sswitch_6
        0x27 -> :sswitch_7
    .end sparse-switch
.end method

.method public onAttachProgressChange(Lcom/htc/android/mail/Account;Landroid/os/Message;)V
    .locals 14
    .parameter "account"
    .parameter "msg"

    .prologue
    .line 4896
    iget-object v10, p0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/ReadScreen;

    .line 4897
    .local v9, target:Lcom/htc/android/mail/ReadScreen;
    if-nez v9, :cond_1

    .line 4950
    :cond_0
    :goto_0
    return-void

    .line 4899
    :cond_1
    invoke-virtual {v9}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4900
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "ReadScreen"

    const-string v11, "onAttachProgressChange(): ReadScreen is finishing"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4902
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 4903
    :cond_3
    const-string v10, "ReadScreen"

    const-string v11, "onAttachProgressChange(): account/msg is null"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4905
    :cond_4
    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccountId:J
    invoke-static {v9}, Lcom/htc/android/mail/ReadScreen;->access$5800(Lcom/htc/android/mail/ReadScreen;)J

    move-result-wide v10

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    .line 4906
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "ReadScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onAttachProgressChange(): accountid is not match: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccountId:J
    invoke-static {v9}, Lcom/htc/android/mail/ReadScreen;->access$5800(Lcom/htc/android/mail/ReadScreen;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4912
    :cond_5
    iget-object v10, v9, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 4913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 4914
    .local v4, bundle:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 4917
    const-string v10, "percentage"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 4919
    .local v7, percentage:I
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "ReadScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onAttachProgressChange: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4922
    :cond_6
    const/4 v5, 0x0

    .line 4925
    .local v5, fileReference:Ljava/lang/String;
    const-string v10, "filereference"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4927
    iget-object v10, v9, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 4928
    .local v3, attachNum:I
    const/4 v0, 0x0

    .line 4929
    .local v0, attBtn:Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    .line 4930
    .local v8, ref:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_0

    .line 4931
    iget-object v10, v9, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4932
    .local v1, attView:Landroid/view/View;
    if-nez v1, :cond_8

    .line 4933
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "ReadScreen"

    const-string v11, "onAttachProgressChange(): attView is null"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4930
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4937
    :cond_8
    const v10, 0x7f09000e

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #attBtn:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 4938
    .restart local v0       #attBtn:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/Attachment;

    .line 4940
    .local v2, attach:Lcom/htc/android/mail/Attachment;
    iget-object v8, v2, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    .line 4941
    if-eqz v2, :cond_7

    iget-object v10, v2, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 4942
    iget-object v10, v2, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 4943
    #calls: Lcom/htc/android/mail/ReadScreen;->updateAttachmentProgressDisplay(Lcom/htc/android/mail/Attachment;I)V
    invoke-static {v9, v2, v7}, Lcom/htc/android/mail/ReadScreen;->access$8000(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Attachment;I)V

    goto/16 :goto_0
.end method

.method public onDeleteMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5097
    .local p3, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/android/mail/ReadScreen$RequestHandler;->onMoveMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V

    .line 5098
    return-void
.end method

.method public onDownloadAttachComplete(Lcom/htc/android/mail/Account;Landroid/os/Message;)V
    .locals 13
    .parameter "account"
    .parameter "msg"

    .prologue
    .line 5017
    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/ReadScreen;

    .line 5018
    .local v8, target:Lcom/htc/android/mail/ReadScreen;
    if-nez v8, :cond_1

    .line 5067
    :cond_0
    :goto_0
    return-void

    .line 5020
    :cond_1
    invoke-virtual {v8}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 5021
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "ReadScreen"

    const-string v10, "ReadScreen is finishing"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5023
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 5024
    :cond_3
    const-string v9, "ReadScreen"

    const-string v10, "account/msg is null"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5026
    :cond_4
    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccountId:J
    invoke-static {v8}, Lcom/htc/android/mail/ReadScreen;->access$5800(Lcom/htc/android/mail/ReadScreen;)J

    move-result-wide v9

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 5027
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "accountid is not match: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccountId:J
    invoke-static {v8}, Lcom/htc/android/mail/ReadScreen;->access$5800(Lcom/htc/android/mail/ReadScreen;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5031
    :cond_5
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDownloadAttachComplete: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5032
    :cond_6
    iget-object v9, v8, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 5033
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 5034
    .local v4, bundle:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 5037
    const-string v9, "ret"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 5040
    .local v7, nRet:I
    const/4 v5, 0x0

    .line 5043
    .local v5, fileReference:Ljava/lang/String;
    const-string v9, "filereference"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5045
    iget-object v9, v8, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 5046
    .local v3, attachNum:I
    const/4 v0, 0x0

    .line 5048
    .local v0, attBtn:Landroid/view/View;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_0

    .line 5049
    iget-object v9, v8, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5050
    .local v1, attView:Landroid/view/View;
    const v9, 0x7f09000e

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5051
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/Attachment;

    .line 5053
    .local v2, attach:Lcom/htc/android/mail/Attachment;
    if-eqz v2, :cond_9

    iget-object v9, v2, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 5054
    iget-object v9, v2, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 5055
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update attachment> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5056
    :cond_7
    const/4 v9, 0x1

    if-eq v7, v9, :cond_8

    .line 5057
    const/4 v7, -0x1

    .line 5059
    :cond_8
    const/4 v9, -0x1

    #calls: Lcom/htc/android/mail/ReadScreen;->updateAttachmentProgressDisplay(Lcom/htc/android/mail/Attachment;I)V
    invoke-static {v8, v2, v9}, Lcom/htc/android/mail/ReadScreen;->access$8000(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Attachment;I)V

    .line 5060
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$3900()I

    move-result v9

    #calls: Lcom/htc/android/mail/ReadScreen;->updateAttachmentButton(ILcom/htc/android/mail/Attachment;I)V
    invoke-static {v8, v9, v2, v7}, Lcom/htc/android/mail/ReadScreen;->access$7700(Lcom/htc/android/mail/ReadScreen;ILcom/htc/android/mail/Attachment;I)V

    goto/16 :goto_0

    .line 5048
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public onDownloadAttachStart(Lcom/htc/android/mail/Account;Landroid/os/Message;)V
    .locals 13
    .parameter "account"
    .parameter "msg"

    .prologue
    .line 4953
    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/ReadScreen;

    .line 4954
    .local v8, target:Lcom/htc/android/mail/ReadScreen;
    if-nez v8, :cond_1

    .line 5004
    :cond_0
    :goto_0
    return-void

    .line 4956
    :cond_1
    invoke-virtual {v8}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4957
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "ReadScreen"

    const-string v10, "onDownloadAttachStart(): ReadScreen is finishing"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4959
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 4960
    :cond_3
    const-string v9, "ReadScreen"

    const-string v10, "onDownloadAttachStart(): account/msg is null"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4962
    :cond_4
    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccountId:J
    invoke-static {v8}, Lcom/htc/android/mail/ReadScreen;->access$5800(Lcom/htc/android/mail/ReadScreen;)J

    move-result-wide v9

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 4963
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDownloadAttachStart(): accountid is not match: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccountId:J
    invoke-static {v8}, Lcom/htc/android/mail/ReadScreen;->access$5800(Lcom/htc/android/mail/ReadScreen;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4967
    :cond_5
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDownloadAttachStart: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4969
    :cond_6
    iget-object v9, v8, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 4970
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 4971
    .local v4, bundle:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 4976
    const/4 v5, 0x0

    .line 4979
    .local v5, fileReference:Ljava/lang/String;
    const-string v9, "filereference"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4981
    iget-object v9, v8, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 4982
    .local v3, attachNum:I
    const/4 v0, 0x0

    .line 4983
    .local v0, attBtn:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    .line 4984
    .local v7, ref:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_0

    .line 4985
    iget-object v9, v8, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4986
    .local v1, attView:Landroid/view/View;
    if-nez v1, :cond_8

    .line 4987
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "ReadScreen"

    const-string v10, "onDownloadAttachStart(): attView is null"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4984
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4991
    :cond_8
    const v9, 0x7f09000e

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #attBtn:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 4992
    .restart local v0       #attBtn:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/Attachment;

    .line 4994
    .local v2, attach:Lcom/htc/android/mail/Attachment;
    iget-object v7, v2, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    .line 4995
    if-eqz v2, :cond_7

    iget-object v9, v2, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 4996
    iget-object v9, v2, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4997
    const/4 v9, 0x0

    #calls: Lcom/htc/android/mail/ReadScreen;->updateAttachmentProgressDisplay(Lcom/htc/android/mail/Attachment;I)V
    invoke-static {v8, v2, v9}, Lcom/htc/android/mail/ReadScreen;->access$8000(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Attachment;I)V

    goto/16 :goto_0
.end method

.method public onFetchMessageComplete(JI)V
    .locals 4
    .parameter "messageId"
    .parameter "done"

    .prologue
    .line 5008
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchDone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5009
    :cond_0
    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5010
    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5011
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 5012
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5013
    return-void
.end method

.method public onMoveMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "account"
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5081
    .local p3, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReadScreen;

    .line 5082
    .local v3, target:Lcom/htc/android/mail/ReadScreen;
    if-nez v3, :cond_1

    .line 5093
    :cond_0
    :goto_0
    return-void

    .line 5083
    :cond_1
    if-eqz p1, :cond_0

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5084
    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 5085
    :cond_2
    if-eqz p3, :cond_0

    .line 5086
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailMessage;

    .line 5087
    .local v1, mailMessage:Lcom/htc/android/mail/MailMessage;
    iget-wide v4, v1, Lcom/htc/android/mail/MailMessage;->id:J

    iget-wide v6, v3, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 5088
    const/16 v4, 0x12

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5089
    .local v2, message:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onSetReadStatusComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 6
    .parameter "account"
    .parameter "r"
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5071
    .local p3, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ReadScreen;

    .line 5072
    .local v1, target:Lcom/htc/android/mail/ReadScreen;
    if-nez v1, :cond_1

    .line 5077
    :cond_0
    :goto_0
    return-void

    .line 5073
    :cond_1
    if-eqz p1, :cond_0

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5074
    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 5075
    :cond_2
    const/16 v2, 0x10

    invoke-virtual {p0, v2, p4}, Lcom/htc/android/mail/ReadScreen$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5076
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setAttachmentIndicatorIcon(Landroid/view/View;)V
    .locals 2
    .parameter "BtnView"

    .prologue
    .line 4891
    const/16 v1, 0x1b

    invoke-virtual {p0, v1, p1}, Lcom/htc/android/mail/ReadScreen$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4892
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4893
    return-void
.end method
