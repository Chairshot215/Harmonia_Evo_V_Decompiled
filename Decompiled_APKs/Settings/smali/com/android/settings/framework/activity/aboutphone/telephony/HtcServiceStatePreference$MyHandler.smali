.class Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$MyHandler;
.super Landroid/os/Handler;
.source "HtcServiceStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$MyHandler;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$MyHandler;-><init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 56
    const-string v1, "####"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$MyHandler;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->access$100(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 60
    .local v0, serviceState:Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$MyHandler;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    #calls: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v1, v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->access$200(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
