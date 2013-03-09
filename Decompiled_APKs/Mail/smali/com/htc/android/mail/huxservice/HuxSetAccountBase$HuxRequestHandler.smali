.class public Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;
.super Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;
.source "HuxSetAccountBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HuxRequestHandler"
.end annotation


# instance fields
.field protected final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/huxservice/HuxSetAccountBase;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "target"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    .line 394
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;-><init>()V

    .line 395
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    .line 396
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "message"

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/16 v9, 0x64

    .line 399
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HuxSetAccountBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_0
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    .line 402
    .local v3, target:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 403
    :cond_1
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "HuxSetAccountBase"

    const-string v7, "target is null"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_2
    :goto_0
    return-void

    .line 407
    :cond_3
    invoke-super {p0, p1}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->handleMessage(Landroid/os/Message;)V

    .line 409
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 411
    :pswitch_0
    iget-boolean v6, p0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->mIsPinReturned:Z

    if-nez v6, :cond_5

    .line 412
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "HuxSetAccountBase"

    const-string v7, "SMS result properly received"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 414
    .local v2, pin:Ljava/lang/String;
    iput-boolean v10, p0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->mIsPinReturned:Z

    .line 415
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const-string v7, ""

    iget-object v8, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v8, v8, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetPinAction:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->doNextAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .end local v2           #pin:Ljava/lang/String;
    :cond_5
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "HuxSetAccountBase"

    const-string v7, "SMS result not properly received"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :pswitch_1
    iget-boolean v6, p0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->mIsPinReturned:Z

    if-nez v6, :cond_2

    .line 422
    iput-boolean v10, p0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->mIsPinReturned:Z

    .line 423
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v6, v6, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/4 v7, 0x0

    invoke-virtual {v6, v12, v7}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    goto :goto_0

    .line 428
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 429
    .local v1, key:I
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    .local v5, val:Ljava/lang/Object;
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "HuxSetAccountBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RESULT_NOTIFY:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_6
    const/16 v6, 0xf

    if-ne v1, v6, :cond_7

    .line 434
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v6, v6, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const-class v7, Lcom/htc/android/mail/ProviderListScreen;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "CallingActivity"

    iget-object v7, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget v7, v7, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    const-string v6, "VerifyDeviceInfo"

    iget-object v7, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v7, v7, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 437
    const-string v6, "huxAuthReady"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    const/high16 v6, 0x200

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 439
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v6, v0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->startActivity(Landroid/content/Intent;)V

    .line 440
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v6}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->finish()V

    goto/16 :goto_0

    .line 441
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    const/16 v6, 0x10

    if-ne v1, v6, :cond_9

    .line 442
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "HuxSetAccountBase"

    const-string v7, "Sucessfully saved ExchangeSettings to HUX Server"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v7, v7, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mExchangeAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v8, 0x7f0b033c

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, text:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v6, v6, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 445
    .end local v4           #text:Ljava/lang/String;
    :cond_9
    const/16 v6, 0x12

    if-ne v1, v6, :cond_b

    .line 446
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_a

    const-string v6, "HuxSetAccountBase"

    const-string v7, "Sucessfully restore ExchangeSettings to device"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exchange account settings for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v7, v7, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProfileInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;

    iget-object v7, v7, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-object v7, v7, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeEmail:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " restored."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 448
    .restart local v4       #text:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v6, v6, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 449
    .end local v4           #text:Ljava/lang/String;
    :cond_b
    if-ne v1, v12, :cond_c

    .line 450
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v6, v9}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->removeDialog(I)V

    .line 451
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/16 v7, 0x65

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->showDialog(I)V

    goto/16 :goto_0

    .line 452
    :cond_c
    const/16 v6, 0x14

    if-ne v1, v6, :cond_d

    .line 453
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v6, v9}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->removeDialog(I)V

    .line 454
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/16 v7, 0x69

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->showDialog(I)V

    goto/16 :goto_0

    .line 455
    :cond_d
    const/16 v6, 0x15

    if-ne v1, v6, :cond_e

    .line 456
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v6, v9}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->removeDialog(I)V

    .line 457
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/16 v7, 0x6e

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->showDialog(I)V

    goto/16 :goto_0

    .line 458
    :cond_e
    const/16 v6, 0x11

    if-ne v1, v6, :cond_2

    .line 459
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v6, v9}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->removeDialog(I)V

    .line 460
    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/16 v7, 0x6a

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->showDialog(I)V

    goto/16 :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
