.class final Lcom/htc/feedback/AdditionalInfoService$FeedbackPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "AdditionalInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/feedback/AdditionalInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FeedbackPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/feedback/AdditionalInfoService;


# direct methods
.method private constructor <init>(Lcom/htc/feedback/AdditionalInfoService;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/feedback/AdditionalInfoService$FeedbackPhoneStateListener;->this$0:Lcom/htc/feedback/AdditionalInfoService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/feedback/AdditionalInfoService;Lcom/htc/feedback/AdditionalInfoService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/htc/feedback/AdditionalInfoService$FeedbackPhoneStateListener;-><init>(Lcom/htc/feedback/AdditionalInfoService;)V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 212
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v2

    iget v2, v2, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 237
    :goto_0
    return-void

    .line 216
    :cond_0
    if-eqz p1, :cond_1

    .line 217
    instance-of v2, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 219
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 220
    .local v1, gsmLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    iput v3, v2, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->lac:I

    .line 221
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    iput v3, v2, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->cid:I

    .line 231
    .end local v1           #gsmLocation:Landroid/telephony/gsm/GsmCellLocation;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v2

    iget v3, v2, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    .line 232
    iget-object v3, p0, Lcom/htc/feedback/AdditionalInfoService$FeedbackPhoneStateListener;->this$0:Lcom/htc/feedback/AdditionalInfoService;

    monitor-enter v3

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/htc/feedback/AdditionalInfoService$FeedbackPhoneStateListener;->this$0:Lcom/htc/feedback/AdditionalInfoService;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 236
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 222
    :cond_2
    instance-of v2, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 224
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 225
    .local v0, cdmaLocation:Landroid/telephony/cdma/CdmaCellLocation;
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    iput v3, v2, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->sid:I

    .line 226
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    iput v3, v2, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->nid:I

    .line 227
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    iput v3, v2, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->bid:I

    goto :goto_1
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "signalStrength"

    .prologue
    .line 241
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v1

    iget v1, v1, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 260
    :goto_0
    return-void

    .line 245
    :cond_0
    if-eqz p1, :cond_1

    .line 246
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    iput v2, v1, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->rscp:I

    .line 248
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 249
    .local v0, rssi:I
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, -0x71

    iput v2, v1, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->rscp:I

    .line 254
    .end local v0           #rssi:I
    :cond_1
    :goto_1
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v1

    iget v2, v1, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    .line 255
    iget-object v2, p0, Lcom/htc/feedback/AdditionalInfoService$FeedbackPhoneStateListener;->this$0:Lcom/htc/feedback/AdditionalInfoService;

    monitor-enter v2

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/htc/feedback/AdditionalInfoService$FeedbackPhoneStateListener;->this$0:Lcom/htc/feedback/AdditionalInfoService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 259
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 251
    :cond_2
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    iput v2, v1, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->rscp:I

    goto :goto_1
.end method
