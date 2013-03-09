.class Lcom/android/htcdialer/Dialer$24;
.super Landroid/content/BroadcastReceiver;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 7590
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$24;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 7594
    const-string v3, "SIP_HEIGHT"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 7595
    .local v2, sipHeight:I
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$24;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v3}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0170

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 7596
    .local v1, keypadHeight:I
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$24;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v3}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0171

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 7600
    .local v0, fullHeight:I
    if-eq v2, v0, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-ne v3, v0, :cond_2

    .line 7601
    :cond_0
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$24;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;
    invoke-static {v3}, Lcom/android/htcdialer/Dialer;->access$900(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/DialerKeypad;

    move-result-object v3

    sget-object v4, Lcom/android/htcdialer/widget/DialerKeypad$Type;->HANDWRITING_FULL:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/widget/DialerKeypad;->toggleHandwriting(Lcom/android/htcdialer/widget/DialerKeypad$Type;)V

    .line 7607
    :cond_1
    :goto_0
    return-void

    .line 7602
    :cond_2
    if-eq v2, v1, :cond_3

    add-int/lit8 v3, v2, -0x1

    if-ne v3, v1, :cond_1

    .line 7604
    :cond_3
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$24;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;
    invoke-static {v3}, Lcom/android/htcdialer/Dialer;->access$900(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/DialerKeypad;

    move-result-object v3

    sget-object v4, Lcom/android/htcdialer/widget/DialerKeypad$Type;->HANDWRITING:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/widget/DialerKeypad;->toggleHandwriting(Lcom/android/htcdialer/widget/DialerKeypad$Type;)V

    .line 7605
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$24;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/htcdialer/Dialer;->access$1900(Lcom/android/htcdialer/Dialer;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x11

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
