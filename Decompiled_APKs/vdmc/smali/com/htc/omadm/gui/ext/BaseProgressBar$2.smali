.class Lcom/htc/omadm/gui/ext/BaseProgressBar$2;
.super Landroid/telephony/PhoneStateListener;
.source "BaseProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/gui/ext/BaseProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;


# direct methods
.method constructor <init>(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$2;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x93

    const/16 v2, 0x91

    .line 78
    packed-switch p1, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 108
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$2;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    iget-boolean v0, v0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->DBG:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$2;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    #getter for: Lcom/htc/omadm/gui/ext/BaseProgressBar;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->access$000(Lcom/htc/omadm/gui/ext/BaseProgressBar;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CALL_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v2, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v3, :cond_0

    .line 84
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/omadm/prop/PropertyState;->UI_PROGRESS_BAR_ENABLE:Z

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$2;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    iget-boolean v0, v0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->DBG:Z

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$2;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    #getter for: Lcom/htc/omadm/gui/ext/BaseProgressBar;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->access$000(Lcom/htc/omadm/gui/ext/BaseProgressBar;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_3
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v2, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v3, :cond_0

    .line 92
    :cond_4
    sput-boolean v4, Lcom/htc/omadm/prop/PropertyState;->UI_PROGRESS_BAR_ENABLE:Z

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$2;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    iget-boolean v0, v0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->DBG:Z

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$2;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    #getter for: Lcom/htc/omadm/gui/ext/BaseProgressBar;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->access$000(Lcom/htc/omadm/gui/ext/BaseProgressBar;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CALL_STATE_RINGING"

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_5
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v2, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v3, :cond_0

    .line 100
    :cond_6
    sput-boolean v4, Lcom/htc/omadm/prop/PropertyState;->UI_PROGRESS_BAR_ENABLE:Z

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
