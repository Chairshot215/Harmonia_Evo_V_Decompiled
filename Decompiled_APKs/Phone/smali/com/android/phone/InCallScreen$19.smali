.class Lcom/android/phone/InCallScreen$19;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->getEndCallHandlDialog(JLjava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7015
    iput-object p1, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$19;->val$number:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 7017
    const/4 v0, 0x0

    .line 7018
    .local v0, actionIntent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 7035
    :goto_0
    if-eqz v0, :cond_0

    .line 7036
    iget-object v1, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 7039
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mDisplayingEndCallHandler:Z
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$3902(Lcom/android/phone/InCallScreen;Z)Z

    .line 7041
    iget-object v1, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$4000(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7042
    iget-object v1, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$3000(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x322

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7043
    iget-object v1, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$4000(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 7044
    iget-object v1, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$4002(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 7047
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7049
    iget-object v1, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->finish()V

    .line 7051
    :cond_2
    return-void

    .line 7020
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen$19;->val$number:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/provider/ContactsContract$Intents;->createInsertNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 7023
    goto :goto_0

    .line 7025
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen$19;->val$number:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/provider/ContactsContract$Intents;->createUpdateNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 7028
    goto :goto_0

    .line 7018
    nop

    :pswitch_data_0
    .packed-switch 0x7f0800cf
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
