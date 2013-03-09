.class public Lcom/htc/dmc/DmrListActivity;
.super Landroid/app/Activity;
.source "DmrListActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dmc/DmrListActivity$DlnaInfo;,
        Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;,
        Lcom/htc/dmc/DmrListActivity$DlnaNotifyStub;,
        Lcom/htc/dmc/DmrListActivity$DirectTimerTask;,
        Lcom/htc/dmc/DmrListActivity$DirectSleepTimerTask;,
        Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;
    }
.end annotation


# static fields
.field private static final BT_ENABLING:I = 0x2

.field private static final BT_RENDERER_ADD:I = 0x7

.field private static final CANCEL_SEARCH_DIALOG:I = 0x5

.field public static final CHILD_MENU_BASE:I = 0x10

.field private static final DIRECTMODE_SEARCHING:I = 0x1

.field private static final DIRECTMODE_SLEEP:I = 0x1f4

.field private static final DIRECTMODE_TIMEOUT:I = 0x1388

.field public static final DLNA_CALLER_ALBUM:I = 0x0

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field private static final DMR_SELECTED:I = 0x6

.field public static final FILE_PATH:Ljava/lang/String; = "/data/data/com.htc.dmc/"

.field private static final GET_FIRST_DMR:I = 0x4

.field private static final MENU_REFRESH:I = 0x7d1

.field private static final MSG_BT_ENABLING:I = 0x8

.field private static final REFRESH:I = 0x0

.field private static final RENDERER_ADD:I = 0x2

.field private static final RENDERER_REMOVE:I = 0x1

.field private static final RENDERER_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[DmrListActivity]"

.field public static final TIME_SHOWSPINNER:I = 0x7530

.field private static final UI_ALPHA_DISABLE:I = 0x5f

.field private static final UI_ALPHA_ENABLE:I = 0xff

.field private static final WIFI_ERROR:I = 0x0

.field private static final WL_DISABLED:I = 0x0

.field private static final WL_ENABLED:I = 0x1

.field private static final WL_ING:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

.field private mAdapter:Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;

.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBTPairedDMRCount:I

.field private mBTPairedObjList:[Ljava/lang/Object;

.field mBTScanedDMRCount:I

.field private mBindService:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtnBT:Lcom/htc/widget/HeaderBarImage;

.field private mBtnBTLight:Landroid/widget/ImageView;

.field private mBtnBTListener:Landroid/view/View$OnClickListener;

.field private mBtnCancel:Landroid/view/View;

.field private final mBtnCancelListener:Landroid/view/View$OnClickListener;

.field private mBtnOutput:Landroid/view/View;

.field private mBtnOutputListener:Landroid/view/View$OnClickListener;

.field private mBtnWifi:Lcom/htc/widget/HeaderBarImage;

.field private mBtnWifiLight:Landroid/widget/ImageView;

.field private mBtnWifiListener:Landroid/view/View$OnClickListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCookie:I

.field private mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDefaultBTDmrId:Ljava/lang/String;

.field private mDefaultDmrId:Ljava/lang/String;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDirectMode:I

.field private mDirectSleepTimer:Ljava/util/Timer;

.field private mDirectTimer:Ljava/util/Timer;

.field private mFilter:I

.field private mFooterBar:Lcom/htc/widget/HtcFooter;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderBar:Lcom/htc/widget/HeaderBar;

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsDMREmpty:Z

.field mIsFirstDMR:Z

.field mIsWifiApEnabled:Z

.field private mLastDmr:Lcom/htc/dmc/DmrListActivity$DlnaInfo;

.field private final mListListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mNotifyCallback:Lcom/htc/dmc/DmrListActivity$DlnaNotifyStub;

.field private mPb:Landroid/widget/ProgressBar;

.field private mPreConnectBTDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRenderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/dmc/DmrListActivity$DlnaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;

.field private mRenerID:Ljava/lang/String;

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mShowSpinner:Z

.field mStartedTime:J

.field private mTimer:Landroid/os/CountDownTimer;

.field private mTitleView:Landroid/view/View;

.field private mTxtCurDMRName:Lcom/htc/widget/HeaderBarText;

.field mWifiDMRCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 131
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mAdapter:Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;

    .line 142
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 143
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    .line 144
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBTPairedObjList:[Ljava/lang/Object;

    .line 167
    iput-boolean v2, p0, Lcom/htc/dmc/DmrListActivity;->mBindService:Z

    .line 173
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 174
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mTxtCurDMRName:Lcom/htc/widget/HeaderBarText;

    .line 175
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    .line 176
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifiLight:Landroid/widget/ImageView;

    .line 177
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    .line 178
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBTLight:Landroid/widget/ImageView;

    .line 179
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 180
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBtnOutput:Landroid/view/View;

    .line 181
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBtnCancel:Landroid/view/View;

    .line 362
    iput-boolean v2, p0, Lcom/htc/dmc/DmrListActivity;->mIsWifiApEnabled:Z

    .line 525
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dmc/DmrListActivity;->mStartedTime:J

    .line 1110
    new-instance v0, Lcom/htc/dmc/DmrListActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/dmc/DmrListActivity$7;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBtnOutputListener:Landroid/view/View$OnClickListener;

    .line 1118
    new-instance v0, Lcom/htc/dmc/DmrListActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/dmc/DmrListActivity$8;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifiListener:Landroid/view/View$OnClickListener;

    .line 1125
    new-instance v0, Lcom/htc/dmc/DmrListActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/dmc/DmrListActivity$9;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBTListener:Landroid/view/View$OnClickListener;

    .line 1138
    new-instance v0, Lcom/htc/dmc/DmrListActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/dmc/DmrListActivity$10;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mListListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1166
    new-instance v0, Lcom/htc/dmc/DmrListActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/dmc/DmrListActivity$11;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBtnCancelListener:Landroid/view/View$OnClickListener;

    .line 1351
    new-instance v0, Lcom/htc/dmc/DmrListActivity$12;

    invoke-direct {v0, p0}, Lcom/htc/dmc/DmrListActivity$12;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dmc/DmrListActivity;->mIsFirstDMR:Z

    .line 1431
    new-instance v0, Lcom/htc/dmc/DmrListActivity$DlnaNotifyStub;

    invoke-direct {v0, p0}, Lcom/htc/dmc/DmrListActivity$DlnaNotifyStub;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mNotifyCallback:Lcom/htc/dmc/DmrListActivity$DlnaNotifyStub;

    .line 1569
    new-instance v0, Lcom/htc/dmc/DmrListActivity$13;

    invoke-direct {v0, p0}, Lcom/htc/dmc/DmrListActivity$13;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1811
    iput v2, p0, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    .line 1812
    iput v2, p0, Lcom/htc/dmc/DmrListActivity;->mBTScanedDMRCount:I

    .line 1813
    iput v2, p0, Lcom/htc/dmc/DmrListActivity;->mBTPairedDMRCount:I

    .line 1814
    iput-boolean v2, p0, Lcom/htc/dmc/DmrListActivity;->mIsDMREmpty:Z

    .line 1816
    new-instance v0, Lcom/htc/dmc/DmrListActivity$14;

    invoke-direct {v0, p0}, Lcom/htc/dmc/DmrListActivity$14;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;

    .line 2278
    return-void
.end method

.method private BTPair(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "btDevice"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    const-string v0, "[DmrListActivity]"

    const-string v1, "BT cancel discovery"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 935
    :cond_0
    if-nez p1, :cond_2

    .line 936
    const-string v0, "[DmrListActivity]"

    const-string v1, "BT Device null, pairing failed"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_1
    :goto_0
    return-void

    .line 939
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    if-nez v0, :cond_1

    .line 940
    invoke-virtual {p0}, Lcom/htc/dmc/DmrListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pairing failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 941
    const-string v0, "[DmrListActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pairing failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ConnectBT(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "btDevice"

    .prologue
    .line 1079
    if-nez p1, :cond_0

    .line 1081
    const-string v2, "[DmrListActivity]"

    const-string v3, "passed null BT device for connecting"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :goto_0
    return-void

    .line 1086
    :cond_0
    const-string v1, ""

    .line 1087
    .local v1, szTmp:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 1088
    const-string v1, "Choosed BT, not yet paired. pairing and connecting..."

    .line 1089
    invoke-direct {p0, p1}, Lcom/htc/dmc/DmrListActivity;->BTPair(Landroid/bluetooth/BluetoothDevice;)V

    .line 1105
    :goto_1
    const-string v2, "[DmrListActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1092
    :cond_1
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    invoke-virtual {v2, p1}, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 1093
    .local v0, nChoosedBTDeviceStatus:I
    const-string v2, "[DmrListActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Choosed BT Device connection status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    .line 1099
    const-string v1, "Choosed BT paired, connecting..."

    .line 1100
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    invoke-virtual {v2, p1}, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 1103
    :cond_2
    const-string v1, "Choosed BT already connected/connecting/playing ..."

    goto :goto_1
.end method

.method private DMRSelected()V
    .locals 13

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->getWifiEnabled()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 954
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    .line 955
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mLastDmr:Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    .line 959
    :cond_0
    const/4 v8, 0x0

    .line 960
    .local v8, szLastDmrId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 961
    .local v9, szLastDmrName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 962
    .local v4, nLastDmrIconType:I
    const/4 v5, 0x0

    .line 964
    .local v5, nLastDmrItemType:I
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mLastDmr:Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    if-eqz v10, :cond_1

    .line 966
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mLastDmr:Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v10}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->GetId()Ljava/lang/String;

    move-result-object v8

    .line 967
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mLastDmr:Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v10}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->GetName()Ljava/lang/String;

    move-result-object v9

    .line 968
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mLastDmr:Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v10}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getIconType()I

    move-result v4

    .line 969
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mLastDmr:Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v10}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getItemType()I

    move-result v5

    .line 972
    :cond_1
    const-string v10, "[DmrListActivity]"

    const-string v11, "user apply DMR"

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v10, "[DmrListActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DMR.id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v10, "[DmrListActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LastDMR.id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v10, "[DmrListActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LastDMR.name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v10, "[DmrListActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LastDMR.iconType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v10, "[DmrListActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LastDMR.itemType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_2

    .line 981
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;

    .line 984
    :cond_2
    iget v10, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 986
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DMR"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Lcom/htc/dmc/DmrListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 987
    .local v6, prefAlbum:Landroid/content/SharedPreferences;
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    const-string v11, "DMR"

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v6, :cond_3

    .line 989
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "DMR"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1005
    .end local v6           #prefAlbum:Landroid/content/SharedPreferences;
    :cond_3
    :goto_0
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "DMR"

    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "BTDMR"

    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "LastDMR"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "LastDMRName"

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "LastDMRType"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "LastDMRItemType"

    invoke-interface {v10, v11, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1015
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v10, :cond_7

    .line 1018
    iget v10, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    if-nez v10, :cond_4

    .line 1020
    const/4 v1, 0x0

    .line 1021
    .local v1, a2dpConnectedList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    invoke-virtual {v10}, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 1023
    const-string v10, "[DmrListActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "a2dpDEV:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 1027
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1028
    .local v0, a2dpConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v10, "[DmrListActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "a2dpDEV:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    if-nez v10, :cond_4

    if-eqz v0, :cond_4

    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    invoke-virtual {v10, v0}, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1034
    .end local v0           #a2dpConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #a2dpConnectedList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1035
    .local v2, intent:Landroid/content/Intent;
    const-string v10, "DMR"

    iget-object v11, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    const/4 v10, -0x1

    invoke-virtual {p0, v10, v2}, Lcom/htc/dmc/DmrListActivity;->setResult(ILandroid/content/Intent;)V

    .line 1065
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/htc/dmc/DmrListActivity;->finish()V

    .line 1066
    :goto_2
    return-void

    .line 993
    :cond_6
    iget v10, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 995
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DMR"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Lcom/htc/dmc/DmrListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 996
    .local v7, prefMusic:Landroid/content/SharedPreferences;
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    const-string v11, "DMR"

    const/4 v12, 0x0

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v7, :cond_3

    .line 998
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "DMR"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1041
    .end local v7           #prefMusic:Landroid/content/SharedPreferences;
    :cond_7
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->getBTEnabled()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 1043
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v10}, Lcom/htc/dmc/DmrListActivity;->ConnectBT(Landroid/bluetooth/BluetoothDevice;)V

    .line 1044
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->setResultToMyDevice()V

    .line 1058
    invoke-static {}, Lcom/htc/dmc/utils/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1059
    invoke-virtual {p0}, Lcom/htc/dmc/DmrListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Please remove wired headphones before connecting to BT headphones"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1048
    :cond_8
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1049
    :cond_9
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/dmc/DmrListActivity;->showDialog(I)V

    .line 1051
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mPreConnectBTDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1052
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1053
    .local v3, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v11, 0xc8

    invoke-virtual {v10, v3, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method

.method private HandleBTSink()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1745
    iget v2, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1784
    :goto_0
    return-void

    .line 1749
    :cond_0
    const/4 v1, 0x0

    .line 1750
    .local v1, a2dpConnectedList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    invoke-virtual {v2}, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 1752
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1754
    const-string v2, "[DmrListActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HandleBTSink a2dpDEV count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1756
    .local v0, a2dpConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v2, "[DmrListActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current connected a2dpDEV:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1760
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1761
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;

    .line 1763
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/dmc/DmrListActivity;->setRadioButtonChecked(Ljava/lang/String;)V

    goto :goto_0

    .line 1767
    :cond_1
    iput-object v5, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1768
    iput-object v5, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;

    .line 1770
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/dmc/DmrListActivity;->setRadioButtonChecked(Ljava/lang/String;)V

    goto :goto_0

    .line 1775
    .end local v0           #a2dpConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const-string v2, "[DmrListActivity]"

    const-string v3, "no connected a2dpDEV"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    iput-object v5, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1779
    iput-object v5, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;

    .line 1782
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/dmc/DmrListActivity;->setRadioButtonChecked(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private HandleDirectMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "szDMRID"
    .parameter "szDMRName"

    .prologue
    .line 1410
    iget v2, p0, Lcom/htc/dmc/DmrListActivity;->mDirectMode:I

    if-eqz v2, :cond_0

    .line 1412
    iget-boolean v2, p0, Lcom/htc/dmc/DmrListActivity;->mIsFirstDMR:Z

    if-eqz v2, :cond_0

    .line 1414
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/dmc/DmrListActivity;->mIsFirstDMR:Z

    .line 1416
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1417
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1418
    .local v0, bd:Landroid/os/Bundle;
    const-string v2, "arg0"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v2, "arg1"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1421
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1428
    .end local v0           #bd:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private RegisterBroadcast(Z)V
    .locals 3
    .parameter "bReg"

    .prologue
    .line 1532
    if-eqz p1, :cond_1

    .line 1534
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1537
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1539
    iget v1, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1542
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1545
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1546
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1547
    const-string v1, "android.bluetooth.device.action.DISAPPEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1548
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1549
    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1552
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1553
    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1556
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1558
    const-string v1, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1561
    :cond_0
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/dmc/DmrListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1567
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 1565
    :cond_1
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/dmc/DmrListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/htc/dmc/DmrListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/htc/dmc/DmrListActivity;->mShowSpinner:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/dmc/DmrListActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/dmc/DmrListActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/dmc/DmrListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/dmc/DmrListActivity;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mDirectSleepTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/dmc/DmrListActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity;->mDirectSleepTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/dmc/DmrListActivity;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mDirectTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/dmc/DmrListActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity;->mDirectTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/dmc/DmrListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/dmc/DmrListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/htc/dmc/DmrListActivity;->mDirectMode:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/dmc/DmrListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/htc/dmc/DmrListActivity;->mDirectMode:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/dmc/DmrListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/htc/dmc/DmrListActivity;->mBindService:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/dmc/DmrListActivity;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/htc/dmc/DmrListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dmc/DmrListActivity$DlnaNotifyStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mNotifyCallback:Lcom/htc/dmc/DmrListActivity$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/dmc/DmrListActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/dmc/DmrListActivity;->refreshUIBT(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/dmc/DmrListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/htc/dmc/DmrListActivity;->mFilter:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/htc/dmc/DmrListActivity;->HandleDirectMode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/dmc/DmrListActivity;[Lcom/htc/dlnainterface/DLNARendererData;)[Lcom/htc/dlnainterface/DLNARendererData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/htc/dmc/DmrListActivity;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/dmc/DmrListActivity;->isBTMusicSupported(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/dmc/DmrListActivity;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/dmc/DmrListActivity;->isBTInPairedList(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/dmc/DmrListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->HandleBTSink()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/dmc/DmrListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->refreshUIWifi()V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mAdapter:Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dmc/DmrListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->DMRSelected()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/dmc/DmrListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/dmc/DmrListActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mPreConnectBTDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/dmc/DmrListActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/dmc/DmrListActivity;->ConnectBT(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/dmc/DmrListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->setResultToMyDevice()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/dmc/DmrListActivity;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBTPairedObjList:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/htc/dmc/DmrListActivity;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity;->mBTPairedObjList:[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/htc/dmc/DmrListActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dmc/DmrListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->getWifiEnabled()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/dmc/DmrListActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/dmc/DmrListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->getBTEnabled()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/dmc/DmrListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/dmc/DmrListActivity;Lcom/htc/dmc/DmrListActivity$DlnaInfo;)Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity;->mLastDmr:Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    return-object p1
.end method

.method private getBTEnabled()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 581
    const/4 v1, 0x0

    .line 584
    .local v1, nRetval:I
    iget v3, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v2

    .line 586
    :cond_1
    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity;->mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    invoke-virtual {v3}, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->isServiceReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 588
    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_0

    .line 589
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 591
    .local v0, btState:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v2, v1

    .line 602
    goto :goto_0

    .line 594
    :pswitch_0
    const/4 v1, 0x1

    .line 595
    goto :goto_1

    .line 598
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_1

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getWifiEnabled()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 552
    const/4 v0, 0x0

    .line 554
    .local v0, nRetval:I
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/htc/dmc/DmrListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 555
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 556
    .local v3, wifiState:I
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    .line 558
    .local v1, wifiApState:Z
    packed-switch v3, :pswitch_data_0

    .line 569
    :goto_0
    :pswitch_0
    if-ne v1, v5, :cond_0

    .line 571
    const/4 v0, 0x1

    .line 572
    iput-boolean v5, p0, Lcom/htc/dmc/DmrListActivity;->mIsWifiApEnabled:Z

    .line 577
    :goto_1
    return v0

    .line 561
    :pswitch_1
    const/4 v0, 0x1

    .line 562
    goto :goto_0

    .line 565
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 575
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/dmc/DmrListActivity;->mIsWifiApEnabled:Z

    goto :goto_1

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isBTInPairedList(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 1800
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBTPairedObjList:[Ljava/lang/Object;

    .line 1801
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBTPairedObjList:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1802
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBTPairedObjList:[Ljava/lang/Object;

    aget-object v0, v2, v1

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1803
    .local v0, BTPairedDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1804
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1805
    const/4 v2, 0x1

    .line 1808
    .end local v0           #BTPairedDevice:Landroid/bluetooth/BluetoothDevice;
    :goto_1
    return v2

    .line 1801
    .restart local v0       #BTPairedDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1808
    .end local v0           #BTPairedDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isBTMusicSupported(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "btDevice"

    .prologue
    const/4 v1, 0x0

    .line 1787
    if-nez p1, :cond_0

    .line 1795
    :goto_0
    return v1

    .line 1788
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 1790
    .local v0, BTCls:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 1791
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    goto :goto_0

    .line 1794
    :cond_1
    const-string v2, "[DmrListActivity]"

    const-string v3, "cannot get bluetooth class"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshDMR()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 802
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->getWifiEnabled()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 805
    :try_start_0
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 806
    invoke-virtual {p0}, Lcom/htc/dmc/DmrListActivity;->showLoading()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->getBTEnabled()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 813
    invoke-direct {p0, v3}, Lcom/htc/dmc/DmrListActivity;->refreshUIBT(Z)V

    .line 815
    :cond_1
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshUIBT(Z)V
    .locals 7
    .parameter "bAllowStartScan"

    .prologue
    const v6, 0x2080b05

    const v3, 0x208088d

    const/16 v5, 0xff

    const/4 v4, 0x1

    .line 440
    iget v1, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    if-eq v1, v4, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    if-eqz v1, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->getBTEnabled()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 521
    :goto_1
    invoke-virtual {p0}, Lcom/htc/dmc/DmrListActivity;->showLoading()V

    goto :goto_0

    .line 445
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    const-string v2, "common_icon_glance_bluetooth_on"

    invoke-static {p0, v2, v3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 451
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBTLight:Landroid/widget/ImageView;

    const-string v2, "common_titlebar_btn_on"

    invoke-static {p0, v2, v6}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 457
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBTLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 458
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 461
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    .line 463
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 464
    const-string v1, "[DmrListActivity]"

    const-string v2, "BT discoverying started..."

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_2

    .line 472
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    iget v3, p0, Lcom/htc/dmc/DmrListActivity;->mFilter:I

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->HandleBTSink()V

    goto :goto_1

    .line 466
    :cond_3
    const-string v1, "[DmrListActivity]"

    const-string v2, "BT discoverying starting failed."

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 468
    :cond_4
    const-string v1, "[DmrListActivity]"

    const-string v2, "BT under discoverying..."

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 479
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    const-string v2, "common_icon_glance_bluetooth_on"

    invoke-static {p0, v2, v3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 485
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBTLight:Landroid/widget/ImageView;

    const-string v2, "common_titlebar_btn_on"

    invoke-static {p0, v2, v6}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 491
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBTLight:Landroid/widget/ImageView;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 492
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    goto/16 :goto_1

    .line 496
    :pswitch_2
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    const-string v2, "common_icon_glance_bluetooth_off"

    const v3, 0x208088c

    invoke-static {p0, v2, v3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 502
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBTLight:Landroid/widget/ImageView;

    const-string v2, "common_titlebar_btn_off"

    const v3, 0x2080b04

    invoke-static {p0, v2, v3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 508
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBTLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 509
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 513
    :try_start_1
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_5

    .line 514
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    iget v3, p0, Lcom/htc/dmc/DmrListActivity;->mFilter:I

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 518
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->HandleBTSink()V

    goto/16 :goto_1

    .line 515
    :catch_1
    move-exception v0

    .line 516
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private refreshUIWifi()V
    .locals 8

    .prologue
    const v7, 0x2080b05

    const v6, 0x20809a4

    const/16 v5, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 364
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->getWifiEnabled()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 436
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dmc/DmrListActivity;->showLoading()V

    .line 437
    return-void

    .line 367
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    const-string v2, "common_icon_glance_wifi_on"

    invoke-static {p0, v2, v6}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 373
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifiLight:Landroid/widget/ImageView;

    const-string v2, "common_titlebar_btn_on"

    invoke-static {p0, v2, v7}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 379
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifiLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 381
    iget-boolean v1, p0, Lcom/htc/dmc/DmrListActivity;->mIsWifiApEnabled:Z

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 389
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    iget v3, p0, Lcom/htc/dmc/DmrListActivity;->mFilter:I

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 384
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    goto :goto_1

    .line 396
    :pswitch_1
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    const-string v2, "common_icon_glance_wifi_on"

    invoke-static {p0, v2, v6}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 402
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifiLight:Landroid/widget/ImageView;

    const-string v2, "common_titlebar_btn_on"

    invoke-static {p0, v2, v7}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifiLight:Landroid/widget/ImageView;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 409
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    goto :goto_0

    .line 413
    :pswitch_2
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    const-string v2, "common_icon_glance_wifi_off"

    const v3, 0x20809a3

    invoke-static {p0, v2, v3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 419
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifiLight:Landroid/widget/ImageView;

    const-string v2, "common_titlebar_btn_off"

    const v3, 0x2080b04

    invoke-static {p0, v2, v3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifiLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 426
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 429
    :try_start_1
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    iget v3, p0, Lcom/htc/dmc/DmrListActivity;->mFilter:I

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 431
    :catch_1
    move-exception v0

    .line 432
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setResultToMyDevice()V
    .locals 3

    .prologue
    .line 1071
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1072
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "DMR"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/dmc/DmrListActivity;->setResult(ILandroid/content/Intent;)V

    .line 1074
    return-void
.end method


# virtual methods
.method public GetDMRPref()Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 1223
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "DMR"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;

    .line 1224
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "BTDMR"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;

    .line 1227
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "LastDMR"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1228
    .local v2, ID:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "LastDMRName"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1229
    .local v3, Name:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "LastDMRType"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1230
    .local v4, Type:I
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "LastDMRItemType"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1231
    .local v5, ItemType:I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1232
    new-instance v0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;-><init>(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1236
    :cond_0
    return-object v0
.end method

.method public TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 3
    .parameter "timer"

    .prologue
    .line 1293
    const-string v0, "[DmrListActivity]"

    const-string v1, "Timer Disable+"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    if-eqz p1, :cond_0

    .line 1297
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1298
    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 1299
    const-string v0, "[DmrListActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer Disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const/4 p1, 0x0

    .line 1305
    :goto_0
    const-string v0, "[DmrListActivity]"

    const-string v1, "Timer Disable-"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    return-object p1

    .line 1303
    :cond_0
    const-string v0, "[DmrListActivity]"

    const-string v1, "Timer null"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;
    .locals 3
    .parameter "timer"
    .parameter "timertask"
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 1311
    const-string v0, "[DmrListActivity]"

    const-string v1, "Timer Enable+"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    if-nez p1, :cond_0

    .line 1314
    new-instance p1, Ljava/util/Timer;

    .end local p1
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 1315
    .restart local p1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_1

    .line 1316
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1319
    :goto_0
    const-string v0, "[DmrListActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    :cond_0
    const-string v0, "[DmrListActivity]"

    const-string v1, "Timer Enable-"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    return-object p1

    .line 1318
    :cond_1
    invoke-virtual/range {p1 .. p6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public cancelSearchDialog()V
    .locals 2

    .prologue
    .line 733
    const-string v0, "[DmrListActivity]"

    const-string v1, "cancelSearchDialog"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 735
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    const-string v0, "[DmrListActivity]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const v6, 0x7f050022

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0, v4}, Lcom/htc/dmc/DmrListActivity;->requestWindowFeature(I)Z

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;

    .line 206
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/htc/dmc/DmrListActivity;->setContentView(I)V

    .line 208
    invoke-virtual {p0}, Lcom/htc/dmc/DmrListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cookie"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    .line 210
    const-string v1, "filter"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/dmc/DmrListActivity;->mFilter:I

    .line 211
    const-string v1, "directmode"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/dmc/DmrListActivity;->mDirectMode:I

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/dmc/DmrListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 214
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/htc/dmc/DmrListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 217
    const v1, 0x7f050021

    invoke-virtual {p0, v1}, Lcom/htc/dmc/DmrListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 218
    new-instance v1, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;-><init>(Lcom/htc/dmc/DmrListActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mAdapter:Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;

    .line 219
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mAdapter:Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mListListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 239
    new-instance v1, Lcom/htc/widget/HeaderBarTall;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarTall;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 240
    const v1, 0x7f05001e

    invoke-virtual {p0, v1}, Lcom/htc/dmc/DmrListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 246
    new-instance v1, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mTxtCurDMRName:Lcom/htc/widget/HeaderBarText;

    .line 247
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mTxtCurDMRName:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 249
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mTxtCurDMRName:Lcom/htc/widget/HeaderBarText;

    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 250
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mTxtCurDMRName:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 252
    iget v1, p0, Lcom/htc/dmc/DmrListActivity;->mCookie:I

    if-ne v1, v4, :cond_0

    .line 255
    new-instance v1, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    .line 256
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBTLight:Landroid/widget/ImageView;

    .line 257
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBar;->addRightView(Landroid/view/View;)V

    .line 258
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 259
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f08001f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 260
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBTListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBT:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBTLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    .line 262
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnBTLight:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    :cond_0
    new-instance v1, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    .line 267
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifiLight:Landroid/widget/ImageView;

    .line 268
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBar;->addRightView(Landroid/view/View;)V

    .line 269
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 270
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f08001e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 271
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifiListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifi:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifiLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    .line 273
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnWifiLight:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    new-instance v1, Lcom/htc/widget/HtcFooter;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 277
    invoke-virtual {p0, v6}, Lcom/htc/dmc/DmrListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooter;

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 279
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f050024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnOutput:Landroid/view/View;

    .line 280
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnOutput:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBtnOutputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f050023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnCancel:Landroid/view/View;

    .line 283
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBtnCancel:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mBtnCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 287
    new-instance v1, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    invoke-virtual {p0}, Lcom/htc/dmc/DmrListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;-><init>(Lcom/htc/dmc/DmrListActivity;Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    .line 289
    invoke-virtual {p0}, Lcom/htc/dmc/DmrListActivity;->GetDMRPref()Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    .line 292
    iput-boolean v5, p0, Lcom/htc/dmc/DmrListActivity;->mShowSpinner:Z

    .line 294
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    .line 295
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooter;->enableSecondBackground(Z)V

    .line 298
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->refreshUIWifi()V

    .line 299
    invoke-direct {p0, v4}, Lcom/htc/dmc/DmrListActivity;->refreshUIBT(Z)V

    .line 325
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 739
    packed-switch p1, :pswitch_data_0

    .line 798
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 741
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x20c009e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/dmc/DmrListActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/dmc/DmrListActivity$4;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c0200

    new-instance v2, Lcom/htc/dmc/DmrListActivity$3;

    invoke-direct {v2, p0}, Lcom/htc/dmc/DmrListActivity$3;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c013d

    new-instance v2, Lcom/htc/dmc/DmrListActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/dmc/DmrListActivity$2;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 764
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 765
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lcom/htc/dmc/DmrListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 766
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 767
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 768
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/htc/dmc/DmrListActivity$5;

    invoke-direct {v1, p0}, Lcom/htc/dmc/DmrListActivity$5;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 778
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 780
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 781
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Turning on Bluetooth..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 783
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 784
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/htc/dmc/DmrListActivity$6;

    invoke-direct {v1, p0}, Lcom/htc/dmc/DmrListActivity$6;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 794
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 337
    const-string v0, "[DmrListActivity]"

    const-string v1, "onCreateOptionMenu"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 340
    const/16 v0, 0x7d1

    const v1, 0x20c0202

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 342
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->getWifiEnabled()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->getWifiEnabled()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 343
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 347
    :goto_0
    return v3

    .line 345
    :cond_0
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 639
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 641
    const-string v0, "[DmrListActivity]"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 647
    const-string v0, "[DmrListActivity]"

    const-string v1, "dialog dismiss"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 649
    iput-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 651
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 352
    const-string v1, "[DmrListActivity]"

    const-string v2, "onOptionItem Selected"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 354
    .local v0, nMenuFuncId:I
    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 356
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->refreshDMR()V

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 331
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 332
    invoke-virtual {p0, p1}, Lcom/htc/dmc/DmrListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 529
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 531
    iget v1, p0, Lcom/htc/dmc/DmrListActivity;->mDirectMode:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->getWifiEnabled()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dmc/DmrListActivity;->mStartedTime:J

    .line 534
    invoke-virtual {p0, v5}, Lcom/htc/dmc/DmrListActivity;->showDialog(I)V

    .line 537
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/htc/dmc/DmrListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 538
    const-string v1, "[DmrListActivity]"

    const-string v2, "bindservice..."

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/htc/dmc/DmrListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 540
    .local v0, bBindRes:Z
    const-string v1, "[DmrListActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindservice result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iput-boolean v5, p0, Lcom/htc/dmc/DmrListActivity;->mBindService:Z

    .line 543
    invoke-direct {p0, v5}, Lcom/htc/dmc/DmrListActivity;->RegisterBroadcast(Z)V

    .line 544
    return-void
.end method

.method protected onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 607
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 608
    const-string v1, "[DmrListActivity]"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity;->mNotifyCallback:Lcom/htc/dmc/DmrListActivity$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 620
    :cond_0
    iget-boolean v1, p0, Lcom/htc/dmc/DmrListActivity;->mBindService:Z

    if-ne v1, v5, :cond_1

    .line 621
    const-string v1, "[DmrListActivity]"

    const-string v2, "unbindservice"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/htc/dmc/DmrListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 623
    iput-boolean v4, p0, Lcom/htc/dmc/DmrListActivity;->mBindService:Z

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mDirectTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/dmc/DmrListActivity;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mDirectTimer:Ljava/util/Timer;

    .line 626
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mDirectSleepTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/dmc/DmrListActivity;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mDirectSleepTimer:Ljava/util/Timer;

    .line 628
    invoke-direct {p0, v4}, Lcom/htc/dmc/DmrListActivity;->RegisterBroadcast(Z)V

    .line 630
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 632
    const-string v1, "[DmrListActivity]"

    const-string v2, "BT cancel discovery"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 635
    :cond_2
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 615
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRadioButtonChecked(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 1180
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1181
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    if-ne v0, p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->SetChecked(Z)V

    .line 1180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1181
    goto :goto_1

    .line 1183
    :cond_1
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1184
    return-void
.end method

.method public setRadioButtonChecked(Ljava/lang/String;)V
    .locals 4
    .parameter "uniqueID"

    .prologue
    .line 1187
    const-string v1, "[DmrListActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set radio btn by uniqueID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    if-nez p1, :cond_1

    .line 1191
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/dmc/DmrListActivity;->setRadioButtonChecked(I)V

    .line 1219
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1198
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v1}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->GetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v1}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->GetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1200
    invoke-virtual {p0, v0}, Lcom/htc/dmc/DmrListActivity;->setRadioButtonChecked(I)V

    goto :goto_0

    .line 1206
    :cond_2
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v1}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->GetId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1208
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v1}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getBTDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v1}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getBTDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v1}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getBTDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1212
    invoke-virtual {p0, v0}, Lcom/htc/dmc/DmrListActivity;->setRadioButtonChecked(I)V

    goto :goto_0

    .line 1197
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public showLoading()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 663
    invoke-direct {p0}, Lcom/htc/dmc/DmrListActivity;->getWifiEnabled()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/dmc/DmrListActivity;->showSpinner(Z)V

    .line 666
    iput-boolean v1, p0, Lcom/htc/dmc/DmrListActivity;->mShowSpinner:Z

    .line 668
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 671
    :cond_1
    new-instance v0, Lcom/htc/dmc/DmrListActivity$1;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/dmc/DmrListActivity$1;-><init>(Lcom/htc/dmc/DmrListActivity;JJ)V

    invoke-virtual {v0}, Lcom/htc/dmc/DmrListActivity$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mTimer:Landroid/os/CountDownTimer;

    .line 687
    :goto_0
    return-void

    .line 684
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/dmc/DmrListActivity;->showSpinner(Z)V

    .line 685
    iput-boolean v2, p0, Lcom/htc/dmc/DmrListActivity;->mShowSpinner:Z

    goto :goto_0
.end method

.method public showSpinner(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_0

    .line 656
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 659
    :cond_0
    return-void

    .line 656
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
