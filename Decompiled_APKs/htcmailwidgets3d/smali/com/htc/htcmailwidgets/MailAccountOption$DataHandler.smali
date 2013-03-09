.class Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;
.super Landroid/os/Handler;
.source "MailAccountOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailAccountOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailAccountOption;


# direct methods
.method public constructor <init>(Lcom/htc/htcmailwidgets/MailAccountOption;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    .line 404
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 405
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v10, -0x1

    .line 409
    const/4 v3, 0x0

    .line 410
    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v0, accountInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailUtils$Account;>;"
    move-object v4, p1

    .line 412
    .local v4, message:Landroid/os/Message;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 494
    :goto_0
    return-void

    .line 414
    :pswitch_0
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$600(Lcom/htc/htcmailwidgets/MailAccountOption;)Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v8

    #setter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v7, v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$502(Lcom/htc/htcmailwidgets/MailAccountOption;[Lcom/htc/htcmailwidgets/MailUtils$Account;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 415
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #calls: Lcom/htc/htcmailwidgets/MailAccountOption;->chooseOption()I
    invoke-static {v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$700(Lcom/htc/htcmailwidgets/MailAccountOption;)I

    goto :goto_0

    .line 419
    :pswitch_1
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$600(Lcom/htc/htcmailwidgets/MailAccountOption;)Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v8

    #setter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v7, v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$502(Lcom/htc/htcmailwidgets/MailAccountOption;[Lcom/htc/htcmailwidgets/MailUtils$Account;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 420
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 423
    new-instance v5, Lcom/htc/htcmailwidgets/MailUtils$Account;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailUtils$Account;-><init>()V

    .line 424
    .local v5, newaccount:Lcom/htc/htcmailwidgets/MailUtils$Account;
    const-wide/16 v7, -0x9

    iput-wide v7, v5, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    .line 425
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-virtual {v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    .line 426
    const-string v7, ""

    iput-object v7, v5, Lcom/htc/htcmailwidgets/MailUtils$Account;->email:Ljava/lang/String;

    .line 427
    iput v10, v5, Lcom/htc/htcmailwidgets/MailUtils$Account;->defaultfolderid:I

    .line 428
    iput v10, v5, Lcom/htc/htcmailwidgets/MailUtils$Account;->protocol:I

    .line 429
    iput v10, v5, Lcom/htc/htcmailwidgets/MailUtils$Account;->coloridx:I

    .line 430
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    const/4 v5, 0x0

    .line 433
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$500(Lcom/htc/htcmailwidgets/MailAccountOption;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$500(Lcom/htc/htcmailwidgets/MailAccountOption;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_1

    .line 434
    :cond_0
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    #setter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;
    invoke-static {v8, v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$202(Lcom/htc/htcmailwidgets/MailAccountOption;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 435
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 436
    const/4 v0, 0x0

    .line 437
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    new-instance v8, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$1;

    invoke-direct {v8, p0}, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$1;-><init>(Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;)V

    invoke-virtual {v7, v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 445
    :cond_1
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$500(Lcom/htc/htcmailwidgets/MailAccountOption;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v7

    array-length v7, v7

    if-le v7, v9, :cond_2

    .line 446
    new-instance v1, Lcom/htc/htcmailwidgets/MailUtils$Account;

    invoke-direct {v1}, Lcom/htc/htcmailwidgets/MailUtils$Account;-><init>()V

    .line 447
    .local v1, allaccount:Lcom/htc/htcmailwidgets/MailUtils$Account;
    const-wide v7, 0x7fffffffffffffffL

    iput-wide v7, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    .line 448
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-virtual {v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080013

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    .line 449
    const-string v7, ""

    iput-object v7, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->email:Ljava/lang/String;

    .line 450
    iput v9, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->defaultfolderid:I

    .line 451
    const/4 v7, 0x5

    iput v7, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->protocol:I

    .line 452
    iput v10, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->coloridx:I

    .line 453
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v1           #allaccount:Lcom/htc/htcmailwidgets/MailUtils$Account;
    :cond_2
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$500(Lcom/htc/htcmailwidgets/MailAccountOption;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v7

    array-length v6, v7

    .line 458
    .local v6, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_4

    .line 459
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    iget-object v9, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v9}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$500(Lcom/htc/htcmailwidgets/MailAccountOption;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v9

    aget-object v9, v9, v2

    #calls: Lcom/htc/htcmailwidgets/MailAccountOption;->isAccountExist(Lcom/htc/htcmailwidgets/MailUtils$Account;)Z
    invoke-static {v8, v9}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$1000(Lcom/htc/htcmailwidgets/MailAccountOption;Lcom/htc/htcmailwidgets/MailUtils$Account;)Z

    move-result v8

    #setter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mbHasNewAccount:Z
    invoke-static {v7, v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$902(Lcom/htc/htcmailwidgets/MailAccountOption;Z)Z

    .line 460
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mbHasNewAccount:Z
    invoke-static {v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$900(Lcom/htc/htcmailwidgets/MailAccountOption;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 461
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$500(Lcom/htc/htcmailwidgets/MailAccountOption;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v8

    aget-object v8, v8, v2

    #setter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mNewCreatedAccount:Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v7, v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$1102(Lcom/htc/htcmailwidgets/MailAccountOption;Lcom/htc/htcmailwidgets/MailUtils$Account;)Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 463
    :cond_3
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$500(Lcom/htc/htcmailwidgets/MailAccountOption;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 466
    :cond_4
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    #setter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;
    invoke-static {v8, v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$202(Lcom/htc/htcmailwidgets/MailAccountOption;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 467
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 468
    const/4 v0, 0x0

    .line 470
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    new-instance v8, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$2;

    invoke-direct {v8, p0}, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$2;-><init>(Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;)V

    invoke-virtual {v7, v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 482
    .end local v2           #i:I
    .end local v5           #newaccount:Lcom/htc/htcmailwidgets/MailUtils$Account;
    .end local v6           #size:I
    :pswitch_2
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mNewCreatedAccount:Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$1100(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 483
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$100(Lcom/htc/htcmailwidgets/MailAccountOption;)Landroid/content/Intent;

    move-result-object v3

    .line 484
    const-string v7, "ACCOUNT_ID"

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mNewCreatedAccount:Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$1100(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v8

    iget-wide v8, v8, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 485
    const-string v7, "ACCOUNT_NAME"

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mNewCreatedAccount:Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$1100(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string v7, "ACCOUNT_PROTOCOL"

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mNewCreatedAccount:Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$1100(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v8

    iget v8, v8, Lcom/htc/htcmailwidgets/MailUtils$Account;->protocol:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string v7, "ACCOUNT_DEFAULTFOLDER"

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mNewCreatedAccount:Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$1100(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v8

    iget v8, v8, Lcom/htc/htcmailwidgets/MailUtils$Account;->defaultfolderid:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-virtual {v7, v10, v3}, Lcom/htc/htcmailwidgets/MailAccountOption;->setResult(ILandroid/content/Intent;)V

    .line 491
    :goto_2
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-virtual {v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->finish()V

    goto/16 :goto_0

    .line 490
    :cond_5
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    const/4 v8, 0x0

    invoke-virtual {v7, v10, v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x5001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
