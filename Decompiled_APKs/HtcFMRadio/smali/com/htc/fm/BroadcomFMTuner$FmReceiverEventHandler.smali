.class public Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;
.super Ljava/lang/Object;
.source "BroadcomFMTuner.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/BroadcomFMTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FmReceiverEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/BroadcomFMTuner;


# direct methods
.method protected constructor <init>(Lcom/htc/fm/BroadcomFMTuner;)V
    .locals 0
    .parameter

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioModeEvent(I)V
    .locals 2
    .parameter "audioMode"

    .prologue
    .line 1259
    sput p1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->audioMode:I

    .line 1260
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1261
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1262
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #calls: Lcom/htc/fm/BroadcomFMTuner;->sendEvent(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/htc/fm/BroadcomFMTuner;->access$400(Lcom/htc/fm/BroadcomFMTuner;Landroid/os/Message;)V

    .line 1263
    return-void
.end method

.method public onAudioPathEvent(I)V
    .locals 2
    .parameter "audioPath"

    .prologue
    .line 1266
    sput p1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->audioPath:I

    .line 1267
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1268
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1269
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #calls: Lcom/htc/fm/BroadcomFMTuner;->sendEvent(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/htc/fm/BroadcomFMTuner;->access$400(Lcom/htc/fm/BroadcomFMTuner;Landroid/os/Message;)V

    .line 1270
    return-void
.end method

.method public onEstimateNoiseFloorLevelEvent(I)V
    .locals 3
    .parameter "nfl"

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #getter for: Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/fm/BroadcomFMTuner;->access$000(Lcom/htc/fm/BroadcomFMTuner;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! @@@@@@ onEstimateNoiseFloorLevelEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #setter for: Lcom/htc/fm/BroadcomFMTuner;->mNfl:I
    invoke-static {v0, p1}, Lcom/htc/fm/BroadcomFMTuner;->access$502(Lcom/htc/fm/BroadcomFMTuner;I)I

    .line 1276
    return-void
.end method

.method public onLiveAudioQualityEvent(I)V
    .locals 2
    .parameter "rssi"

    .prologue
    .line 1280
    sput p1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    .line 1281
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1282
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1283
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #calls: Lcom/htc/fm/BroadcomFMTuner;->sendEvent(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/htc/fm/BroadcomFMTuner;->access$400(Lcom/htc/fm/BroadcomFMTuner;Landroid/os/Message;)V

    .line 1284
    return-void
.end method

.method public onRdsDataEvent(IILjava/lang/String;)V
    .locals 2
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 1289
    sput p1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsDataType:I

    .line 1290
    sput p2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsIndex:I

    .line 1291
    sput-object p3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsText:Ljava/lang/String;

    .line 1293
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1294
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1295
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #calls: Lcom/htc/fm/BroadcomFMTuner;->sendEvent(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/htc/fm/BroadcomFMTuner;->access$400(Lcom/htc/fm/BroadcomFMTuner;Landroid/os/Message;)V

    .line 1296
    return-void
.end method

.method public onRdsModeEvent(II)V
    .locals 2
    .parameter "rdsMode"
    .parameter "alternateFreqHopEnabled"

    .prologue
    .line 1300
    sput p1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsMode:I

    .line 1301
    sput p2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->alternateFreqHopEnabled:I

    .line 1303
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1304
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1305
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #calls: Lcom/htc/fm/BroadcomFMTuner;->sendEvent(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/htc/fm/BroadcomFMTuner;->access$400(Lcom/htc/fm/BroadcomFMTuner;Landroid/os/Message;)V

    .line 1306
    return-void
.end method

.method public onSeekCompleteEvent(IIZ)V
    .locals 4
    .parameter "freq"
    .parameter "rssi"
    .parameter "seeksuccess"

    .prologue
    .line 1317
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #getter for: Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/fm/BroadcomFMTuner;->access$000(Lcom/htc/fm/BroadcomFMTuner;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] onSeekCompleteEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mCmdState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #getter for: Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I
    invoke-static {v3}, Lcom/htc/fm/BroadcomFMTuner;->access$600(Lcom/htc/fm/BroadcomFMTuner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    sput p1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    .line 1320
    sput p2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    .line 1321
    sput-boolean p3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->seeksuccess:Z

    .line 1323
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1324
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1325
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #calls: Lcom/htc/fm/BroadcomFMTuner;->sendEvent(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/htc/fm/BroadcomFMTuner;->access$400(Lcom/htc/fm/BroadcomFMTuner;Landroid/os/Message;)V

    .line 1326
    return-void
.end method

.method public onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"

    .prologue
    .line 1333
    sput p1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    .line 1334
    sput p2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    .line 1335
    sput-boolean p8, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->isMute:Z

    .line 1336
    sput-boolean p3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->radioIsOn:Z

    .line 1337
    sput-object p5, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsProgramService:Ljava/lang/String;

    .line 1338
    sput p4, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsProgramType:I

    .line 1339
    sput-object p7, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsProgramTypeName:Ljava/lang/String;

    .line 1340
    sput-object p6, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsRadioText:Ljava/lang/String;

    .line 1342
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1343
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1344
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #calls: Lcom/htc/fm/BroadcomFMTuner;->sendEvent(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/htc/fm/BroadcomFMTuner;->access$400(Lcom/htc/fm/BroadcomFMTuner;Landroid/os/Message;)V

    .line 1345
    return-void
.end method

.method public onVolumeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 1253
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1254
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1255
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #calls: Lcom/htc/fm/BroadcomFMTuner;->sendEvent(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/htc/fm/BroadcomFMTuner;->access$400(Lcom/htc/fm/BroadcomFMTuner;Landroid/os/Message;)V

    .line 1256
    return-void
.end method

.method public onWorldRegionEvent(I)V
    .locals 2
    .parameter "worldRegion"

    .prologue
    .line 1349
    sput p1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->worldRegion:I

    .line 1351
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1352
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1353
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #calls: Lcom/htc/fm/BroadcomFMTuner;->sendEvent(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/htc/fm/BroadcomFMTuner;->access$400(Lcom/htc/fm/BroadcomFMTuner;Landroid/os/Message;)V

    .line 1354
    return-void
.end method
