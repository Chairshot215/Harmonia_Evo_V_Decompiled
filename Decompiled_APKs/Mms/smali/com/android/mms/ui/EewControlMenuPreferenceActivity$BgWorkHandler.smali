.class final Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;
.super Landroid/os/Handler;
.source "EewControlMenuPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EewControlMenuPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BgWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EewControlMenuPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/EewControlMenuPreferenceActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->this$0:Lcom/android/mms/ui/EewControlMenuPreferenceActivity;

    .line 124
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 125
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 130
    const-string v3, "EewControlMenuPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handling incoming message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 133
    .local v1, smsManager:Landroid/telephony/SmsManager;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getTestBCSMS()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->access$002([I)[I

    .line 136
    iget-object v3, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->this$0:Lcom/android/mms/ui/EewControlMenuPreferenceActivity;

    new-instance v4, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$1;-><init>(Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 148
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 149
    .local v0, kddiTestData:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 150
    .local v2, vendorTestData:I
    invoke-virtual {v1, v0, v2}, Landroid/telephony/SmsManager;->setTestBCSMS(II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->this$0:Lcom/android/mms/ui/EewControlMenuPreferenceActivity;

    new-instance v4, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$2;-><init>(Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
