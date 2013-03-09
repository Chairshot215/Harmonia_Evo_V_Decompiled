.class public Lcom/android/settings/wimax/WimaxEnabler;
.super Ljava/lang/Object;
.source "WimaxEnabler.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/WimaxEnabler$uiThread;
    }
.end annotation


# static fields
.field private static final EVENT_4G_AVAILABLE_CHANGED:I = 0x5

.field private static final EVENT_AIRPLANE_MODE_CHANGED:I = 0x3

.field private static final EVENT_BACKOFF_STATE_CHANGED:I = 0x4

.field private static final EVENT_ENABLED_STATE_CHANGED:I = 0x0

.field private static final EVENT_ERROE_CODE_RETURN:I = 0x2

.field private static final EVENT_NETWORK_STATE_CHANGED:I = 0x1

.field public static WimaxCommonState:Ljava/lang/String; = null

.field public static final ifDebug:Z = true


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

.field private mIsSetByUser:Z

.field private mSummary:Landroid/widget/TextView;

.field private mSwitch:Lcom/htc/widget/HtcToggleButton;

.field private mSwitchHeader:Landroid/view/View;

.field private mWimaxController:Lcom/htc/net/wimax/WimaxController;

.field private final mWimaxStateFilter:Landroid/content/IntentFilter;

.field private final mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

.field private final unknownState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "Scanning..."

    sput-object v0, Lcom/android/settings/wimax/WimaxEnabler;->WimaxCommonState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "switchHeader"

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "WimaxEnabler"

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->unknownState:I

    .line 62
    iput-boolean v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIsSetByUser:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxEnabler$1;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    .line 116
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wimax"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/WimaxController;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    .line 117
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 118
    iput-object p2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitchHeader:Landroid/view/View;

    .line 119
    instance-of v0, p2, Lcom/htc/widget/HtcToggleButton;

    if-eqz v0, :cond_0

    .line 120
    check-cast p2, Lcom/htc/widget/HtcToggleButton;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitchHeader:Landroid/view/View;

    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSummary:Landroid/widget/TextView;

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxStateFilter:Landroid/content/IntentFilter;

    .line 131
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxStateFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxStateFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.wimax.ERROR_CODE_RETURN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxStateFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.wimax.ON_BACKOFF_STATE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxStateFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.wimax.WIMAX_4G_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    const-string v1, "fourG_wimax"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GManager;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    .line 137
    return-void

    .line 122
    .restart local p2
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcToggleButton;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wimax/WimaxEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIsSetByUser:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wimax/WimaxEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->getPersistedAirplaneModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wimax/WimaxEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxEnabler;->handleError(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wimax/WimaxEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->updatePreferenceEnable()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wimax/WimaxEnabler;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxEnabledChanged(II)V

    return-void
.end method

.method private static getHumanReadableWimaxState(I)Ljava/lang/String;
    .locals 1
    .parameter "wimaxState"

    .prologue
    .line 356
    packed-switch p0, :pswitch_data_0

    .line 368
    const-string v0, "Error state!"

    :goto_0
    return-object v0

    .line 358
    :pswitch_0
    const-string v0, "Disabling"

    goto :goto_0

    .line 360
    :pswitch_1
    const-string v0, "Disabled"

    goto :goto_0

    .line 362
    :pswitch_2
    const-string v0, "Enabling"

    goto :goto_0

    .line 364
    :pswitch_3
    const-string v0, "Enabled"

    goto :goto_0

    .line 366
    :pswitch_4
    const-string v0, "Unknown"

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getPersistWimaxSettingEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wimax_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getPersistedAirplaneModeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 352
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private handleError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 215
    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 218
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_1

    .line 219
    const v0, 0x7f0c0438

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxEnabler;->updateSummary(I)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    .line 221
    const v0, 0x7f0c0439

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxEnabler;->updateSummary(I)V

    goto :goto_0

    .line 223
    :cond_2
    const v0, 0x7f0c0437

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxEnabler;->updateSummary(I)V

    goto :goto_0
.end method

.method private handleWimaxEnabledChanged(II)V
    .locals 9
    .parameter "curWimaxState"
    .parameter "preWimaxState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x51

    const/16 v5, 0x50

    const/4 v4, 0x1

    .line 269
    const-string v1, "WimaxEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wimax enabled state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/settings/wimax/WimaxEnabler;->getHumanReadableWimaxState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/wimax/WimaxEnabler;->getHumanReadableWimaxState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 315
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->updatePreferenceEnable()V

    .line 316
    return-void

    .line 276
    :cond_1
    if-ne p1, v4, :cond_4

    .line 277
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v6, :cond_2

    .line 278
    const v1, 0x7f0c040d

    invoke-direct {p0, v1}, Lcom/android/settings/wimax/WimaxEnabler;->updateSummary(I)V

    .line 284
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 279
    :cond_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v5, :cond_3

    .line 280
    const v1, 0x7f0c040e

    invoke-direct {p0, v1}, Lcom/android/settings/wimax/WimaxEnabler;->updateSummary(I)V

    goto :goto_1

    .line 282
    :cond_3
    const v1, 0x7f0c040c

    invoke-direct {p0, v1}, Lcom/android/settings/wimax/WimaxEnabler;->updateSummary(I)V

    goto :goto_1

    .line 285
    :cond_4
    if-nez p1, :cond_5

    .line 286
    const v1, 0x7f0c0432

    invoke-direct {p0, v1}, Lcom/android/settings/wimax/WimaxEnabler;->updateSummary(I)V

    goto :goto_0

    .line 287
    :cond_5
    if-ne p1, v8, :cond_6

    .line 288
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 289
    const v1, 0x7f0c0431

    invoke-direct {p0, v1}, Lcom/android/settings/wimax/WimaxEnabler;->updateSummary(I)V

    goto :goto_0

    .line 291
    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 292
    const v0, 0x7f0c0436

    .line 293
    .local v0, message:I
    if-ne p2, v8, :cond_a

    .line 294
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v6, :cond_8

    .line 295
    const v0, 0x7f0c0438

    .line 312
    :cond_7
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxEnabler;->updateSummary(I)V

    .line 313
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 296
    :cond_8
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v5, :cond_9

    .line 297
    const v0, 0x7f0c0439

    goto :goto_2

    .line 299
    :cond_9
    const v0, 0x7f0c0437

    goto :goto_2

    .line 302
    :cond_a
    if-nez p2, :cond_7

    .line 303
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v6, :cond_b

    .line 304
    const v0, 0x7f0c043b

    goto :goto_2

    .line 305
    :cond_b
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v5, :cond_c

    .line 306
    const v0, 0x7f0c043c

    goto :goto_2

    .line 308
    :cond_c
    const v0, 0x7f0c043a

    goto :goto_2
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updatePrefereceUI()V
    .locals 8

    .prologue
    .line 238
    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePrefereceUI(), wimax db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->getPersistWimaxSettingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wimax"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/WimaxController;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    .line 241
    const-string v0, "WimaxEnabler"

    const-string v1, "mWimaxController is null, rebind it!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 245
    const-string v0, "WimaxEnabler"

    const-string v1, "mConnectivityManager is null, rebind it!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-eqz v0, :cond_2

    .line 248
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;

    const/4 v2, 0x0

    const/16 v3, 0x2328

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v4

    const/4 v5, 0x4

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wimax/WimaxEnabler$uiThread;-><init>(Lcom/android/settings/wimax/WimaxEnabler;IIIILandroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_3

    .line 253
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;

    const/4 v2, 0x1

    const/16 v3, 0x2328

    const/4 v4, 0x4

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wimax/WimaxEnabler$uiThread;-><init>(Lcom/android/settings/wimax/WimaxEnabler;IIIILandroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    :cond_3
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;

    const/4 v2, 0x5

    const/16 v3, 0x2328

    const/4 v4, 0x4

    const/4 v5, 0x4

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wimax/WimaxEnabler$uiThread;-><init>(Lcom/android/settings/wimax/WimaxEnabler;IIIILandroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-nez v0, :cond_5

    .line 262
    :cond_4
    const-string v1, "WimaxEnabler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWimaxController is null:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mConnectivityManager is null:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_5
    return-void

    .line 262
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePreferenceEnable()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 229
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v2}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v0

    .line 230
    .local v0, state:I
    const-string v2, "WimaxEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePreferenceEnable(), getWimaxState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mHtcWimax4GManager.isAvailable():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v4}, Lcom/htc/net/wimax/HTCWimax4GManager;->isAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->getPersistedAirplaneModeEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v3}, Lcom/htc/net/wimax/HTCWimax4GManager;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 235
    return-void

    .line 232
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSummary(I)V
    .locals 2
    .parameter "message"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string v0, "WimaxEnabler"

    const-string v1, "mSummary is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSummaryString(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    const-string v0, "WimaxEnabler"

    const-string v1, "mSummary is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected handleNetworkStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter "detailedState"

    .prologue
    const/4 v4, 0x0

    .line 186
    const-string v1, "WimaxEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNetworkStateChanged(), DetailedState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; isBackoffState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v3}, Lcom/htc/net/wimax/WimaxController;->isBackoffState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxController;->isWimaxEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxController;->isBackoffState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 194
    .local v0, status:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_4

    .line 195
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x21

    if-ne v1, v2, :cond_3

    .line 196
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, p1}, Lcom/android/settings/wimax/WimaxStatus;->getStatus(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 208
    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxEnabler;->updateSummaryString(Ljava/lang/String;)V

    .line 210
    :cond_1
    sput-object v0, Lcom/android/settings/wimax/WimaxEnabler;->WimaxCommonState:Ljava/lang/String;

    .line 212
    .end local v0           #status:Ljava/lang/String;
    :cond_2
    return-void

    .line 198
    .restart local v0       #status:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0419

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/settings/wimax/WimaxStatus;->getStatus(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_4
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-ne v1, v2, :cond_5

    .line 201
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c041a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/settings/wimax/WimaxStatus;->getStatus(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_5
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x50

    if-ne v1, v2, :cond_6

    .line 203
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c041b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/settings/wimax/WimaxStatus;->getStatus(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, p1}, Lcom/android/settings/wimax/WimaxStatus;->getStatus(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 375
    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCheckedChangeListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mIsSetByUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIsSetByUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIsSetByUser:Z

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0, p2}, Lcom/android/settings/wimax/WimaxEnabler;->setWimaxEnabled(Z)V

    .line 380
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->updatePrefereceUI()V

    goto :goto_0
.end method

.method public setSwitch(Landroid/view/View;)V
    .locals 3
    .parameter "switchHeader"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitchHeader:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 390
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitchHeader:Landroid/view/View;

    .line 391
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitchHeader:Landroid/view/View;

    const v1, 0x7f080110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcToggleButton;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 392
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitchHeader:Landroid/view/View;

    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSummary:Landroid/widget/TextView;

    .line 396
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 397
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 398
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->updatePrefereceUI()V

    goto :goto_0
.end method

.method public setWimaxEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 343
    const-string v1, "WimaxEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WimaxEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v1, p1}, Lcom/htc/net/wimax/WimaxController;->setWimaxEnabled(Z)Z

    move-result v0

    .line 345
    .local v0, rsEnable:Z
    return-void
.end method
