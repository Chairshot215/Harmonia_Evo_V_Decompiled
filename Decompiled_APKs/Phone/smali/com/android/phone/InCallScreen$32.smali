.class Lcom/android/phone/InCallScreen$32;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->getRetryHBPCDDialog(Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$number_HBPCD:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9638
    iput-object p1, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$32;->val$number_HBPCD:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 9640
    const/4 v0, 0x0

    .line 9641
    .local v0, bRetry:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 9667
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dismissHBPCDDialogIfNeeded()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$5600(Lcom/android/phone/InCallScreen;)V

    .line 9669
    if-nez v0, :cond_0

    .line 9672
    iget-object v2, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9676
    iget-object v2, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->finish()V

    .line 9680
    :cond_0
    return-void

    .line 9643
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dismissAllDialogs()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$5500(Lcom/android/phone/InCallScreen;)V

    .line 9644
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen$32;->val$number_HBPCD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9649
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/HtcNBPCDUtil;->setHBPCDRetryDialing(Z)V

    .line 9650
    iget-object v2, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3000(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xd2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 9651
    iget-object v2, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 9652
    const/4 v0, 0x1

    .line 9654
    goto :goto_0

    .line 9657
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    const-class v5, Lcom/android/phone/nbpcd/NBPCDSetting;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 9641
    :pswitch_data_0
    .packed-switch 0x7f0800f9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
