.class Lcom/android/phone/HtcOTASPDialogActivity$1;
.super Landroid/os/Handler;
.source "HtcOTASPDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcOTASPDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcOTASPDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcOTASPDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/16 v12, 0x13

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 93
    const-string v5, "OTASP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phone state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 103
    :sswitch_0
    sget-object v5, Lcom/android/phone/HtcOTASPDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 104
    .local v3, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v5, Lcom/android/phone/HtcOTASPDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 105
    .local v2, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v5, :cond_1

    .line 106
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    #setter for: Lcom/android/phone/HtcOTASPDialogActivity;->flagConnected:Z
    invoke-static {v5, v11}, Lcom/android/phone/HtcOTASPDialogActivity;->access$002(Lcom/android/phone/HtcOTASPDialogActivity;Z)Z

    .line 108
    :cond_1
    const-string v5, "OTASP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PHONE_STATE_CHANGED, phoneState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", callState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v3           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 112
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    .line 113
    .local v0, OtaStatus:[I
    aget v4, v0, v10

    .line 114
    .local v4, value:I
    const-string v5, "OTASP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ota in HtcOTASPDialogActivity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    #getter for: Lcom/android/phone/HtcOTASPDialogActivity;->flagFailed:Z
    invoke-static {v5}, Lcom/android/phone/HtcOTASPDialogActivity;->access$100(Lcom/android/phone/HtcOTASPDialogActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v4, v12, :cond_2

    .line 116
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    #setter for: Lcom/android/phone/HtcOTASPDialogActivity;->flagFailed:Z
    invoke-static {v5, v10}, Lcom/android/phone/HtcOTASPDialogActivity;->access$102(Lcom/android/phone/HtcOTASPDialogActivity;Z)Z

    .line 117
    const-string v5, "OTASP"

    const-string v6, "set otaResult Phone.CDMA_OTA_PROVISION_STATUS_PROGRAM_UNSUCCESSFUL"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    iget-object v5, v5, Lcom/android/phone/HtcOTASPDialogActivity;->intentResult:Landroid/content/Intent;

    const-string v6, "OTAResult"

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    iget-object v6, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    iget-object v6, v6, Lcom/android/phone/HtcOTASPDialogActivity;->intentResult:Landroid/content/Intent;

    invoke-virtual {v5, v9, v6}, Lcom/android/phone/HtcOTASPDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 121
    const-string v5, "OTASP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "intentResult.getIntExtra(\"OTAResult\", -1):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    iget-object v7, v7, Lcom/android/phone/HtcOTASPDialogActivity;->intentResult:Landroid/content/Intent;

    const-string v8, "OTAResult"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    invoke-virtual {v5}, Lcom/android/phone/HtcOTASPDialogActivity;->finish()V

    .line 124
    :cond_2
    const/16 v5, 0x10

    if-ne v4, v5, :cond_3

    .line 125
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    #setter for: Lcom/android/phone/HtcOTASPDialogActivity;->flagFailed:Z
    invoke-static {v5, v11}, Lcom/android/phone/HtcOTASPDialogActivity;->access$102(Lcom/android/phone/HtcOTASPDialogActivity;Z)Z

    .line 127
    :cond_3
    const/16 v5, 0xf

    if-eq v4, v5, :cond_4

    if-ne v4, v12, :cond_0

    .line 129
    :cond_4
    sparse-switch v4, :sswitch_data_1

    .line 137
    :goto_1
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    #setter for: Lcom/android/phone/HtcOTASPDialogActivity;->flagFailed:Z
    invoke-static {v5, v10}, Lcom/android/phone/HtcOTASPDialogActivity;->access$102(Lcom/android/phone/HtcOTASPDialogActivity;Z)Z

    .line 138
    const-string v5, "OTASP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set otaResult "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    #getter for: Lcom/android/phone/HtcOTASPDialogActivity;->otaResult:I
    invoke-static {v7}, Lcom/android/phone/HtcOTASPDialogActivity;->access$200(Lcom/android/phone/HtcOTASPDialogActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    iget-object v5, v5, Lcom/android/phone/HtcOTASPDialogActivity;->intentResult:Landroid/content/Intent;

    const-string v6, "OTAResult"

    iget-object v7, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    #getter for: Lcom/android/phone/HtcOTASPDialogActivity;->otaResult:I
    invoke-static {v7}, Lcom/android/phone/HtcOTASPDialogActivity;->access$200(Lcom/android/phone/HtcOTASPDialogActivity;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    iget-object v6, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    iget-object v6, v6, Lcom/android/phone/HtcOTASPDialogActivity;->intentResult:Landroid/content/Intent;

    invoke-virtual {v5, v9, v6}, Lcom/android/phone/HtcOTASPDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 141
    const-string v5, "OTASP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "intentResult.getIntExtra(\"OTAResult\", -1):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    iget-object v7, v7, Lcom/android/phone/HtcOTASPDialogActivity;->intentResult:Landroid/content/Intent;

    const-string v8, "OTAResult"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    invoke-virtual {v5}, Lcom/android/phone/HtcOTASPDialogActivity;->finish()V

    goto/16 :goto_0

    .line 131
    :sswitch_2
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    const/16 v6, 0x9

    #setter for: Lcom/android/phone/HtcOTASPDialogActivity;->otaResult:I
    invoke-static {v5, v6}, Lcom/android/phone/HtcOTASPDialogActivity;->access$202(Lcom/android/phone/HtcOTASPDialogActivity;I)I

    goto :goto_1

    .line 134
    :sswitch_3
    iget-object v5, p0, Lcom/android/phone/HtcOTASPDialogActivity$1;->this$0:Lcom/android/phone/HtcOTASPDialogActivity;

    const/16 v6, 0x1a

    #setter for: Lcom/android/phone/HtcOTASPDialogActivity;->otaResult:I
    invoke-static {v5, v6}, Lcom/android/phone/HtcOTASPDialogActivity;->access$202(Lcom/android/phone/HtcOTASPDialogActivity;I)I

    goto :goto_1

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x33 -> :sswitch_1
    .end sparse-switch

    .line 129
    :sswitch_data_1
    .sparse-switch
        0xf -> :sswitch_2
        0x13 -> :sswitch_3
    .end sparse-switch
.end method
