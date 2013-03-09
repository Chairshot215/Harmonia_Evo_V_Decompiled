.class public Lcom/htc/xps/pomelo/log/actMain;
.super Landroid/app/Activity;
.source "actMain.java"


# instance fields
.field btnAck:Landroid/widget/Button;

.field public btnAck_OnClick:Landroid/view/View$OnClickListener;

.field btnGetPolicy:Landroid/widget/Button;

.field public btnGetPolicy_OnClick:Landroid/view/View$OnClickListener;

.field btnGo:Landroid/widget/Button;

.field public btnGo_OnClick:Landroid/view/View$OnClickListener;

.field defaultServer:Ljava/lang/String;

.field etDisplay:Landroid/widget/EditText;

.field etUrl:Landroid/widget/EditText;

.field lib:Lcom/htc/xps/pomelo/log/LogLib;

.field sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->etUrl:Landroid/widget/EditText;

    .line 28
    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->btnGo:Landroid/widget/Button;

    .line 29
    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->btnGetPolicy:Landroid/widget/Button;

    .line 30
    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->btnAck:Landroid/widget/Button;

    .line 31
    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->etDisplay:Landroid/widget/EditText;

    .line 34
    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->lib:Lcom/htc/xps/pomelo/log/LogLib;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->sb:Ljava/lang/StringBuilder;

    .line 40
    const-string v0, "10.9.9.154:8182"

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->defaultServer:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/htc/xps/pomelo/log/actMain$1;

    invoke-direct {v0, p0}, Lcom/htc/xps/pomelo/log/actMain$1;-><init>(Lcom/htc/xps/pomelo/log/actMain;)V

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->btnGo_OnClick:Landroid/view/View$OnClickListener;

    .line 80
    new-instance v0, Lcom/htc/xps/pomelo/log/actMain$2;

    invoke-direct {v0, p0}, Lcom/htc/xps/pomelo/log/actMain$2;-><init>(Lcom/htc/xps/pomelo/log/actMain;)V

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->btnGetPolicy_OnClick:Landroid/view/View$OnClickListener;

    .line 98
    new-instance v0, Lcom/htc/xps/pomelo/log/actMain$3;

    invoke-direct {v0, p0}, Lcom/htc/xps/pomelo/log/actMain$3;-><init>(Lcom/htc/xps/pomelo/log/actMain;)V

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->btnAck_OnClick:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected getTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 216
    .local v0, dt:Ljava/util/Date;
    const-string v1, "hh:mm:ss"

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected makeSampleAckRequest()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;
    .locals 4

    .prologue
    .line 183
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;

    move-result-object v1

    .line 184
    .local v1, ackPacket:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v2

    .line 185
    .local v2, deviceInfo:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    .line 187
    .local v0, ackItem:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;
    const-string v3, "TestMgmtGroup"

    invoke-virtual {v0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->setMgmtGroupId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    .line 188
    const-string v3, "TestPolicyGroup"

    invoke-virtual {v0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->setPolicyGroupId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    .line 189
    sget-object v3, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;->POLICY_DONE:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;

    invoke-virtual {v0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->setStatus(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    .line 191
    const-string v3, "Ace"

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setModelId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 192
    const-string v3, "352668040036730"

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 193
    const-string v3, "HT08VRX00080"

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceSN(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 194
    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setCid(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 199
    const-string v3, "1.11.0.0"

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setRomVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 202
    const-string v3, "1.0"

    invoke-virtual {v1, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;->setVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;

    .line 204
    invoke-virtual {v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;->setDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;

    .line 205
    invoke-virtual {v1, v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;->addAck(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;

    .line 207
    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;

    move-result-object v3

    return-object v3
.end method

.method protected makeSampleLog()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 5

    .prologue
    .line 115
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v1

    .line 116
    .local v1, envelope:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    .line 119
    .local v0, deviceInfo:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    const-string v3, "1.0"

    invoke-virtual {v1, v3}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 122
    const-string v3, "Ace"

    invoke-virtual {v0, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setModelId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 123
    const-string v3, "352668040036730"

    invoke-virtual {v0, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 124
    const-string v3, "HT08VRX00080"

    invoke-virtual {v0, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceSN(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 125
    const-string v3, "VZW"

    invoke-virtual {v0, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setCid(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 130
    const-string v3, "1.11.0.0"

    invoke-virtual {v0, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setRomVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 133
    invoke-virtual {v1, v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 136
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v2

    .line 137
    .local v2, payload:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    const-string v3, "Music"

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 138
    const-string v3, "cate1"

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setCategory(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 139
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setTimestamp(J)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 140
    const-string v3, "This is a music message. *** Chinese here. \u4e2d\ufffd?\u6e2c\u8a66 ***"

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setData(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 141
    invoke-virtual {v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->addPayload(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 143
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v2

    .line 144
    const-string v3, "Video"

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 145
    const-string v3, "cate2"

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setCategory(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 146
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setTimestamp(J)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is a video message. *** Time Tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/actMain;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setData(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 148
    invoke-virtual {v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->addPayload(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 151
    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/xps/pomelo/util/PacketUtil;->calcLogPacketCheckSum(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v3

    return-object v3
.end method

.method protected makeSamplePolicyRequest()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;
    .locals 4

    .prologue
    .line 159
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;

    move-result-object v1

    .line 160
    .local v1, req:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    .line 163
    .local v0, deviceInfo:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    const-string v2, "Ace"

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setModelId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 164
    const-string v2, "352668040036730"

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 165
    const-string v2, "HT08VRX00080"

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceSN(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 166
    const-string v2, "VZW"

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setCid(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 171
    const-string v2, "1.11.0.0"

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setRomVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 174
    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;->setVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;

    .line 176
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;->setLastUpdate(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;

    .line 177
    invoke-virtual {v1, v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;->setDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;

    .line 179
    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;

    move-result-object v2

    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/high16 v0, 0x7f02

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/actMain;->setContentView(I)V

    .line 48
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/actMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->etUrl:Landroid/widget/EditText;

    .line 49
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/actMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->btnGo:Landroid/widget/Button;

    .line 50
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/actMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->btnGetPolicy:Landroid/widget/Button;

    .line 51
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/actMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->btnAck:Landroid/widget/Button;

    .line 52
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/actMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->etDisplay:Landroid/widget/EditText;

    .line 54
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->btnGo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/actMain;->btnGo_OnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->btnGetPolicy:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/actMain;->btnGetPolicy_OnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->btnAck:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/actMain;->btnAck_OnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->etUrl:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/actMain;->defaultServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v0, Lcom/htc/xps/pomelo/log/LogLib;

    invoke-direct {v0, p0}, Lcom/htc/xps/pomelo/log/LogLib;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/actMain;->lib:Lcom/htc/xps/pomelo/log/LogLib;

    .line 60
    return-void
.end method
