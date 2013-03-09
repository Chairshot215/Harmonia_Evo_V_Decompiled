.class Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$MyHandler;
.super Landroid/os/Handler;
.source "HtcSignalStrengthPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$MyHandler;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$MyHandler;-><init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 73
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

    .line 74
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 83
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$MyHandler;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->updateSignalStrength()V

    goto :goto_0

    .line 88
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$MyHandler;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->access$100(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 89
    .local v0, serviceState:Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$MyHandler;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    #calls: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v1, v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->access$200(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch
.end method
