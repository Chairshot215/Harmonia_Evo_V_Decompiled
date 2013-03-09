.class Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "headsetstatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/headsetstatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/headsetstatus;


# direct methods
.method private constructor <init>(Lcom/android/CSDFunctionG/headsetstatus;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/CSDFunctionG/headsetstatus;Lcom/android/CSDFunctionG/headsetstatus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;-><init>(Lcom/android/CSDFunctionG/headsetstatus;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v7, 0x5dc

    const v6, 0x7f060059

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 541
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 543
    .local v0, event:Landroid/view/KeyEvent;
    const-string v1, "hst status log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HST code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x55

    if-ne v1, v2, :cond_6

    .line 548
    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 550
    const-string v1, "hststatustest"

    const-string v2, "Headset btn is pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-boolean v1, Lcom/android/CSDFunctionG/headsetstatus;->Pickupflow:Z

    if-nez v1, :cond_2

    .line 553
    const-string v1, "hststatustest"

    const-string v2, "Headset btn is Pickupflow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    sput-boolean v5, Lcom/android/CSDFunctionG/headsetstatus;->Pickupflow:Z

    .line 555
    sget-object v1, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 556
    iget-object v1, p0, Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    #getter for: Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/CSDFunctionG/headsetstatus;->access$500(Lcom/android/CSDFunctionG/headsetstatus;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    #getter for: Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/CSDFunctionG/headsetstatus;->access$500(Lcom/android/CSDFunctionG/headsetstatus;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 558
    :cond_1
    sget-object v1, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 559
    sget-object v1, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 615
    :cond_3
    :goto_1
    return-void

    .line 564
    :cond_4
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 566
    const-string v1, "hststatustest"

    const-string v2, "Headset btn is unpressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    sget-boolean v1, Lcom/android/CSDFunctionG/headsetstatus;->Pickupflow:Z

    if-nez v1, :cond_2

    .line 569
    const-string v1, "hststatustest"

    const-string v2, "Headset btn is Pickupflow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sput-boolean v5, Lcom/android/CSDFunctionG/headsetstatus;->Pickupflow:Z

    .line 571
    sget-object v1, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 572
    iget-object v1, p0, Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    #getter for: Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/CSDFunctionG/headsetstatus;->access$500(Lcom/android/CSDFunctionG/headsetstatus;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 573
    iget-object v1, p0, Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    #getter for: Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/CSDFunctionG/headsetstatus;->access$500(Lcom/android/CSDFunctionG/headsetstatus;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 574
    :cond_5
    sget-object v1, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 575
    sget-object v1, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 581
    :cond_6
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x58

    if-ne v1, v2, :cond_9

    .line 583
    const-string v1, "hststatustest"

    const-string v2, "KEYCODE_MEDIA_PREVIOUS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_8

    .line 586
    const-string v1, "hststatustest"

    const-string v2, "Previous btn is pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;->abortBroadcast()V

    goto :goto_1

    .line 588
    :cond_8
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 590
    const-string v1, "hststatustest"

    const-string v2, "Previous btn is unpressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 598
    :cond_9
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x57

    if-ne v1, v2, :cond_3

    .line 600
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_b

    .line 602
    const-string v1, "hststatustest"

    const-string v2, "Next btn is pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;->abortBroadcast()V

    goto/16 :goto_1

    .line 606
    :cond_b
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_a

    .line 608
    const-string v1, "hststatustest"

    const-string v2, "Next btn is unpressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
