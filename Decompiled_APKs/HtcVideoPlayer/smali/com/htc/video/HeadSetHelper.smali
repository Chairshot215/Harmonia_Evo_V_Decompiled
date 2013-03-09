.class public Lcom/htc/video/HeadSetHelper;
.super Ljava/lang/Object;
.source "HeadSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;,
        Lcom/htc/video/HeadSetHelper$HeadSetReceiver;,
        Lcom/htc/video/HeadSetHelper$A2dpServiceListener;
    }
.end annotation


# static fields
.field private static final ACTION_HTC_BEATS_STATE_CHANGE:Ljava/lang/String; = "com.htc.intent.action.BEATS_STATE_CHANGE"

.field private static final HEADSET_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/name"

.field private static final HEADSET_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/state"

.field private static final TAG:Ljava/lang/String; = "HeadSethelper"

.field private static mBeatsEffectState:Z

.field private static mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;


# instance fields
.field private mA2DPStatus:Z

.field private mBeatsStatus:Z

.field private mH2WStatus:Z

.field private mIntentReceiver:Lcom/htc/video/HeadSetHelper$HeadSetReceiver;

.field private mListener:Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/video/HeadSetHelper;->mBeatsStatus:Z

    .line 243
    iput-object v1, p0, Lcom/htc/video/HeadSetHelper;->mListener:Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;

    .line 244
    iput-object v1, p0, Lcom/htc/video/HeadSetHelper;->mIntentReceiver:Lcom/htc/video/HeadSetHelper$HeadSetReceiver;

    .line 367
    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput-object p0, Lcom/htc/video/HeadSetHelper;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/htc/video/HeadSetHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/video/HeadSetHelper;->mH2WStatus:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/video/HeadSetHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/htc/video/HeadSetHelper;->mH2WStatus:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/video/HeadSetHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/video/HeadSetHelper;->mBeatsStatus:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/video/HeadSetHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/htc/video/HeadSetHelper;->mBeatsStatus:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/video/HeadSetHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/video/HeadSetHelper;->mA2DPStatus:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/video/HeadSetHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/htc/video/HeadSetHelper;->mA2DPStatus:Z

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/htc/video/HeadSetHelper;->mBeatsEffectState:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput-boolean p0, Lcom/htc/video/HeadSetHelper;->mBeatsEffectState:Z

    return p0
.end method

.method static synthetic access$500(Lcom/htc/video/HeadSetHelper;)Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/video/HeadSetHelper;->mListener:Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;

    return-object v0
.end method

.method public static getBeatsEffectState()Z
    .locals 1

    .prologue
    .line 373
    sget-boolean v0, Lcom/htc/video/HeadSetHelper;->mBeatsEffectState:Z

    return v0
.end method

.method private static getHeadsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "/sys/class/switch/h2w/name"

    invoke-static {v0}, Lcom/htc/video/HeadSetHelper;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHeadsetState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "/sys/class/switch/h2w/state"

    invoke-static {v0}, Lcom/htc/video/HeadSetHelper;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBTHeadsetCarkit(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 103
    const/4 v3, 0x0

    .line 105
    .local v3, isCarkit:Z
    invoke-static {p0}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 110
    :try_start_0
    const-string v6, "media.audio.a2dp.carkit"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, result:Ljava/lang/String;
    if-nez v5, :cond_3

    .line 112
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Can\'t get property: media.audio.a2dp.carkit"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v5           #result:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "HeadSethelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isBTHeadsetCarkit] media.audio.a2dp.carkit fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 123
    sget-object v6, Lcom/htc/video/HeadSetHelper;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    .line 124
    .local v4, localDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 125
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v6

    if-ne v9, v6, :cond_1

    .line 126
    const/4 v3, 0x1

    .line 133
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #localDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    return v3

    .line 114
    .restart local v5       #result:Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_0

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-ne v9, v6, :cond_0

    .line 115
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isBTHeadsetPlugged(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 95
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 96
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    .line 99
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBeatsHeadsetPlugged()Z
    .locals 6

    .prologue
    .line 189
    const-string v3, "htchardware"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v2

    .line 190
    .local v2, hwService:Landroid/os/IHtcHardwareService;
    if-eqz v2, :cond_1

    .line 192
    const/4 v1, 0x0

    .line 195
    .local v1, headsetType:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2}, Landroid/os/IHtcHardwareService;->getHeadsetType()Ljava/lang/String;

    move-result-object v1

    .line 196
    const-string v3, "HeadSethelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isBeatsHeadset] Headset Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    if-eqz v1, :cond_1

    const-string v3, "headset_beats"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "headset_beats_solo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    :cond_0
    const/4 v3, 0x1

    .line 209
    .end local v1           #headsetType:Ljava/lang/String;
    :goto_1
    return v3

    .line 198
    .restart local v1       #headsetType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HeadSethelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isBeatsHeadset] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #headsetType:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isBeatsOrHeadSetPlugged()Z
    .locals 1

    .prologue
    .line 379
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBeatsSupport()Z
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->isSupportBeats()Z

    move-result v0

    return v0
.end method

.method public static isHeadsetPlugged()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->getHeadsetName()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, name:Ljava/lang/String;
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v5

    .line 144
    :cond_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    const/4 v4, 0x0

    .line 150
    .local v4, state:I
    :try_start_0
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->getHeadsetState()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 157
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, bstate:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "headset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "h2w"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 164
    :cond_2
    if-eqz v4, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 170
    .local v2, length:I
    if-ne v2, v6, :cond_3

    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 171
    const-string v5, "HeadSethelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isHeadsetPlugged] Headset 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 172
    goto :goto_0

    .line 151
    .end local v0           #bstate:Ljava/lang/String;
    .end local v2           #length:I
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 153
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 175
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bstate:Ljava/lang/String;
    .restart local v2       #length:I
    :cond_3
    const/4 v7, 0x2

    if-lt v2, v7, :cond_5

    const-string v7, "01"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "10"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "11"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 178
    :cond_4
    const-string v5, "HeadSethelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isHeadsetPlugged] Headset 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 179
    goto/16 :goto_0

    .line 182
    :cond_5
    const-string v6, "HeadSethelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isHeadsetPlugged] Headset false:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filePath"

    .prologue
    .line 51
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 53
    const/4 v9, 0x0

    .line 90
    :goto_0
    return-object v9

    .line 55
    :cond_0
    const/4 v9, 0x0

    .line 56
    .local v9, line:Ljava/lang/String;
    const/4 v4, 0x0

    .line 57
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 58
    .local v7, isr:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 60
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 61
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 62
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .local v8, isr:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .line 63
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    move-result-object v9

    .line 68
    if-eqz v1, :cond_1

    .line 70
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 74
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 76
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 80
    :cond_2
    :goto_2
    if-eqz v5, :cond_9

    .line 82
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 87
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_3
    :goto_3
    const/4 v4, 0x0

    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v0, 0x0

    .line 90
    goto :goto_0

    .line 71
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v2

    .line 72
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 78
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 83
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 84
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 85
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 65
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 66
    .local v6, ioe:Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 68
    if-eqz v0, :cond_4

    .line 70
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 74
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 76
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 80
    :cond_5
    :goto_6
    if-eqz v4, :cond_3

    .line 82
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    .line 83
    :catch_4
    move-exception v2

    .line 84
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 71
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 72
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 77
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 78
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 68
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v0, :cond_6

    .line 70
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 74
    :cond_6
    :goto_8
    if-eqz v7, :cond_7

    .line 76
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 80
    :cond_7
    :goto_9
    if-eqz v4, :cond_8

    .line 82
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 85
    :cond_8
    :goto_a
    throw v10

    .line 71
    :catch_7
    move-exception v2

    .line 72
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 77
    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 78
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 83
    .end local v2           #e:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 84
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 68
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 65
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v6

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_b
    move-exception v6

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_c
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :cond_9
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_3
.end method


# virtual methods
.method public startMonitor(Landroid/content/Context;Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 247
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/video/HeadSetHelper;->mH2WStatus:Z

    .line 248
    invoke-static {p1}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/video/HeadSetHelper;->mA2DPStatus:Z

    .line 249
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/video/HeadSetHelper;->mBeatsStatus:Z

    .line 251
    iput-object p2, p0, Lcom/htc/video/HeadSetHelper;->mListener:Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;

    .line 253
    iget-object v1, p0, Lcom/htc/video/HeadSetHelper;->mIntentReceiver:Lcom/htc/video/HeadSetHelper$HeadSetReceiver;

    if-nez v1, :cond_0

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v1, "android.intent.action.ACTION_A2DP_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v1, "com.htc.intent.action.BEATS_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    new-instance v1, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;

    invoke-direct {v1, p0}, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;-><init>(Lcom/htc/video/HeadSetHelper;)V

    iput-object v1, p0, Lcom/htc/video/HeadSetHelper;->mIntentReceiver:Lcom/htc/video/HeadSetHelper$HeadSetReceiver;

    .line 262
    iget-object v1, p0, Lcom/htc/video/HeadSetHelper;->mIntentReceiver:Lcom/htc/video/HeadSetHelper$HeadSetReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    .end local v0           #commandFilter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 264
    :cond_0
    const-string v1, "HeadSethelper"

    const-string v2, "[startMonitor]someone called this twice?"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopMonitor(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/video/HeadSetHelper;->mIntentReceiver:Lcom/htc/video/HeadSetHelper$HeadSetReceiver;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/video/HeadSetHelper;->mIntentReceiver:Lcom/htc/video/HeadSetHelper$HeadSetReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/video/HeadSetHelper;->mIntentReceiver:Lcom/htc/video/HeadSetHelper$HeadSetReceiver;

    .line 273
    return-void
.end method
