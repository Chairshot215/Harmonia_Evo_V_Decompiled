.class public Lcom/htc/omadm/rule/ConnMo;
.super Ljava/lang/Object;
.source "ConnMo.java"


# static fields
.field private static final KEY_CONN_VIA_WIFI:Ljava/lang/String; = "conn-via-wifi"

.field private static final LOG_TAG:Ljava/lang/String; = "ConnMo"

.field private static final RuleName:Ljava/lang/String; = "ConnMo"

.field private static final URI_SMSEVDOENABLE:Ljava/lang/String; = "SEEnable"

.field private static final URI_SMSEVDOOPDISABLE:Ljava/lang/String; = "SEOPDisable"

.field private static final URI_SMSEVDOOPENABLE:Ljava/lang/String; = "SEOPEnable"

.field private static final URI_SMSEVDOPCSCF:Ljava/lang/String; = "SEPCSCF"

.field private static final URI_SMSEVDOPPPTIMER:Ljava/lang/String; = "SEPPPTimer"

.field private static final URI_SMSEVDOSIPTIMER:Ljava/lang/String; = "SESIPTimer"

.field private static mInstance:Lcom/htc/omadm/rule/ConnMo;


# instance fields
.field private EventHandler:Landroid/os/Handler;

.field private Once:Z

.field private mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

.field private mConnPolicy:Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

.field private mContext:Landroid/content/Context;

.field mIsConnectionViaWifi:Z

.field private mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

.field mTemporaryCloseWifi:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/omadm/rule/ConnMo;->EventHandler:Landroid/os/Handler;

    .line 46
    iput-object v1, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    .line 47
    iput-object v1, p0, Lcom/htc/omadm/rule/ConnMo;->mConnPolicy:Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    .line 50
    iput-boolean v2, p0, Lcom/htc/omadm/rule/ConnMo;->mIsConnectionViaWifi:Z

    .line 51
    iput-boolean v2, p0, Lcom/htc/omadm/rule/ConnMo;->mTemporaryCloseWifi:Z

    .line 64
    iput-object p1, p0, Lcom/htc/omadm/rule/ConnMo;->mContext:Landroid/content/Context;

    .line 65
    iput-boolean v3, p0, Lcom/htc/omadm/rule/ConnMo;->Once:Z

    .line 66
    invoke-static {}, Lcom/htc/omadm/libdo/system/PhoneInfo;->getSingleton()Lcom/htc/omadm/libdo/system/PhoneInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/rule/ConnMo;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    .line 68
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 70
    :cond_0
    iput-boolean v3, p0, Lcom/htc/omadm/rule/ConnMo;->mIsConnectionViaWifi:Z

    .line 73
    :cond_1
    const-string v0, "conn-via-wifi"

    const-string v1, "None"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMConfig;->GetConfString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    const-string v0, "conn-via-wifi"

    const-string v1, "None"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMConfig;->GetConfString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iput-boolean v3, p0, Lcom/htc/omadm/rule/ConnMo;->mIsConnectionViaWifi:Z

    .line 83
    :cond_2
    :goto_0
    invoke-static {}, Lcom/htc/omadm/libdo/connection/ConnManager;->getSingleton()Lcom/htc/omadm/libdo/connection/ConnManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    .line 86
    invoke-static {}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->getSingleton()Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/rule/ConnMo;->mConnPolicy:Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    .line 87
    const-string v0, "ConnMo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsConnectionViaWifi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/omadm/rule/ConnMo;->mIsConnectionViaWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 77
    :cond_3
    const-string v0, "conn-via-wifi"

    const-string v1, "None"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMConfig;->GetConfString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iput-boolean v2, p0, Lcom/htc/omadm/rule/ConnMo;->mIsConnectionViaWifi:Z

    goto :goto_0
.end method

.method private DefaultCheckNotificationHandleCondition()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 101
    sget-boolean v1, Lcom/htc/omadm/prop/PropertyFeature;->IS_SPRINT_PROJECT:Z

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/connection/ConnManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/connection/ConnManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 113
    :cond_1
    :goto_0
    return v0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/connection/ConnManager;->getPhoneState()I

    move-result v1

    if-nez v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/connection/ConnManager;->getDataState()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/connection/ConnManager;->getDormancyState()I

    move-result v0

    goto :goto_0

    .line 113
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    new-instance v0, Lcom/htc/omadm/rule/ConnMo;

    invoke-direct {v0, p0}, Lcom/htc/omadm/rule/ConnMo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/rule/ConnMo;->mInstance:Lcom/htc/omadm/rule/ConnMo;

    .line 61
    return-void
.end method

.method public static getSingleton()Lcom/htc/omadm/rule/ConnMo;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/htc/omadm/rule/ConnMo;->mInstance:Lcom/htc/omadm/rule/ConnMo;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/htc/omadm/rule/ConnMo;

    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/omadm/rule/ConnMo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/rule/ConnMo;->mInstance:Lcom/htc/omadm/rule/ConnMo;

    .line 57
    :cond_0
    sget-object v0, Lcom/htc/omadm/rule/ConnMo;->mInstance:Lcom/htc/omadm/rule/ConnMo;

    return-object v0
.end method


# virtual methods
.method public CheckDataConnection()I
    .locals 4

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, result:I
    iget-object v1, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/connection/ConnManager;->CheckDataConnection()I

    move-result v0

    .line 159
    const-string v1, "ConnMo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckDataConnection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v0
.end method

.method public CheckNetworkCondition()Z
    .locals 4

    .prologue
    .line 118
    iget-object v1, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/connection/ConnManager;->CheckNetworkCondition()Z

    move-result v0

    .line 119
    .local v0, result:Z
    const-string v1, "ConnMo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTC_CmCheckNetworkCondition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v0
.end method

.method public CheckNotificationHandleCondition()I
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/omadm/rule/ConnMo;->DefaultCheckNotificationHandleCondition()I

    move-result v0

    return v0
.end method

.method public CloseDataConnection()Z
    .locals 2

    .prologue
    .line 151
    const-string v0, "ConnMo"

    const-string v1, "CloseDataConnection"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CloseDataConnection"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/connection/ConnManager;->CloseConnection()Z

    move-result v0

    return v0
.end method

.method public EnableToUninterruptConnection()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/connection/ConnManager;->EnableToUninterruptConnection()V

    .line 184
    return-void
.end method

.method public EnsureRouteToHost(Ljava/lang/String;)Z
    .locals 4
    .parameter "host"

    .prologue
    .line 164
    const-string v1, "ConnMo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EnsureRouteToHost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x1

    .line 166
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v1, p1}, Lcom/htc/omadm/libdo/connection/ConnManager;->EnsureRouteToHost(Ljava/lang/String;)Z

    move-result v0

    .line 168
    return v0
.end method

.method public GetAcquiredNetwork()I
    .locals 4

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, result:I
    iget-object v1, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/connection/ConnManager;->GetAcquiredNetwork()I

    move-result v0

    .line 174
    const-string v1, "ConnMo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTC_CmGetAcquiredNetwork:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v0
.end method

.method public OpenDataConnection()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    const-string v1, "ConnMo"

    const-string v2, "OpenDataConnection"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v1, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "OpenDataConnection"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/htc/omadm/rule/ConnMo;->mConnPolicy:Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->getConnViaWifi()Z

    move-result v2

    iget-boolean v1, p0, Lcom/htc/omadm/rule/ConnMo;->mTemporaryCloseWifi:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 147
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 126
    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/rule/ConnMo;->mConnPolicy:Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->getChannelRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_2
    iget-object v0, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/connection/ConnManager;->OpenConnection()Z

    move-result v0

    goto :goto_1

    .line 132
    :pswitch_0
    const-string v0, "ConnMo"

    const-string v1, "use mip0 connection"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 135
    :pswitch_1
    const-string v0, "ConnMo"

    const-string v1, "use mip1 connection"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 138
    :pswitch_2
    const-string v0, "ConnMo"

    const-string v1, "use apn connection"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 141
    :pswitch_3
    const-string v0, "ConnMo"

    const-string v1, "use other connection"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 144
    :pswitch_4
    const-string v0, "ConnMo"

    const-string v1, "use current network connection"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getConnManager()Lcom/htc/omadm/libdo/connection/ConnManager;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/omadm/rule/ConnMo;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    return-object v0
.end method
