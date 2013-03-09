.class Lcom/android/phone/OtaCompleteRebootActivity$2;
.super Landroid/os/Handler;
.source "OtaCompleteRebootActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaCompleteRebootActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OtaCompleteRebootActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/OtaCompleteRebootActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/OtaCompleteRebootActivity$2;->this$0:Lcom/android/phone/OtaCompleteRebootActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 133
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/phone/OtaCompleteRebootActivity$2;->this$0:Lcom/android/phone/OtaCompleteRebootActivity;

    #getter for: Lcom/android/phone/OtaCompleteRebootActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/OtaCompleteRebootActivity;->access$100(Lcom/android/phone/OtaCompleteRebootActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 135
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/phone/OtaCompleteRebootActivity$2;->this$0:Lcom/android/phone/OtaCompleteRebootActivity;

    const/4 v2, 0x1

    #calls: Lcom/android/phone/OtaCompleteRebootActivity;->disableKeyguard(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/OtaCompleteRebootActivity;->access$200(Lcom/android/phone/OtaCompleteRebootActivity;Z)V

    .line 137
    iget-object v1, p0, Lcom/android/phone/OtaCompleteRebootActivity$2;->this$0:Lcom/android/phone/OtaCompleteRebootActivity;

    invoke-virtual {v1}, Lcom/android/phone/OtaCompleteRebootActivity;->show()V

    .line 143
    .end local v0           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local v0       #state:Lcom/android/internal/telephony/Phone$State;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaCompleteRebootActivity$2;->this$0:Lcom/android/phone/OtaCompleteRebootActivity;

    invoke-virtual {v1}, Lcom/android/phone/OtaCompleteRebootActivity;->hide()V

    .line 140
    iget-object v1, p0, Lcom/android/phone/OtaCompleteRebootActivity$2;->this$0:Lcom/android/phone/OtaCompleteRebootActivity;

    const/4 v2, 0x0

    #calls: Lcom/android/phone/OtaCompleteRebootActivity;->disableKeyguard(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/OtaCompleteRebootActivity;->access$200(Lcom/android/phone/OtaCompleteRebootActivity;Z)V

    goto :goto_0
.end method
