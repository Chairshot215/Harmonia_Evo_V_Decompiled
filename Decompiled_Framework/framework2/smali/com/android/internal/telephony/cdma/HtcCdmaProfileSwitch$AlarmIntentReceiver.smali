.class Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$AlarmIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaProfileSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$AlarmIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;

    const-string v1, "timerId"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;

    #getter for: Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->access$300(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->timeoutWaitingPerioid(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->access$400(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;IZ)V

    :cond_0
    return-void
.end method
