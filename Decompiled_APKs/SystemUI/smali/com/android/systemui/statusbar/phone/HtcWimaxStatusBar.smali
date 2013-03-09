.class public Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;
.super Ljava/lang/Object;
.source "HtcWimaxStatusBar.java"


# static fields
.field public static final ICON_SLOT_WIMAX:Ljava/lang/String; = "wimax"

.field private static final LOG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HtcWimaxStatusBar"

.field public static final WIMAX_SIGNAL_CHANGED:Ljava/lang/String; = "android.intent.action.WIMAX_SIGNAL_CHANGED"

.field private static final mHtcResourcePackage:Ljava/lang/String; = "com.htc"


# instance fields
.field private final WIMAX_LEVEL_0:I

.field private final WIMAX_LEVEL_1:I

.field private final WIMAX_LEVEL_2:I

.field private final WIMAX_LEVEL_3:I

.field private final WIMAX_LEVEL_4:I

.field private final WIMAX_LEVEL_5:I

.field public mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMtWimaxSignal:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWimaxController:Lcom/htc/net/wimax/WimaxController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->WIMAX_LEVEL_0:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->WIMAX_LEVEL_1:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->WIMAX_LEVEL_2:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->WIMAX_LEVEL_3:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->WIMAX_LEVEL_4:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->WIMAX_LEVEL_5:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "wimax"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/net/wimax/WimaxController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->initMtWimaxIcon()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->updateMtWimaxIcon()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->updateMtWimaxIcon()V

    return-void
.end method

.method private initMtWimaxIcon()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020208

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private setWibroQhdResourceID5Level(I)V
    .locals 5

    const v2, 0x7f0201f1

    const/4 v4, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f0201f2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f0201f3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f0201f4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f0201f5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setWibroResourceID5Level(I)V
    .locals 5

    const v2, 0x7f0201f7

    const/4 v4, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f0201f8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f0201f9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f0201fa

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f0201fb

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setWimaxResourceID3Level(I)V
    .locals 5

    const v2, 0x7f02020e

    const/4 v4, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020211

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setWimaxResourceID5Level(I)V
    .locals 5

    const v2, 0x7f02020e

    const/4 v4, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f02020f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020211

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setWimaxResourceID6LevelWX(I)V
    .locals 5

    const v2, 0x7f020213

    const/4 v4, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020214

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020215

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020216

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020217

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020218

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateMtWimaxIcon()V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    const-string v3, "HtcWimaxStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info.getDetailedState():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x51

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->setWimaxResourceID6LevelWX(I)V

    :goto_0
    const-string v3, "HtcWimaxStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update WiMAX Signal Status Bar, Signal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v4, "wimax"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x50

    if-ne v3, v4, :cond_3

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->setWibroResourceID5Level(I)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->setWibroQhdResourceID5Level(I)V

    goto :goto_0

    :cond_3
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v6, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->setWimaxResourceID3Level(I)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->setWimaxResourceID5Level(I)V

    goto :goto_0

    :cond_5
    const-string v3, "HtcWimaxStatusBar"

    const-string v4, "set WiMAX Signal Bar invisible"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v4, "wimax"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method
