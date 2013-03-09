.class final Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;
.super Landroid/os/Handler;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3165
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 3166
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3167
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 3173
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 3190
    :goto_0
    :pswitch_0
    return-void

    .line 3176
    :pswitch_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SmsManager;->getSMSC()Ljava/lang/String;

    move-result-object v1

    .line 3178
    .local v1, smsc:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;
    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3179
    .local v0, response_msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3184
    .end local v0           #response_msg:Landroid/os/Message;
    .end local v1           #smsc:Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/telephony/SmsManager;->setSMSC(Ljava/lang/String;)V

    .line 3186
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$ServiceHandler;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;
    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3187
    .restart local v0       #response_msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
