.class Lcom/htc/android/mail/ComposeActivity$54;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->doSendMail()V
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
    .line 7544
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 7546
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v8

    if-ne v8, v13, :cond_2

    .line 7547
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->replyWithText()I

    move-result v8

    if-nez v8, :cond_1

    .line 7548
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Exchg_smartCommand:I
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$8000(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v8

    if-ne v8, v11, :cond_1

    .line 7549
    sget-boolean v8, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ComposeActivity"

    const-string v9, "reply without original text"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7550
    :cond_0
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->Exchg_smartCommand:I
    invoke-static {v8, v12}, Lcom/htc/android/mail/ComposeActivity;->access$8002(Lcom/htc/android/mail/ComposeActivity;I)I

    .line 7551
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mbSendMail_instead_Forward:Z
    invoke-static {v8, v11}, Lcom/htc/android/mail/ComposeActivity;->access$8102(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 7555
    :cond_1
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mbMeetingView:Z
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$8200(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 7556
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->processMeetingData()V
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$8300(Lcom/htc/android/mail/ComposeActivity;)V

    .line 7560
    :cond_2
    const-string v0, ""

    .line 7561
    .local v0, addrString:Ljava/lang/String;
    const-string v2, ""

    .line 7562
    .local v2, addrString_cc:Ljava/lang/String;
    const-string v1, ""

    .line 7564
    .local v1, addrString_bcc:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v9, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->addrList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/htc/android/mail/ComposeActivity;->access$8400(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v9

    #calls: Lcom/htc/android/mail/ComposeActivity;->getAddrListString(Ljava/util/List;ZZ)Ljava/lang/String;
    invoke-static {v8, v9, v11, v12}, Lcom/htc/android/mail/ComposeActivity;->access$8500(Lcom/htc/android/mail/ComposeActivity;Ljava/util/List;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 7565
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v9, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->addrList_cc:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/htc/android/mail/ComposeActivity;->access$8600(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v9

    #calls: Lcom/htc/android/mail/ComposeActivity;->getAddrListString(Ljava/util/List;ZZ)Ljava/lang/String;
    invoke-static {v8, v9, v11, v12}, Lcom/htc/android/mail/ComposeActivity;->access$8500(Lcom/htc/android/mail/ComposeActivity;Ljava/util/List;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 7566
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v9, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->addrList_bcc:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/htc/android/mail/ComposeActivity;->access$8700(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v9

    #calls: Lcom/htc/android/mail/ComposeActivity;->getAddrListString(Ljava/util/List;ZZ)Ljava/lang/String;
    invoke-static {v8, v9, v11, v12}, Lcom/htc/android/mail/ComposeActivity;->access$8500(Lcom/htc/android/mail/ComposeActivity;Ljava/util/List;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 7568
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "ComposeActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "to>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7569
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "ComposeActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cc>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7570
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "ComposeActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bcc>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7572
    :cond_5
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->saveMail(I)J
    invoke-static {v8, v14}, Lcom/htc/android/mail/ComposeActivity;->access$3000(Lcom/htc/android/mail/ComposeActivity;I)J

    move-result-wide v5

    .line 7573
    .local v5, messageId:J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gez v8, :cond_7

    .line 7574
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mIsSendAction:Z
    invoke-static {v8, v12}, Lcom/htc/android/mail/ComposeActivity;->access$8802(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 7623
    :cond_6
    :goto_0
    return-void

    .line 7578
    :cond_7
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    long-to-int v9, v5

    #calls: Lcom/htc/android/mail/ComposeActivity;->setMailActFlag(I)V
    invoke-static {v8, v9}, Lcom/htc/android/mail/ComposeActivity;->access$8900(Lcom/htc/android/mail/ComposeActivity;I)V

    .line 7580
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->myContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$1200(Lcom/htc/android/mail/ComposeActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 7581
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 7582
    .local v7, msg:Landroid/os/Message;
    iput v11, v7, Landroid/os/Message;->what:I

    .line 7583
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const v9, 0x7f0b01e0

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ComposeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7584
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$7500(Lcom/htc/android/mail/ComposeActivity;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7586
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-static {v8}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v4

    .line 7588
    .local v4, mRequestController:Lcom/htc/android/mail/AbsRequestController;
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v8

    if-ne v8, v13, :cond_b

    .line 7589
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Exchg_smartCommand:I
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$8000(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v8

    if-ne v8, v11, :cond_c

    .line 7590
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const-string v9, "reply"

    #setter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/htc/android/mail/ComposeActivity;->access$5102(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 7595
    :cond_8
    :goto_1
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v3

    .line 7596
    .local v3, command:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "forward"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "reply"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "replyall"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_9
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mbSendMail_instead_Forward:Z
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$8100(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v8

    if-ne v8, v11, :cond_b

    .line 7600
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "ComposeActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Change command from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to compose"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7601
    :cond_a
    const-string v8, "compose"

    .line 7605
    .end local v3           #command:Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v8

    sget v9, Lcom/htc/android/mail/ComposeActivity;->RETRY_COUNT:I

    invoke-virtual {v4, v8, v5, v6, v9}, Lcom/htc/android/mail/RequestController;->sendMail(Lcom/htc/android/mail/Account;JI)V

    .line 7614
    .end local v4           #mRequestController:Lcom/htc/android/mail/AbsRequestController;
    :goto_2
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v8

    if-ne v8, v13, :cond_6

    .line 7615
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Exchg_smartCommand:I
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$8000(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_0

    .line 7620
    :pswitch_0
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->deleteMeetingMail()V
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$9000(Lcom/htc/android/mail/ComposeActivity;)V

    goto/16 :goto_0

    .line 7591
    .restart local v4       #mRequestController:Lcom/htc/android/mail/AbsRequestController;
    :cond_c
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Exchg_smartCommand:I
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$8000(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v8

    if-ne v8, v14, :cond_8

    .line 7592
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const-string v9, "forward"

    #setter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/htc/android/mail/ComposeActivity;->access$5102(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 7607
    .end local v4           #mRequestController:Lcom/htc/android/mail/AbsRequestController;
    .end local v7           #msg:Landroid/os/Message;
    :cond_d
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 7608
    .restart local v7       #msg:Landroid/os/Message;
    iput v11, v7, Landroid/os/Message;->what:I

    .line 7609
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const v9, 0x7f0b01e1

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ComposeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7610
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$54;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/android/mail/ComposeActivity;->access$7500(Lcom/htc/android/mail/ComposeActivity;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 7615
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
