.class public Lcom/htc/android/htcime/tools/TouchPlayer;
.super Landroid/app/ListActivity;
.source "TouchPlayer.java"


# static fields
.field public static final BUILT_IN_LOG:Ljava/lang/String; = "Built-in Log"

.field public static final BUILT_IN_LOG_SHORT:Ljava/lang/String; = "Built-in Log (short)"

.field public static final CALIBRATION_TEXT_FILE:Ljava/lang/String; = "calibration.txt"

.field private static final DEF_SET_DEVICE:I = 0x0

.field private static final DEF_SET_LOG:I = 0x0

.field private static final DEF_SET_MOVE_EVENT:I = 0x1

.field private static final DEF_SET_PREDICTION:I = 0x1

.field private static final DEF_SET_SHAKE:I = 0x0

.field private static final DEF_SET_SPEED:I = 0x0

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final MENU_CHANGE_SIP:I = 0x2

.field private static final MENU_PLAY:I = 0x1

.field private static final SETTING_ID_DEVICE:Ljava/lang/String; = "3"

.field private static final SETTING_ID_LOG:Ljava/lang/String; = "0"

.field private static final SETTING_ID_MOVE_EVENT:Ljava/lang/String; = "5"

.field private static final SETTING_ID_PREDICTION:Ljava/lang/String; = "2"

.field private static final SETTING_ID_SHAKE:Ljava/lang/String; = "4"

.field private static final SETTING_ID_SPEED:Ljava/lang/String; = "1"

.field public static final SETTING_NAME_DEBUG:Ljava/lang/String; = "TouchPlayer.Debug"

.field public static final SETTING_NAME_DEVICE:Ljava/lang/String; = "TouchPlayer.Device"

.field public static final SETTING_NAME_LOG:Ljava/lang/String; = "TouchPlayer.Log"

.field public static final SETTING_NAME_LOG_URI:Ljava/lang/String; = "TouchPlayer.LogUri"

.field public static final SETTING_NAME_MOVE_EVENT:Ljava/lang/String; = "TouchPlayer.MoveEvent"

.field public static final SETTING_NAME_PREDICTION:Ljava/lang/String; = "TouchPlayer.Prediction"

.field public static final SETTING_NAME_SHAKE:Ljava/lang/String; = "TouchPlayer.Shake"

.field public static final SETTING_NAME_SPEED:Ljava/lang/String; = "TouchPlayer.Speed"

.field public static final SETTING_VALUE_OFF:Ljava/lang/String; = "Off"

.field public static final SETTING_VALUE_ON:Ljava/lang/String; = "On"

.field private static final SHAKE_VALUE_COUNT:I = 0x8

.field private static final SPEED_VALUE_COUNT:I = 0x15

.field private static final TOUCHTEST_RUNNER_CLASS_NAME:Ljava/lang/String; = "com.htc.android.htcime.tests.TouchTest.TouchTestRunner"

.field private static final TOUCHTEST_RUNNER_PACKAGE_NAME:Ljava/lang/String; = "com.htc.android.htcime.tests"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCurListPosition:I

.field private mDebug:Z

.field private mLogPathList:[Ljava/lang/String;

.field private mSetDeviceIndex:I

.field private mSetDeviceList:[Ljava/lang/String;

.field private mSetDeviceValue:[Ljava/lang/String;

.field private mSetLogIndex:I

.field private mSetLogList:[Ljava/lang/String;

.field private mSetMoveEventIndex:I

.field private mSetMoveEventList:[Ljava/lang/String;

.field private mSetPredictionIndex:I

.field private mSetPredictionList:[Ljava/lang/String;

.field private mSetShakeIndex:I

.field private mSetShakeList:[Ljava/lang/String;

.field private mSetSpeedIndex:I

.field private mSetSpeedList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mAdapter:Landroid/widget/ListAdapter;

    .line 80
    iput v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mCurListPosition:I

    .line 99
    iput v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetLogIndex:I

    .line 100
    iput v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetSpeedIndex:I

    .line 101
    iput v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetPredictionIndex:I

    .line 102
    iput v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceIndex:I

    .line 103
    iput v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetShakeIndex:I

    .line 104
    iput v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetMoveEventIndex:I

    .line 106
    iput-boolean v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mDebug:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/tools/TouchPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mCurListPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/tools/TouchPlayer;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetLogList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/htcime/tools/TouchPlayer;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/android/htcime/tools/TouchPlayer;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetSpeedList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/htcime/tools/TouchPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetSpeedIndex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/android/htcime/tools/TouchPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetSpeedIndex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/android/htcime/tools/TouchPlayer;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetMoveEventList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/android/htcime/tools/TouchPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetMoveEventIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/android/htcime/tools/TouchPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetMoveEventIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/tools/TouchPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetLogIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/android/htcime/tools/TouchPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetLogIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/tools/TouchPlayer;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/tools/TouchPlayer;->updateList(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/tools/TouchPlayer;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetPredictionList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/tools/TouchPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetPredictionIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/android/htcime/tools/TouchPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetPredictionIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/android/htcime/tools/TouchPlayer;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetShakeList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/htcime/tools/TouchPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetShakeIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/android/htcime/tools/TouchPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetShakeIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/android/htcime/tools/TouchPlayer;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceValue:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/htcime/tools/TouchPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceIndex:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/android/htcime/tools/TouchPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceIndex:I

    return p1
.end method

.method private getData()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/TouchPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 222
    .local v3, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "id"

    const-string v6, "0"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v5, "title"

    const v6, 0x7f0902f2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v5, "name"

    const-string v6, "TouchPlayer.Log"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v5, "value"

    iget-object v6, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetLogList:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "id"

    const-string v6, "2"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v5, "title"

    const v6, 0x7f0902f4

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v5, "name"

    const-string v6, "TouchPlayer.Prediction"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v5, "value"

    iget-object v6, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetPredictionList:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "id"

    const-string v6, "3"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v5, "title"

    const v6, 0x7f0902f5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v5, "name"

    const-string v6, "TouchPlayer.Device"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v5, "value"

    iget-object v6, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceList:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v5, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetShakeList:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 244
    .local v4, shake_mm:F
    iget-object v5, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceValue:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 245
    .local v2, pixpermm:F
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "id"

    const-string v6, "4"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v5, "title"

    const v6, 0x7f0902f6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v5, "name"

    const-string v6, "TouchPlayer.Shake"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v5, "value"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-float v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "id"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v5, "title"

    const v6, 0x7f0902f3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v5, "name"

    const-string v6, "TouchPlayer.Speed"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v5, "value"

    iget-object v6, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetSpeedList:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "id"

    const-string v6, "5"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v5, "title"

    const v6, 0x7f0902f7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v5, "name"

    const-string v6, "TouchPlayer.MoveEvent"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v5, "value"

    iget-object v6, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetMoveEventList:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-object v1
.end method

.method private initSettingList()V
    .locals 11

    .prologue
    const/16 v10, 0x15

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 129
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/TouchPlayer;->setLogList()V

    .line 131
    new-array v2, v10, [Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetSpeedList:[Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v10, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetSpeedList:[Ljava/lang/String;

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetPredictionList:[Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetPredictionList:[Ljava/lang/String;

    const-string v3, "On"

    aput-object v3, v2, v6

    .line 136
    iget-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetPredictionList:[Ljava/lang/String;

    const-string v3, "Off"

    aput-object v3, v2, v7

    .line 138
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/TouchPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 139
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f070026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceList:[Ljava/lang/String;

    .line 140
    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceValue:[Ljava/lang/String;

    .line 142
    new-array v2, v9, [Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetShakeList:[Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetShakeList:[Ljava/lang/String;

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_1
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetMoveEventList:[Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetMoveEventList:[Ljava/lang/String;

    const-string v3, "On"

    aput-object v3, v2, v6

    .line 147
    iget-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetMoveEventList:[Ljava/lang/String;

    const-string v3, "Off"

    aput-object v3, v2, v7

    .line 148
    return-void
.end method

.method private setLogList()V
    .locals 15

    .prologue
    .line 151
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v11, logNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v12, logPathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "Built-in Log"

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v13, "Built-in Log"

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v13, "Built-in Log (short)"

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v13, "Built-in Log (short)"

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    const-string v14, "IME_Test"

    invoke-direct {v2, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .local v2, dataDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 162
    .local v5, files:[Ljava/io/File;
    if-eqz v5, :cond_4

    .line 163
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v9, v0

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v0           #arr$:[Ljava/io/File;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v3, v0, v8

    .line 164
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 165
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 166
    .local v6, files2:[Ljava/io/File;
    move-object v1, v6

    .local v1, arr$:[Ljava/io/File;
    array-length v10, v1

    .local v10, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_1
    if-ge v7, v10, :cond_2

    aget-object v4, v1, v7

    .line 167
    .local v4, f2:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 166
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 168
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 173
    .end local v1           #arr$:[Ljava/io/File;
    .end local v4           #f2:Ljava/io/File;
    .end local v6           #files2:[Ljava/io/File;
    .end local v7           #i$:I
    .end local v10           #len$:I
    .restart local v8       #i$:I
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "calibration.txt"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 163
    .end local v8           #i$:I
    :cond_2
    :goto_3
    add-int/lit8 v7, v8, 0x1

    .restart local v7       #i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 183
    .end local v3           #f:Ljava/io/File;
    .end local v8           #i$:I
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v11, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    iput-object v13, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetLogList:[Ljava/lang/String;

    .line 184
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    iput-object v13, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mLogPathList:[Ljava/lang/String;

    .line 185
    return-void
.end method

.method private showDeviceDialog(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 376
    iput p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mCurListPosition:I

    .line 377
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902f5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceList:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetDeviceIndex:I

    new-instance v3, Lcom/htc/android/htcime/tools/TouchPlayer$9;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$9;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902f9

    new-instance v2, Lcom/htc/android/htcime/tools/TouchPlayer$8;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$8;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902fa

    new-instance v2, Lcom/htc/android/htcime/tools/TouchPlayer$7;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$7;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 398
    return-void
.end method

.method private showLogDialog(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 332
    iput p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mCurListPosition:I

    .line 333
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902f2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetLogList:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetLogIndex:I

    new-instance v3, Lcom/htc/android/htcime/tools/TouchPlayer$3;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$3;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902f9

    new-instance v2, Lcom/htc/android/htcime/tools/TouchPlayer$2;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$2;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902fa

    new-instance v2, Lcom/htc/android/htcime/tools/TouchPlayer$1;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$1;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 351
    return-void
.end method

.method private showMoveEventDialog(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 447
    iput p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mCurListPosition:I

    .line 448
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetMoveEventList:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetMoveEventIndex:I

    new-instance v3, Lcom/htc/android/htcime/tools/TouchPlayer$18;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$18;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902f9

    new-instance v2, Lcom/htc/android/htcime/tools/TouchPlayer$17;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$17;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902fa

    new-instance v2, Lcom/htc/android/htcime/tools/TouchPlayer$16;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$16;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 466
    return-void
.end method

.method private showPredictionDialog(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 354
    iput p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mCurListPosition:I

    .line 355
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902f4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetPredictionList:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetPredictionIndex:I

    new-instance v3, Lcom/htc/android/htcime/tools/TouchPlayer$6;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$6;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902f9

    new-instance v2, Lcom/htc/android/htcime/tools/TouchPlayer$5;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$5;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902fa

    new-instance v2, Lcom/htc/android/htcime/tools/TouchPlayer$4;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$4;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 373
    return-void
.end method

.method private showShakeDialog(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 401
    iput p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mCurListPosition:I

    .line 402
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902f6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetShakeList:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetShakeIndex:I

    new-instance v3, Lcom/htc/android/htcime/tools/TouchPlayer$12;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$12;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902f9

    new-instance v2, Lcom/htc/android/htcime/tools/TouchPlayer$11;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$11;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902fa

    new-instance v2, Lcom/htc/android/htcime/tools/TouchPlayer$10;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$10;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 422
    return-void
.end method

.method private showSpeedDialog(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 425
    iput p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mCurListPosition:I

    .line 426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetSpeedList:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetSpeedIndex:I

    new-instance v3, Lcom/htc/android/htcime/tools/TouchPlayer$15;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$15;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902f9

    new-instance v2, Lcom/htc/android/htcime/tools/TouchPlayer$14;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$14;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902fa

    new-instance v2, Lcom/htc/android/htcime/tools/TouchPlayer$13;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/TouchPlayer$13;-><init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 444
    return-void
.end method

.method private startToPlay()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/TouchPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 300
    .local v4, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 301
    iget-object v6, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 302
    .local v2, map:Ljava/util/HashMap;
    const-string v6, "name"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    .local v3, name:Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 304
    .local v5, value:Ljava/lang/String;
    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v2           #map:Ljava/util/HashMap;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    const-string v6, "TouchPlayer.LogUri"

    iget-object v7, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mLogPathList:[Ljava/lang/String;

    iget v8, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mSetLogIndex:I

    aget-object v7, v7, v8

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 310
    const-string v7, "TouchPlayer.Debug"

    iget-boolean v6, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mDebug:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.htc.android.htcime.tests"

    const-string v7, "com.htc.android.htcime.tests.TouchTest.TouchTestRunner"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {p0, v0, v9, v9}, Lcom/htc/android/htcime/tools/TouchPlayer;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 314
    return-void

    .line 310
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private updateList(ILjava/lang/String;)V
    .locals 2
    .parameter "position"
    .parameter "value"

    .prologue
    .line 469
    iget-object v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 470
    .local v0, map:Ljava/util/HashMap;
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/tools/TouchPlayer;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x2

    .line 110
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/TouchPlayer;->initSettingList()V

    .line 115
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Lcom/htc/android/htcime/tools/TouchPlayer;->getData()Ljava/util/List;

    move-result-object v2

    const v3, 0x1090004

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "value"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mAdapter:Landroid/widget/ListAdapter;

    .line 119
    iget-object v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/TouchPlayer;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    return-void

    .line 115
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 273
    const/4 v0, 0x2

    const v1, 0x7f0902f0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 274
    const v0, 0x7f0902f1

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 276
    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 318
    if-gez p3, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 321
    .local v0, map:Ljava/util/HashMap;
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    .local v1, name:Ljava/lang/String;
    const-string v2, "TouchPlayer.Log"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p3}, Lcom/htc/android/htcime/tools/TouchPlayer;->showLogDialog(I)V

    goto :goto_0

    .line 324
    :cond_2
    const-string v2, "TouchPlayer.Prediction"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p3}, Lcom/htc/android/htcime/tools/TouchPlayer;->showPredictionDialog(I)V

    goto :goto_0

    .line 325
    :cond_3
    const-string v2, "TouchPlayer.Device"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p3}, Lcom/htc/android/htcime/tools/TouchPlayer;->showDeviceDialog(I)V

    goto :goto_0

    .line 326
    :cond_4
    const-string v2, "TouchPlayer.Shake"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p3}, Lcom/htc/android/htcime/tools/TouchPlayer;->showShakeDialog(I)V

    goto :goto_0

    .line 327
    :cond_5
    const-string v2, "TouchPlayer.Speed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p3}, Lcom/htc/android/htcime/tools/TouchPlayer;->showSpeedDialog(I)V

    goto :goto_0

    .line 328
    :cond_6
    const-string v2, "TouchPlayer.MoveEvent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p3}, Lcom/htc/android/htcime/tools/TouchPlayer;->showMoveEventDialog(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 281
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 282
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 294
    :goto_0
    return v3

    .line 284
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/TouchPlayer;->startToPlay()V

    goto :goto_0

    .line 287
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/TouchPlayer;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/TouchPlayer;->getBaseContext()Landroid/content/Context;

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 288
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 289
    iget-boolean v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mDebug:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mDebug:Z

    .line 290
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/TouchPlayer;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Debug while playing : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/android/htcime/tools/TouchPlayer;->mDebug:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 289
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 125
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/TouchPlayer;->setLogList()V

    .line 126
    return-void
.end method
