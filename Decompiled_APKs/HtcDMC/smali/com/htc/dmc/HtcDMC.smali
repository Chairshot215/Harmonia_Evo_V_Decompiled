.class public Lcom/htc/dmc/HtcDMC;
.super Landroid/app/Activity;
.source "HtcDMC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dmc/HtcDMC$SwitchTimerTask;,
        Lcom/htc/dmc/HtcDMC$PgTimerTask;,
        Lcom/htc/dmc/HtcDMC$PosTimerTask;,
        Lcom/htc/dmc/HtcDMC$DMCStatus;,
        Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    }
.end annotation


# static fields
.field private static final ADD_NOW_PLAYING_TO_LIST:I = 0x27

.field private static final CHANGE_NOW_PLAYING_ORDER:I = 0x26

.field private static final CHOOSE_DMR:I = 0x14

.field private static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field private static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field private static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field public static final DIALOG_DMR_CANNOTPLAY:I = 0x3

.field public static final DIALOG_DMR_DISCONNECT:I = 0x0

.field public static final DIALOG_DMR_REQTIMEOUT:I = 0x1

.field public static final DIALOG_DMS_DISCONNECT:I = 0x2

.field public static final DIALOG_WIFI_ERROR:I = 0x4

.field private static final DLNA_COOKIE_GALLERY:I = 0x0

.field private static final DLNA_COOKIE_MUSIC:I = 0x1

.field private static final DLNA_MODE_MUSIC:I = 0x1

.field private static final DLNA_MODE_PHOTO:I = 0x2

.field private static final DLNA_MODE_VIDEO:I = 0x0

.field private static final DMCAPP_STATUS:I = 0x12d

.field public static final DMC_FORCE_OFF:I = 0x2

.field public static final DMC_FORCE_ON:I = 0x1

.field public static final DMC_NOFORCE:I = 0x0

.field private static final DMC_TIMEOUT_KEY:Ljava/lang/String; = "dmc_timeout_setting"

.field public static final INTENT_ACTION_ADDTOPLAYLIST:Ljava/lang/String; = "com.htc.dmc.addtoplaylist"

.field public static final INTENT_ACTION_PLAY:Ljava/lang/String; = "com.htc.dmc.play"

.field public static final INTENT_ACTION_SETSTATESYNC:Ljava/lang/String; = "com.htc.dmc.setstatesync"

.field public static final INTENT_ACTION_SHOWDETAILS:Ljava/lang/String; = "com.htc.dmc.showdetails"

.field public static final KEEP_HISTORY:Ljava/lang/String; = "KeepHistory"

.field private static final LANDSCAPE_GALLERY_PANEL:I = 0xf

.field private static final LANDSCAPE_MUSIC_PANEL:I = 0x6

.field private static final MENU_ADDTOPLAYLIST:I = 0x4b6

.field private static final MENU_CHANGEORDER:I = 0x4b7

.field private static final MENU_EDITNP:I = 0x4b5

.field private static final MENU_OUTPUT:I = 0x4b8

.field private static final MENU_PROPERTIES:I = 0x4b3

.field private static final MENU_REPEAT:I = 0x4b2

.field private static final MENU_SETTINGS:I = 0x4b4

.field private static final MENU_SHUFFLE:I = 0x4b1

.field private static final NOSET_ALPHA:I = -0x1

.field private static final NOSET_LABEL:I = -0x1

.field private static final NOTIFY_CTRL_ERROR:I = 0x64

.field private static final NOTIFY_CTRL_RESPONSE:I = 0x65

.field private static final NOTIFY_DMR_MSG_TIMEOUT:I = 0x69

.field private static final NOTIFY_DMR_REMOVED:I = 0x67

.field private static final NOTIFY_DMR_TIMEOUT:I = 0x68

.field private static final NOTIFY_DMS_REMOVED:I = 0x6a

.field private static final NOTIFY_SHOW_DETAILS:I = 0x6b

.field private static final NOTIFY_VOLBLOCK_TIMEOUT:I = 0xca

.field private static final NOTIFY_VOLUI_TIMEOUT:I = 0xc9

.field private static final NOTIFY_WANT_POWEROFF:I = 0x66

.field private static final PORTRAIT_NORMAL:I = 0x0

.field private static final REFRESH_ALBUMART:I = 0x1

.field private static final REFRESH_DMCPREP:I = 0x9

.field private static final REFRESH_DMR:I = 0x8

.field private static final REFRESH_INFO:I = 0x0

.field private static final REFRESH_LISTINDEX:I = 0x2

.field private static final REFRESH_PLAYSTATE:I = 0x4

.field private static final REFRESH_RSTATE:I = 0x5

.field private static final REFRESH_SSTATE:I = 0x6

.field private static final REFRESH_TIME:I = 0x3

.field private static final REFRESH_VOLUME:I = 0x7

.field public static final REMOVE_STORE_HISTORY:Ljava/lang/String; = "RemoveStoreHistory"

.field protected static final STATE_TIMEOUT_GALLERY:J = 0x88b8L

.field protected static final STATE_TIMEOUT_MSG:J = 0xfa0L

.field protected static final STATE_TIMEOUT_MUSIC:J = 0x61a8L

.field private static final TAG:Ljava/lang/String; = "[HtcDMC]"

.field private static final UI_ALPHA_DISABLE:I = 0x5f

.field private static final UI_ALPHA_ENABLE:I = 0xff

.field private static final VOLBLOCK_TIMEOUT:I = 0xfa

.field private static final VOLUI_TIMEOUT:I = 0xbb8

.field protected static final VOL_LEVEL_COUNT:I = 0x32

.field private static mContext:Landroid/content/Context;

.field private static mScreenHeight:I

.field private static mScreenWidth:I

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field private mAdditionalMessage:Landroid/widget/TextView;

.field private mBtnDMR:Lcom/htc/widget/HeaderBarImage;

.field private mBtnDMRListener:Landroid/view/View$OnClickListener;

.field private mBtnHPower:Lcom/htc/widget/HeaderBarImage;

.field private mBtnLib:Lcom/htc/widget/HeaderBarImage;

.field private mBtnLibListener:Landroid/view/View$OnClickListener;

.field private mBtnMore:Landroid/view/View;

.field private mBtnMoreListener:Landroid/view/View$OnClickListener;

.field private mBtnNext:Landroid/view/View;

.field private mBtnNextListener:Landroid/view/View$OnClickListener;

.field private mBtnPP:Landroid/view/View;

.field private mBtnPPListener:Landroid/view/View$OnClickListener;

.field private mBtnPower:Landroid/view/View;

.field private mBtnPowerListener:Landroid/view/View$OnClickListener;

.field private mBtnPrev:Landroid/view/View;

.field private mBtnPrevListener:Landroid/view/View$OnClickListener;

.field private mBtnRepeat:Landroid/widget/ImageButton;

.field private mBtnRepeatListener:Landroid/view/View$OnClickListener;

.field private mBtnSRS:Landroid/widget/ImageButton;

.field private mBtnShuffle:Landroid/widget/ImageButton;

.field private mBtnShuffleListener:Landroid/view/View$OnClickListener;

.field private mBtnVol:Lcom/htc/widget/HeaderBarImage;

.field private mBtnVolDownListener:Landroid/view/View$OnClickListener;

.field private mBtnVolListener:Landroid/view/View$OnClickListener;

.field private mBtnVolUpListener:Landroid/view/View$OnClickListener;

.field private mCallbackUnregistered:Z

.field private mCurContainerID:Ljava/lang/String;

.field private mCurContentID:Ljava/lang/String;

.field private mCurCookie:I

.field private mCurDMRID:Ljava/lang/String;

.field private mCurDMRName:Ljava/lang/String;

.field private mCurFCap:I

.field private mCurFilePath:Ljava/lang/String;

.field private mCurFolderID:Ljava/lang/String;

.field private mCurFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field private mCurFolderName:Ljava/lang/String;

.field private mCurFolderPanelID:Ljava/lang/String;

.field private mCurFolderPosition:Ljava/lang/String;

.field private mCurFolderType:Ljava/lang/String;

.field private mCurIndex:I

.field private mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

.field private mCurMode:I

.field private mCurPLDirection:I

.field private mCurPLEndIdx:J

.field private mCurPLStartIdx:J

.field private mCurPushList:[I

.field private mCurServerID:Ljava/lang/String;

.field private mCurSlideDur:I

.field private mCurSource:I

.field private mCurThumbHQ:Z

.field private mDMCActionListener:Landroid/content/BroadcastReceiver;

.field private mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;

.field private mDMCPref:Landroid/content/SharedPreferences;

.field private mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

.field private mFooterBar:Lcom/htc/widget/HtcFooter;

.field private final mHandler:Landroid/os/Handler;

.field private mHeaderBar:Lcom/htc/widget/HeaderBar;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mImgAlbumArt:Landroid/widget/ImageView;

.field private mImgAlbumArtReflect:Landroid/widget/ImageView;

.field private mIsBtnPPEnable:Z

.field public mIsDMCLineOn:Z

.field private mIsNewIntented:Z

.field private mIsNewLaunch:Z

.field private mIsRequestDetails:Z

.field private mIsResetPlaylist:Z

.field private mLargeStreamIcon:Landroid/widget/ImageView;

.field private mMoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMoreMenuMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mMoreMenuPopupWindow:Lcom/htc/widget/HtcPopupWindowWrapper;

.field private mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

.field private mOncePlayed:Z

.field private mOrientation:I

.field private mPgMain:Lcom/htc/widget/HtcSeekBar;

.field private mPgMainListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPgVideo:Lcom/htc/widget/HtcSeekBar;

.field private mPgVideoListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPosOverride:J

.field private mPosTimer:Ljava/util/Timer;

.field private mQueueArrow:Landroid/widget/ImageView;

.field private mQueueList:Landroid/view/View;

.field private mQueueText:Landroid/widget/TextView;

.field private mQueueTouchListner:Landroid/view/View$OnTouchListener;

.field private mSC:Landroid/content/ServiceConnection;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mServiceUnbinded:Z

.field private mSwitchTimer:Ljava/util/Timer;

.field private mTxtAlbumName:Landroid/widget/TextView;

.field private mTxtArtistName:Landroid/widget/TextView;

.field private mTxtCurDMRName:Landroid/widget/TextView;

.field private mTxtDMRTitle:Landroid/widget/TextView;

.field private mTxtElapseTime:Landroid/widget/TextView;

.field private mTxtRemainTime:Landroid/widget/TextView;

.field private mTxtTrackName:Landroid/widget/TextView;

.field private mVolListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mVolSetBlocked:Z

.field private mVolumeDialog:Landroid/app/Dialog;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private mVolumeLevel:Landroid/widget/SeekBar;

.field private mVolumeMessage:Landroid/widget/TextView;

.field private mVolumeView:Landroid/view/View;

.field private mszAppTitle:Ljava/lang/String;

.field private mszListIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    .line 126
    sput v1, Lcom/htc/dmc/HtcDMC;->mScreenWidth:I

    .line 127
    sput v1, Lcom/htc/dmc/HtcDMC;->mScreenHeight:I

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/dmc/HtcDMC;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 139
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/dmc/HtcDMC;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/dmc/HtcDMC;->sFormatter:Ljava/util/Formatter;

    .line 141
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/dmc/HtcDMC;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 520
    new-instance v0, Lcom/htc/dmc/HtcDMC$1;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$1;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCActionListener:Landroid/content/BroadcastReceiver;

    .line 546
    new-instance v0, Lcom/htc/dmc/HtcDMC$2;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$2;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 848
    new-instance v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    invoke-direct {v0, p0, v2}, Lcom/htc/dmc/HtcDMC$DMCItemInfo;-><init>(Lcom/htc/dmc/HtcDMC;Lcom/htc/dmc/HtcDMC$1;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    .line 849
    new-instance v0, Lcom/htc/dmc/HtcDMC$DMCStatus;

    invoke-direct {v0, p0, v2}, Lcom/htc/dmc/HtcDMC$DMCStatus;-><init>(Lcom/htc/dmc/HtcDMC;Lcom/htc/dmc/HtcDMC$1;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    .line 851
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 902
    iput-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mServiceUnbinded:Z

    .line 903
    iput-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z

    .line 906
    iput-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mIsNewIntented:Z

    .line 908
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mPosTimer:Ljava/util/Timer;

    .line 910
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mSwitchTimer:Ljava/util/Timer;

    .line 912
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    .line 913
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRName:Ljava/lang/String;

    .line 914
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    .line 917
    iput-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z

    .line 920
    iput v1, p0, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    .line 921
    iput v1, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    .line 925
    iput v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    .line 926
    iput v1, p0, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    .line 927
    iput v3, p0, Lcom/htc/dmc/HtcDMC;->mCurSlideDur:I

    .line 929
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    .line 930
    iput v1, p0, Lcom/htc/dmc/HtcDMC;->mCurIndex:I

    .line 935
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    .line 937
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    .line 938
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;

    .line 939
    iput-wide v4, p0, Lcom/htc/dmc/HtcDMC;->mCurPLStartIdx:J

    .line 940
    iput-wide v4, p0, Lcom/htc/dmc/HtcDMC;->mCurPLEndIdx:J

    .line 941
    iput v3, p0, Lcom/htc/dmc/HtcDMC;->mCurPLDirection:I

    .line 944
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderID:Ljava/lang/String;

    .line 945
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderType:Ljava/lang/String;

    .line 946
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderName:Ljava/lang/String;

    .line 947
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderPosition:Ljava/lang/String;

    .line 948
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderPanelID:Ljava/lang/String;

    .line 949
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderList:Ljava/util/ArrayList;

    .line 952
    iput-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    .line 953
    iput-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mOncePlayed:Z

    .line 957
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mPgMain:Lcom/htc/widget/HtcSeekBar;

    .line 958
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mPgVideo:Lcom/htc/widget/HtcSeekBar;

    .line 963
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 964
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 965
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    .line 966
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mBtnVol:Lcom/htc/widget/HeaderBarImage;

    .line 969
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mBtnDMR:Lcom/htc/widget/HeaderBarImage;

    .line 973
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mQueueList:Landroid/view/View;

    .line 974
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mQueueText:Landroid/widget/TextView;

    .line 975
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mQueueArrow:Landroid/widget/ImageView;

    .line 976
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 978
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mBtnMore:Landroid/view/View;

    .line 979
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mBtnPower:Landroid/view/View;

    .line 981
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mBtnHPower:Lcom/htc/widget/HeaderBarImage;

    .line 983
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrev:Landroid/view/View;

    .line 984
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    .line 985
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mBtnNext:Landroid/view/View;

    .line 987
    iput-boolean v1, p0, Lcom/htc/dmc/HtcDMC;->mIsBtnPPEnable:Z

    .line 994
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mBtnSRS:Landroid/widget/ImageButton;

    .line 995
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mTxtDMRTitle:Landroid/widget/TextView;

    .line 998
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;

    .line 999
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mBtnShuffle:Landroid/widget/ImageButton;

    .line 1001
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    .line 1002
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArtReflect:Landroid/widget/ImageView;

    .line 1004
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mszAppTitle:Ljava/lang/String;

    .line 1006
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mTxtTrackName:Landroid/widget/TextView;

    .line 1007
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mTxtArtistName:Landroid/widget/TextView;

    .line 1008
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mTxtAlbumName:Landroid/widget/TextView;

    .line 1009
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    .line 1011
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mTxtElapseTime:Landroid/widget/TextView;

    .line 1012
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mTxtRemainTime:Landroid/widget/TextView;

    .line 1013
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mTxtCurDMRName:Landroid/widget/TextView;

    .line 1015
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 1028
    new-instance v0, Lcom/htc/dmc/HtcDMC$3;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$3;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    .line 2763
    new-instance v0, Lcom/htc/dmc/HtcDMC$11;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$11;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mSC:Landroid/content/ServiceConnection;

    .line 3016
    iput-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mIsRequestDetails:Z

    .line 3413
    iput-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mIsDMCLineOn:Z

    .line 3457
    new-instance v0, Lcom/htc/dmc/HtcDMC$12;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$12;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;

    .line 3719
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dmc/HtcDMC;->mPosOverride:J

    .line 3768
    new-instance v0, Lcom/htc/dmc/HtcDMC$13;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$13;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPgMainListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3789
    new-instance v0, Lcom/htc/dmc/HtcDMC$14;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$14;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPgVideoListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3863
    new-instance v0, Lcom/htc/dmc/HtcDMC$15;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$15;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrevListener:Landroid/view/View$OnClickListener;

    .line 3886
    new-instance v0, Lcom/htc/dmc/HtcDMC$16;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$16;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPPListener:Landroid/view/View$OnClickListener;

    .line 3892
    new-instance v0, Lcom/htc/dmc/HtcDMC$17;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$17;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnNextListener:Landroid/view/View$OnClickListener;

    .line 3916
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mMoreMenuPopupWindow:Lcom/htc/widget/HtcPopupWindowWrapper;

    .line 3917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mMoreMenuMap:Ljava/util/ArrayList;

    .line 3944
    new-instance v0, Lcom/htc/dmc/HtcDMC$18;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$18;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnMoreListener:Landroid/view/View$OnClickListener;

    .line 3964
    new-instance v0, Lcom/htc/dmc/HtcDMC$19;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$19;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mMoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3981
    new-instance v0, Lcom/htc/dmc/HtcDMC$20;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$20;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPowerListener:Landroid/view/View$OnClickListener;

    .line 3993
    new-instance v0, Lcom/htc/dmc/HtcDMC$21;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$21;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnLibListener:Landroid/view/View$OnClickListener;

    .line 4067
    new-instance v0, Lcom/htc/dmc/HtcDMC$22;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$22;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnVolListener:Landroid/view/View$OnClickListener;

    .line 4081
    new-instance v0, Lcom/htc/dmc/HtcDMC$23;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$23;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mQueueTouchListner:Landroid/view/View$OnTouchListener;

    .line 4099
    new-instance v0, Lcom/htc/dmc/HtcDMC$24;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$24;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnDMRListener:Landroid/view/View$OnClickListener;

    .line 4185
    iput-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mIsResetPlaylist:Z

    .line 4332
    new-instance v0, Lcom/htc/dmc/HtcDMC$25;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$25;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnRepeatListener:Landroid/view/View$OnClickListener;

    .line 4385
    new-instance v0, Lcom/htc/dmc/HtcDMC$26;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$26;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnShuffleListener:Landroid/view/View$OnClickListener;

    .line 4461
    new-instance v0, Lcom/htc/dmc/HtcDMC$27;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$27;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    .line 4467
    new-instance v0, Lcom/htc/dmc/HtcDMC$28;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$28;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    .line 4628
    iput-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mVolSetBlocked:Z

    .line 4771
    new-instance v0, Lcom/htc/dmc/HtcDMC$32;

    invoke-direct {v0, p0}, Lcom/htc/dmc/HtcDMC$32;-><init>(Lcom/htc/dmc/HtcDMC;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mVolListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method private AddToPlaylist(I)Z
    .locals 8
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2150
    const/4 v2, 0x0

    .line 2151
    .local v2, nCurAudioId:I
    iget-object v5, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 2154
    :try_start_0
    iget-object v5, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentLocalPlayId(ILjava/lang/String;)I

    move-result v2

    .line 2155
    const-string v5, "[HtcDMC]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AddToPlaylist id (cur playing):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2165
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2166
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.htc.music.add_to_playlist"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2167
    const-string v5, "pickermode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2168
    const-string v5, "AddToPlaylistData"

    new-array v6, v4, [I

    aput v2, v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2170
    const/16 v3, 0x27

    invoke-virtual {p0, v1, v3}, Lcom/htc/dmc/HtcDMC;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v4

    .line 2171
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return v3

    .line 2156
    :catch_0
    move-exception v0

    .line 2157
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2163
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v2, p1

    goto :goto_0
.end method

.method private ClearPref()Z
    .locals 1

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2954
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2955
    const/4 v0, 0x1

    .line 2958
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private DMCDoPP(Z)V
    .locals 7
    .parameter "bForcePlay"

    .prologue
    const/4 v3, 0x1

    .line 3324
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    .line 3407
    :cond_0
    :goto_0
    return-void

    .line 3327
    :pswitch_0
    if-nez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    #calls: Lcom/htc/dmc/HtcDMC$DMCStatus;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC$DMCStatus;->access$4600(Lcom/htc/dmc/HtcDMC$DMCStatus;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3329
    :cond_1
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    if-nez v0, :cond_3

    .line 3330
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local Vdo play..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    if-eqz p1, :cond_2

    .line 3332
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->playPush(ILjava/lang/String;Ljava/lang/String;)V

    .line 3345
    :goto_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC$DMCStatus;->setUserState(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3351
    :catch_0
    move-exception v6

    .line 3352
    .local v6, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3353
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 3335
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->resume(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3354
    :catch_1
    move-exception v6

    .line 3356
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3337
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    const-string v0, "[HtcDMC]"

    const-string v1, "Remote Vdo play..."

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    if-eqz p1, :cond_4

    .line 3339
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->play(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3342
    :cond_4
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->resume(ILjava/lang/String;)V

    goto :goto_1

    .line 3347
    :cond_5
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V

    .line 3349
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC$DMCStatus;->setUserState(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 3361
    :pswitch_1
    if-nez p1, :cond_6

    :try_start_3
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    #calls: Lcom/htc/dmc/HtcDMC$DMCStatus;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC$DMCStatus;->access$4600(Lcom/htc/dmc/HtcDMC$DMCStatus;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3363
    :cond_6
    const-string v0, "[HtcDMC]"

    const-string v1, "Music play..."

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3364
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->resume(ILjava/lang/String;)V

    .line 3366
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC$DMCStatus;->setUserState(I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 3373
    :catch_2
    move-exception v6

    .line 3374
    .local v6, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3375
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 3369
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V

    .line 3371
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC$DMCStatus;->setUserState(I)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 3376
    :catch_3
    move-exception v6

    .line 3378
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 3386
    .end local v6           #e:Landroid/os/RemoteException;
    :pswitch_2
    if-nez p1, :cond_8

    :try_start_5
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_a

    .line 3389
    :cond_8
    const-string v0, "[HtcDMC]"

    const-string v1, "Photo (Slideshow) play..."

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 3392
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC$DMCStatus;->setUserState(I)V

    .line 3397
    :cond_9
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->UIRefreshPlayState(Z)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 3398
    :catch_4
    move-exception v6

    .line 3399
    .local v6, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3400
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 3394
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_a
    :try_start_6
    const-string v0, "[HtcDMC]"

    const-string v1, "Photo (Slideshow) pause..."

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3395
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    .line 3401
    :catch_5
    move-exception v6

    .line 3403
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 3324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private DMCPreparePlaying()Z
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 3174
    const/4 v10, 0x0

    .line 3175
    .local v10, nCreateRes:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mszAppTitle:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;ILjava/lang/String;)I

    move-result v10

    .line 3177
    if-eqz v10, :cond_6

    .line 3178
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaController OK, cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(II)V

    .line 3185
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v8

    .line 3187
    .local v8, dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v8, :cond_0

    .line 3188
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v1, v8, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nRepeatState:I

    .line 3189
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-boolean v1, v8, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bShuffleState:Z

    .line 3190
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC$DMCStatus;->refreshRS(I)V

    .line 3191
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC$DMCStatus;->refreshRS(I)V

    .line 3194
    :cond_0
    if-ne v10, v13, :cond_1

    .line 3195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    .line 3198
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCVolumeControlSupport(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3200
    const-string v0, "[HtcDMC]"

    const-string v1, "DMR doesn\'t support Volume Control..."

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-boolean v3, v3, Lcom/htc/dmc/HtcDMC$DMCStatus;->bShuffleState:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    .line 3215
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v3, v3, Lcom/htc/dmc/HtcDMC$DMCStatus;->nRepeatState:I

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V

    .line 3217
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    if-nez v0, :cond_7

    .line 3218
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCount:J

    .line 3220
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCurrentIndex:J

    .line 3223
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getControlItemInfo(ILjava/lang/String;)V

    .line 3224
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x0

    #calls: Lcom/htc/dmc/HtcDMC$DMCStatus;->setPosUI(I)V
    invoke-static {v0, v1}, Lcom/htc/dmc/HtcDMC$DMCStatus;->access$4500(Lcom/htc/dmc/HtcDMC$DMCStatus;I)V

    .line 3225
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 3310
    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->UIRefreshPlayState(Z)V

    move v0, v13

    .line 3320
    .end local v8           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :goto_2
    return v0

    .line 3205
    .restart local v8       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_4
    const-string v0, "[HtcDMC]"

    const-string v1, "DMR support Volume Control..."

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 3207
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    invoke-virtual {v0}, Lcom/htc/dmc/HtcDMC$DMCStatus;->refreshVolume()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3311
    .end local v8           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_0
    move-exception v9

    .line 3312
    .local v9, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3313
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_5
    move v0, v12

    .line 3314
    goto :goto_2

    .end local v9           #e:Ljava/lang/NullPointerException;
    :cond_6
    move v0, v12

    .line 3211
    goto :goto_2

    .line 3226
    .restart local v8       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_7
    :try_start_1
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    if-nez v0, :cond_c

    .line 3227
    const-string v0, "[HtcDMC]"

    const-string v1, "Source is LOCAL"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    if-nez v0, :cond_8

    .line 3231
    const-string v0, "[HtcDMC]"

    const-string v1, "Push List null!"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    :goto_3
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 3237
    :pswitch_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3315
    .end local v8           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_1
    move-exception v9

    .line 3317
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v12

    .line 3318
    goto :goto_2

    .line 3233
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v8       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_8
    :try_start_2
    const-string v0, "[HtcDMC]"

    const-string v1, "Push List is NOT null!"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3240
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurIndex:I

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    iget v5, p0, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    iget v6, p0, Lcom/htc/dmc/HtcDMC;->mCurSlideDur:I

    int-to-long v6, v6

    invoke-interface/range {v0 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3242
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Push List OK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3244
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 3245
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserShuffleState:I

    if-ne v0, v13, :cond_9

    .line 3246
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    .line 3247
    :cond_9
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserRepeatstate:I

    if-ltz v0, :cond_3

    .line 3248
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v3, v3, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserRepeatstate:I

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 3250
    :cond_a
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Push List Failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    .line 3252
    goto/16 :goto_2

    .line 3256
    :pswitch_2
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurIndex:I

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    iget v5, p0, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    iget v6, p0, Lcom/htc/dmc/HtcDMC;->mCurSlideDur:I

    int-to-long v6, v6

    invoke-interface/range {v0 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3258
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Push List OK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 3261
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserShuffleState:I

    if-ne v0, v13, :cond_3

    .line 3262
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    goto/16 :goto_1

    .line 3264
    :cond_b
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Push List Failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    .line 3266
    goto/16 :goto_2

    .line 3271
    :cond_c
    const-string v0, "[HtcDMC]"

    const-string v1, "Source is REMOTE"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 3274
    :pswitch_3
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3279
    :pswitch_4
    new-instance v11, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v11}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 3281
    .local v11, plinfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    iput-object v0, v11, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 3282
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    iput-object v0, v11, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 3283
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;

    iput-object v0, v11, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 3284
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    iput v0, v11, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 3285
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurSlideDur:I

    int-to-long v0, v0

    iput-wide v0, v11, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 3287
    iget-wide v0, p0, Lcom/htc/dmc/HtcDMC;->mCurPLStartIdx:J

    iput-wide v0, v11, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 3288
    iget-wide v0, p0, Lcom/htc/dmc/HtcDMC;->mCurPLEndIdx:J

    iput-wide v0, v11, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 3289
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurPLDirection:I

    iput v0, v11, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 3291
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v11}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPlaylist(ILjava/lang/String;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3292
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Play List OK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 3295
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserShuffleState:I

    if-ne v0, v13, :cond_d

    .line 3296
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    .line 3297
    :cond_d
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserRepeatstate:I

    if-ltz v0, :cond_3

    .line 3298
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v3, v3, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserRepeatstate:I

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 3300
    :cond_e
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Play List Failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v12

    .line 3302
    goto/16 :goto_2

    .line 3235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3272
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private GetPref()Z
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2962
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/htc/dmc/HtcDMC;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2966
    .local v0, Pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 2993
    :goto_0
    return v1

    .line 2968
    :cond_1
    const-string v3, "DMR"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    .line 2969
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "DMCPref"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2970
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurServerID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    .line 2971
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurContainerID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;

    .line 2972
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurContentID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    .line 2973
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurFilePath"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    .line 2975
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurPLStartIdx"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/dmc/HtcDMC;->mCurPLStartIdx:J

    .line 2976
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurPLEndIdx"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/dmc/HtcDMC;->mCurPLEndIdx:J

    .line 2977
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurPLDirection"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/dmc/HtcDMC;->mCurPLDirection:I

    .line 2980
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v5, "CurVol"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    .line 2985
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v3, "CurFolderID"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderID:Ljava/lang/String;

    .line 2986
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v3, "CurFolderType"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderType:Ljava/lang/String;

    .line 2987
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v3, "CurFolderName"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderName:Ljava/lang/String;

    .line 2988
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v3, "CurFolderPanelID"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderPanelID:Ljava/lang/String;

    .line 2989
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v3, "CurFolderPosition"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderPosition:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 2993
    goto/16 :goto_0
.end method

.method private HandleOnServiceConnected()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 2818
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    sget-object v3, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    const v4, 0x7f08002d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 2820
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/dmc/HtcDMC$DMCStatus;->refreshRS(I)V

    .line 2821
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/htc/dmc/HtcDMC$DMCStatus;->refreshRS(I)V

    .line 2823
    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    packed-switch v1, :pswitch_data_0

    .line 2875
    :goto_0
    iget-boolean v1, p0, Lcom/htc/dmc/HtcDMC;->mIsResetPlaylist:Z

    if-eqz v1, :cond_0

    .line 2878
    :try_start_0
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z

    .line 2879
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dmc/HtcDMC;->mIsResetPlaylist:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2885
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->DMCPreparePlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2886
    const-string v1, "[HtcDMC]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleOnServiceConnected mIsNewLaunch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    iput-boolean v7, p0, Lcom/htc/dmc/HtcDMC;->mIsDMCLineOn:Z

    .line 2888
    iget-boolean v1, p0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    if-eqz v1, :cond_1

    .line 2889
    invoke-direct {p0, v7}, Lcom/htc/dmc/HtcDMC;->DMCDoPP(Z)V

    .line 2891
    :cond_1
    return-void

    .line 2825
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2826
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2827
    :cond_2
    sget-object v1, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszAppTitle:Ljava/lang/String;

    .line 2828
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->getLayoutCase()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/dmc/HtcDMC;->InitUI(I)V

    .line 2829
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->getLayoutCase()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/dmc/HtcDMC;->updateLayoutParam(I)V

    .line 2830
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2831
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2839
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mTxtArtistName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2843
    invoke-direct {p0, v6, v6}, Lcom/htc/dmc/HtcDMC;->setBtnAll(ZZ)V

    goto :goto_0

    .line 2847
    :pswitch_1
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2848
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2849
    :cond_3
    sget-object v1, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszAppTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 2853
    :pswitch_2
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    .line 2854
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2855
    :cond_4
    sget-object v1, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszAppTitle:Ljava/lang/String;

    .line 2856
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->getLayoutCase()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/dmc/HtcDMC;->InitUI(I)V

    .line 2857
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->getLayoutCase()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/dmc/HtcDMC;->updateLayoutParam(I)V

    .line 2858
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mTxtTrackName:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2859
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2860
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2861
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPgMain:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcSeekBar;->setVisibility(I)V

    .line 2862
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mTxtElapseTime:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2863
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mTxtRemainTime:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2868
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mTxtArtistName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2880
    :catch_0
    move-exception v0

    .line 2881
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 2823
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private InitData()V
    .locals 21

    .prologue
    .line 1747
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dmc/HtcDMC;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1748
    .local v6, intent:Landroid/content/Intent;
    if-eqz v6, :cond_12

    .line 1751
    const-string v17, "cookie"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1752
    .local v9, nCookie:I
    const-string v17, "Mode"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1753
    .local v10, nMode:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_0

    .line 1754
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    .line 1755
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    .line 1757
    :cond_0
    if-nez v9, :cond_1

    if-nez v10, :cond_1

    .line 1758
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    .line 1759
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    .line 1761
    :cond_1
    if-nez v9, :cond_2

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    .line 1762
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    .line 1763
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    .line 1765
    :cond_2
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    .line 1766
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cur mode:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/dmc/HtcDMC;->getPrefFile(I)Landroid/content/SharedPreferences;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    .line 1770
    if-nez v9, :cond_9

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "CurFolderID"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFolderID:Ljava/lang/String;

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "CurFolderType"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFolderType:Ljava/lang/String;

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "CurFolderName"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFolderName:Ljava/lang/String;

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "CurFolderPosition"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFolderPosition:Ljava/lang/String;

    .line 1778
    :cond_3
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC;->setRequestedOrientation(I)V

    .line 1786
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1787
    const-string v17, "interval"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurSlideDur:I

    .line 1792
    :goto_1
    const-string v17, "content"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1794
    .local v13, szContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 1795
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "new intent, check content..."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    if-eqz v13, :cond_4

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1802
    :cond_4
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    .line 1804
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    if-eqz v13, :cond_6

    const-string v17, "invalid"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1806
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    .line 1809
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 1810
    const-string v17, "[HtcDMC]"

    const-string v18, "is new - from intent"

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    .line 1815
    const-string v17, "Render"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1816
    .local v15, szRender:Ljava/lang/String;
    const-string v17, "Server"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1817
    .local v16, szServer:Ljava/lang/String;
    const-string v17, "container"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1818
    .local v12, szContainer:Ljava/lang/String;
    const-string v17, "filepath"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1820
    .local v14, szFilePath:Ljava/lang/String;
    const-string v17, "startIdx"

    const-wide/16 v18, -0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1821
    .local v8, lPLStartIdx:Ljava/lang/Long;
    const-string v17, "endIdx"

    const-wide/16 v18, -0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1822
    .local v7, lPLEndIdx:Ljava/lang/Long;
    const-string v17, "direction"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1824
    .local v11, nPLDirection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-object/from16 v17, v0

    const-string v18, "shuffle"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserShuffleState:I

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-object/from16 v17, v0

    const-string v18, "repeat"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserRepeatstate:I

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserShuffleState:I

    move/from16 v17, v0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->bShuffleState:Z

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserRepeatstate:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->nRepeatState:I

    .line 1830
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    .line 1831
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    .line 1832
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;

    .line 1833
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    .line 1834
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    .line 1836
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/dmc/HtcDMC;->mCurPLStartIdx:J

    .line 1837
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/dmc/HtcDMC;->mCurPLEndIdx:J

    .line 1838
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/dmc/HtcDMC;->mCurPLDirection:I

    .line 1841
    if-nez v9, :cond_7

    .line 1842
    const-string v17, "Extras"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1843
    .local v4, bundle:Landroid/os/Bundle;
    if-eqz v4, :cond_7

    .line 1844
    const-string v17, "folder_type"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFolderType:Ljava/lang/String;

    .line 1845
    const-string v17, "key_folder_name"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFolderName:Ljava/lang/String;

    .line 1846
    const-string v17, "key_bucket_id"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFolderID:Ljava/lang/String;

    .line 1847
    const-string v17, "position"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFolderPosition:Ljava/lang/String;

    .line 1848
    const-string v17, "tab_default"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFolderPanelID:Ljava/lang/String;

    .line 1849
    const-string v17, "directory_info"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurFolderList:Ljava/util/ArrayList;

    .line 1851
    const-string v17, "FolderBundle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurFolderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/dmc/HtcDMC;->serializeBundle(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1857
    .end local v4           #bundle:Landroid/os/Bundle;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1858
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    .line 1863
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 1865
    const-string v17, "pushlist"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_10

    .line 1868
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    .local v3, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_f

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    move-object/from16 v17, v0

    aget v17, v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1869
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1781
    .end local v3           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5           #i:I
    .end local v7           #lPLEndIdx:Ljava/lang/Long;
    .end local v8           #lPLStartIdx:Ljava/lang/Long;
    .end local v11           #nPLDirection:I
    .end local v12           #szContainer:Ljava/lang/String;
    .end local v13           #szContent:Ljava/lang/String;
    .end local v14           #szFilePath:Ljava/lang/String;
    .end local v15           #szRender:Ljava/lang/String;
    .end local v16           #szServer:Ljava/lang/String;
    :cond_9
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1789
    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurSlideDur:I

    goto/16 :goto_1

    .line 1797
    .restart local v13       #szContent:Ljava/lang/String;
    :cond_b
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "old intent, check content..."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1812
    :cond_c
    const-string v17, "[HtcDMC]"

    const-string v18, "is old - from pref/ml"

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1827
    .restart local v7       #lPLEndIdx:Ljava/lang/Long;
    .restart local v8       #lPLStartIdx:Ljava/lang/Long;
    .restart local v11       #nPLDirection:I
    .restart local v12       #szContainer:Ljava/lang/String;
    .restart local v14       #szFilePath:Ljava/lang/String;
    .restart local v15       #szRender:Ljava/lang/String;
    .restart local v16       #szServer:Ljava/lang/String;
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1860
    :cond_e
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    goto/16 :goto_5

    .line 1872
    .restart local v3       #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5       #i:I
    :cond_f
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "PushList_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/htc/dmc/HtcDMC;->serializeBundle(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1876
    .end local v3           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5           #i:I
    :cond_10
    const-string v17, "[HtcDMC]"

    const-string v18, "Values from Intent:::"

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    .end local v7           #lPLEndIdx:Ljava/lang/Long;
    .end local v8           #lPLStartIdx:Ljava/lang/Long;
    .end local v11           #nPLDirection:I
    .end local v12           #szContainer:Ljava/lang/String;
    .end local v14           #szFilePath:Ljava/lang/String;
    .end local v15           #szRender:Ljava/lang/String;
    .end local v16           #szServer:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    move/from16 v17, v0

    if-nez v17, :cond_18

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_17

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurIndex:I

    .line 1908
    :goto_8
    const-string v17, "[HtcDMC]"

    const-string v18, "LOCAL SRC -- DMC in \'Local Push\' Mode"

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    :goto_9
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--Mode:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--dmr:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--svr:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--container:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--content:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--FilePath:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--Shuffle:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserShuffleState:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--Repeat:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserRepeatstate:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const-string v17, "[HtcDMC]"

    const-string v18, "--For PL"

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--  Start:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/dmc/HtcDMC;->mCurPLStartIdx:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--  End:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/dmc/HtcDMC;->mCurPLEndIdx:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--  Dir:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dmc/HtcDMC;->mCurPLDirection:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1928
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "-- (LOCAL Only!) PushList len:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    :cond_11
    const-string v17, "[HtcDMC]"

    const-string v18, "--For Status"

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--  Vol:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--  Pos:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPosition:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--  Dur:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lDuration:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "-- CFName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurFolderName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "-- CFID:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurFolderID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "-- CFPos:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurFolderPosition:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const-string v17, "[HtcDMC]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "-- CFPID:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurFolderPanelID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    invoke-direct/range {p0 .. p0}, Lcom/htc/dmc/HtcDMC;->SavePref()Z

    .line 1946
    .end local v9           #nCookie:I
    .end local v10           #nMode:I
    .end local v13           #szContent:Ljava/lang/String;
    :cond_12
    return-void

    .line 1878
    .restart local v9       #nCookie:I
    .restart local v10       #nMode:I
    .restart local v13       #szContent:Ljava/lang/String;
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/htc/dmc/HtcDMC;->GetPref()Z

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 1882
    :cond_14
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    .line 1887
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    move/from16 v17, v0

    if-nez v17, :cond_16

    .line 1888
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1890
    .restart local v3       #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "PushList_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/dmc/HtcDMC;->unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1892
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_16

    .line 1893
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    .line 1894
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_16

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    move-object/from16 v18, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aput v17, v18, v5

    .line 1894
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 1884
    .end local v3           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5           #i:I
    :cond_15
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    goto :goto_a

    .line 1899
    :cond_16
    const-string v17, "[HtcDMC]"

    const-string v18, "Values form Pref:::"

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1906
    :cond_17
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/dmc/HtcDMC;->mCurIndex:I

    goto/16 :goto_8

    .line 1910
    :cond_18
    const-string v17, "[HtcDMC]"

    const-string v18, "REMOTE SRC -- DMC in \'Remote Ctrl\' Mode"

    invoke-static/range {v17 .. v18}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method private InitUI(I)V
    .locals 2
    .parameter "layoutcase"

    .prologue
    .line 2705
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->initHeaderBar()V

    .line 2706
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->initFooterBar()V

    .line 2708
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC;->initializeButtonPanel(I)V

    .line 2710
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    .line 2711
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArtReflect:Landroid/widget/ImageView;

    .line 2713
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2714
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2715
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2723
    :goto_0
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->initPlayerInfo()V

    .line 2725
    return-void

    .line 2717
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 2721
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private RelayoutThumb(Z)V
    .locals 10
    .parameter "bHighQuality"

    .prologue
    const/16 v9, 0xe

    const/16 v8, 0x9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0x7f050009

    .line 2291
    const/4 v2, 0x0

    .line 2292
    .local v2, w:I
    const/4 v0, 0x0

    .line 2293
    .local v0, h:I
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->getLayoutCase()I

    move-result v1

    .line 2295
    .local v1, layoutCase:I
    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    packed-switch v3, :pswitch_data_0

    .line 2308
    if-nez v1, :cond_3

    .line 2310
    iget-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z

    if-eqz v3, :cond_2

    .line 2311
    sget v2, Lcom/htc/dmc/HtcDMC;->mScreenHeight:I

    sget v0, Lcom/htc/dmc/HtcDMC;->mScreenWidth:I

    .line 2325
    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    if-ne v3, v5, :cond_7

    .line 2326
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2328
    if-nez v1, :cond_5

    .line 2330
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2331
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2339
    :goto_1
    iget-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z

    if-eqz v3, :cond_6

    .line 2341
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v4, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2344
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2387
    :goto_2
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thumb w:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2390
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v0

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2392
    const v3, 0x7f05000a

    invoke-virtual {p0, v3}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2393
    const v3, 0x7f05000a

    invoke-virtual {p0, v3}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2394
    const v3, 0x7f05000b

    invoke-virtual {p0, v3}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2395
    const v3, 0x7f05000b

    invoke-virtual {p0, v3}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v4, v0, 0x2

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2396
    const v3, 0x7f05000b

    invoke-virtual {p0, v3}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2398
    return-void

    .line 2299
    :pswitch_0
    iget-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z

    if-eqz v3, :cond_1

    .line 2300
    sget-object v3, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2301
    sget-object v3, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_0

    .line 2304
    :cond_1
    const/16 v2, 0x10e

    const/16 v0, 0x10e

    .line 2306
    goto/16 :goto_0

    .line 2313
    :cond_2
    const/16 v2, 0x12c

    const/16 v0, 0x12c

    goto/16 :goto_0

    .line 2315
    :cond_3
    const/16 v3, 0xf

    if-ne v1, v3, :cond_0

    .line 2317
    iget-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z

    if-eqz v3, :cond_4

    .line 2318
    sget v2, Lcom/htc/dmc/HtcDMC;->mScreenWidth:I

    sget v0, Lcom/htc/dmc/HtcDMC;->mScreenHeight:I

    goto/16 :goto_0

    .line 2320
    :cond_4
    const/16 v2, 0x12c

    const/16 v0, 0x12c

    goto/16 :goto_0

    .line 2335
    :cond_5
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2336
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 2348
    :cond_6
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v4, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget-object v5, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/lit16 v5, v5, -0x10e

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2352
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v4, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/lit16 v4, v4, -0x10e

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 2358
    :cond_7
    iget-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z

    if-eqz v3, :cond_8

    .line 2360
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2361
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2362
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2363
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 2367
    :cond_8
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2368
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2369
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2371
    if-nez v1, :cond_9

    .line 2373
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Lcom/htc/dmc/HtcDMC;->mScreenWidth:I

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2374
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen w:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/dmc/HtcDMC;->mScreenWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2378
    :cond_9
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Lcom/htc/dmc/HtcDMC;->mScreenHeight:I

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2379
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen h:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/dmc/HtcDMC;->mScreenHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private SavePref()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2911
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2913
    :cond_1
    const-string v1, "[HtcDMC]"

    const-string v2, "contentID should never be null, save pref aborted!!"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    :cond_2
    :goto_0
    return v0

    .line 2917
    :cond_3
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 2919
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DMCPref"

    const-string v2, "Saved"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurServerID"

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurContainerID"

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurContentID"

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurFilePath"

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurPLStartIdx"

    iget-wide v2, p0, Lcom/htc/dmc/HtcDMC;->mCurPLStartIdx:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurPLEndIdx"

    iget-wide v2, p0, Lcom/htc/dmc/HtcDMC;->mCurPLEndIdx:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurPLDirection"

    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurPLDirection:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurVol"

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v2, v2, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurFolderID"

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurFolderName"

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurFolderType"

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurFolderPanelID"

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderPanelID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurFolderPosition"

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderPosition:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2943
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private TuneVolume(II)V
    .locals 7
    .parameter "nDeltaV"
    .parameter "nBound"

    .prologue
    .line 4413
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mVolumeView:Landroid/view/View;

    .line 4414
    .local v2, volToastView:Landroid/view/View;
    if-eqz v2, :cond_5

    .line 4416
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4417
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v4, v4, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    iput v4, v3, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    .line 4425
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v1, v3, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    .line 4426
    .local v1, nVol:I
    if-gez p1, :cond_1

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v3, v3, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    if-le v3, p2, :cond_2

    :cond_1
    if-lez p1, :cond_6

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v3, v3, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    sub-int v4, p2, p1

    if-lt v3, v4, :cond_6

    .line 4428
    :cond_2
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iput p2, v3, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    .line 4430
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mVolumeLevel:Landroid/widget/SeekBar;

    invoke-virtual {v3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4431
    if-gez p1, :cond_3

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mVolumeIcon:Landroid/widget/ImageView;

    const v4, 0x1080742

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4433
    :cond_3
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v3, v4, v5, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4455
    .end local v1           #nVol:I
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 4456
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->resetVolUITimeout()V

    .line 4457
    return-void

    .line 4421
    :cond_5
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v4, v4, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    iput v4, v3, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    goto :goto_0

    .line 4435
    .restart local v1       #nVol:I
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v4, v4, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    .line 4437
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mVolumeLevel:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v4, v4, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4438
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mVolumeIcon:Landroid/widget/ImageView;

    const v4, 0x1080743

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4440
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v6, v6, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4443
    .end local v1           #nVol:I
    :catch_0
    move-exception v0

    .line 4444
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4445
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 4446
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4448
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/dmc/HtcDMC;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HeaderBarText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/dmc/HtcDMC;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC;->RelayoutThumb(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/dmc/HtcDMC;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/dmc/HtcDMC;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/htc/dmc/HtcDMC;->setBtnAll(ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/dmc/HtcDMC;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/dmc/HtcDMC;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/dmc/HtcDMC;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/htc/dmc/HtcDMC;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput p1, p0, Lcom/htc/dmc/HtcDMC;->mCurIndex:I

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/dmc/HtcDMC;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->SavePref()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/dmc/HtcDMC;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mTxtAlbumName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/dmc/HtcDMC;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/dmc/HtcDMC;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC;->AddToPlaylist(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/dmc/HtcDMC;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->DMCPreparePlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/dmc/HtcDMC;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC;->setDMCLine(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/dmc/HtcDMC;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mOncePlayed:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/htc/dmc/HtcDMC;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/htc/dmc/HtcDMC;->mOncePlayed:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mTxtElapseTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mTxtTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mTxtRemainTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HtcSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPgVideo:Lcom/htc/widget/HtcSeekBar;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HtcSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPgMain:Lcom/htc/widget/HtcSeekBar;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnShuffle:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/dmc/HtcDMC;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/htc/dmc/HtcDMC;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mTxtArtistName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/dmc/HtcDMC;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mIsRequestDetails:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/htc/dmc/HtcDMC;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/htc/dmc/HtcDMC;->mIsRequestDetails:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/htc/dmc/HtcDMC;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/htc/dmc/HtcDMC;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mServiceUnbinded:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->HandleOnServiceConnected()V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/htc/dmc/HtcDMC;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/htc/dmc/HtcDMC;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mVolumeDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/dmc/HtcDMC;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mVolSetBlocked:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/htc/dmc/HtcDMC;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/htc/dmc/HtcDMC;->mVolSetBlocked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/dmc/HtcDMC;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    return v0
.end method

.method static synthetic access$5000(Lcom/htc/dmc/HtcDMC;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/htc/dmc/HtcDMC;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mSwitchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/htc/dmc/HtcDMC;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC;->mSwitchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/htc/dmc/HtcDMC;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC;->DMCDoPP(Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/dmc/HtcDMC;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->generateMenuItemString()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/dmc/HtcDMC;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mMoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/dmc/HtcDMC;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mMoreMenuMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArtReflect:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderPanelID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/htc/dmc/HtcDMC;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/htc/dmc/HtcDMC;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/htc/dmc/HtcDMC;->TuneVolume(II)V

    return-void
.end method

.method static synthetic access$6400(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mVolumeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/htc/dmc/HtcDMC;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    return v0
.end method

.method static synthetic access$6800(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->resetVolUITimeout()V

    return-void
.end method

.method static synthetic access$6900(Lcom/htc/dmc/HtcDMC;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/htc/dmc/HtcDMC;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->resetVolBlock()V

    return-void
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/dmc/HtcDMC;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/dmc/HtcDMC;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z

    return p1
.end method

.method private generateMenuItemString()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 3919
    const-string v2, "[HtcDMC]"

    const-string v3, "generateMenuItemString"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3922
    .local v0, szMenu:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mMoreMenuMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3924
    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3926
    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/htc/dmc/HtcDMC;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3927
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mMoreMenuMap:Ljava/util/ArrayList;

    const/16 v3, 0x4b1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3929
    :cond_0
    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3931
    const v2, 0x7f080005

    invoke-virtual {p0, v2}, Lcom/htc/dmc/HtcDMC;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3932
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mMoreMenuMap:Ljava/util/ArrayList;

    const/16 v3, 0x4b2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3934
    :cond_2
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3935
    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Lcom/htc/dmc/HtcDMC;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3936
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mMoreMenuMap:Ljava/util/ArrayList;

    const/16 v3, 0x4b3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3939
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 3941
    .local v1, szRet:[Ljava/lang/String;
    return-object v1
.end method

.method private getLayoutCase()I
    .locals 4

    .prologue
    .line 1686
    const/4 v1, 0x0

    .line 1687
    .local v1, layoutCase:I
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1688
    .local v0, conf:Landroid/content/res/Configuration;
    const/4 v2, 0x2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 1689
    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    if-nez v2, :cond_1

    .line 1690
    const/16 v1, 0xf

    .line 1694
    :cond_0
    :goto_0
    return v1

    .line 1691
    :cond_1
    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1692
    const/4 v1, 0x6

    goto :goto_0
.end method

.method private getPrefFile(I)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "nMode"

    .prologue
    .line 2896
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    .line 2904
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2898
    :pswitch_0
    const-string v0, "DMCPref_Video"

    invoke-virtual {p0, v0, p1}, Lcom/htc/dmc/HtcDMC;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 2900
    :pswitch_1
    const-string v0, "DMCPref_Music"

    invoke-virtual {p0, v0, p1}, Lcom/htc/dmc/HtcDMC;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 2902
    :pswitch_2
    const-string v0, "DMCPref_Photo"

    invoke-virtual {p0, v0, p1}, Lcom/htc/dmc/HtcDMC;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 2896
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getVolumeProgressDrawable(Landroid/content/Context;Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "seekBar"

    .prologue
    .line 4756
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 4757
    .local v1, layer:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_progress_empty"

    const v5, 0x20804c0

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4758
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_progress_full"

    const v5, 0x20804c1

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 4759
    .local v2, progress:Landroid/graphics/drawable/ClipDrawable;
    const/high16 v3, 0x102

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 4760
    const v3, 0x102000d

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 4761
    return-object v1
.end method

.method private getVolumeThumb(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 4766
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private initFooterBar()V
    .locals 9

    .prologue
    const v8, 0x7f05002f

    const v7, 0x7f050025

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2495
    new-instance v3, Lcom/htc/widget/HtcFooter;

    sget-object v4, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 2496
    const/4 v0, 0x0

    .line 2497
    .local v0, hiderBar:Lcom/htc/widget/HtcFooter;
    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 2498
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooter;

    iput-object v3, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 2499
    invoke-virtual {p0, v8}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #hiderBar:Lcom/htc/widget/HtcFooter;
    check-cast v0, Lcom/htc/widget/HtcFooter;

    .line 2515
    .restart local v0       #hiderBar:Lcom/htc/widget/HtcFooter;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    if-eqz v3, :cond_1

    .line 2516
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 2517
    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    if-nez v3, :cond_1

    .line 2519
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcFooter;->enableSecondBackground(Z)V

    .line 2520
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 2523
    :cond_1
    if-eqz v0, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 2524
    :cond_2
    return-void

    .line 2501
    :cond_3
    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-nez v3, :cond_4

    .line 2502
    invoke-virtual {p0, v8}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooter;

    iput-object v3, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 2503
    invoke-virtual {p0, v7}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #hiderBar:Lcom/htc/widget/HtcFooter;
    check-cast v0, Lcom/htc/widget/HtcFooter;

    .line 2504
    .restart local v0       #hiderBar:Lcom/htc/widget/HtcFooter;
    const v3, 0x7f05002b

    invoke-virtual {p0, v3}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2505
    .local v2, seekBarLayout:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2507
    .end local v2           #seekBarLayout:Landroid/widget/LinearLayout;
    :cond_4
    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-ne v3, v6, :cond_0

    .line 2508
    const v3, 0x7f05000c

    invoke-virtual {p0, v3}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2510
    .local v1, musicBottomLayout:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initHeaderBar()V
    .locals 10

    .prologue
    const v1, 0x7f05001e

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 2402
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_0

    .line 2404
    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 2405
    .local v8, rlTitle:Landroid/widget/RelativeLayout;
    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2408
    .end local v8           #rlTitle:Landroid/widget/RelativeLayout;
    :cond_0
    new-instance v0, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 2409
    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2411
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    .line 2413
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    if-nez v0, :cond_1

    .line 2415
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBar;->enableTransparentBackground()V

    .line 2417
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2418
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2419
    const-string v0, "com.htc.album"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2420
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 2423
    .local v6, app:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    .line 2424
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->addLeftView(Landroid/view/View;)V

    .line 2425
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 2426
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2429
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    .line 2433
    .end local v6           #app:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 2434
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 2436
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 2437
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 2440
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-ne v0, v9, :cond_5

    .line 2442
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnHPower:Lcom/htc/widget/HeaderBarImage;

    .line 2443
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnHPower:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->addRightView(Landroid/view/View;)V

    .line 2444
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnHPower:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 2445
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnHPower:Lcom/htc/widget/HeaderBarImage;

    const-string v2, "common_icon_glance_power_on"

    const v3, 0x208092c

    const v4, 0x7f080044

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/dmc/HtcDMC;->setButtonFace(Landroid/view/View;Ljava/lang/String;III)V

    .line 2463
    :goto_0
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    if-ne v0, v9, :cond_2

    .line 2466
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    .line 2467
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->addRightView(Landroid/view/View;)V

    .line 2469
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 2470
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 2471
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    const-string v1, "common_icon_glance_list_view_rest"

    const v2, 0x20808ea

    invoke-static {p0, v1, v2}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 2474
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 2477
    :cond_2
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-eq v0, v9, :cond_3

    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-nez v0, :cond_4

    .line 2480
    :cond_3
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnVol:Lcom/htc/widget/HeaderBarImage;

    .line 2481
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnVol:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->addRightView(Landroid/view/View;)V

    .line 2483
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnVol:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 2484
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnVol:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 2485
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnVol:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_glance_speaker_open_rest"

    const v3, 0x2080971

    invoke-static {p0, v2, v3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2492
    :cond_4
    return-void

    .line 2452
    :cond_5
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnDMR:Lcom/htc/widget/HeaderBarImage;

    .line 2453
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnDMR:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->addRightView(Landroid/view/View;)V

    .line 2454
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnDMR:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 2455
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnDMR:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 2456
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnDMR:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_glance_output_on"

    const v3, 0x2080912

    invoke-static {p0, v2, v3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private initPlayerInfo()V
    .locals 6

    .prologue
    const v5, 0x7f050011

    const/16 v4, 0x3e8

    const/4 v3, 0x1

    const v2, 0x7f050014

    .line 2633
    invoke-virtual {p0, v5}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mTxtArtistName:Landroid/widget/TextView;

    .line 2635
    invoke-virtual {p0, v5}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mTxtAlbumName:Landroid/widget/TextView;

    .line 2637
    const v1, 0x7f050010

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mTxtTrackName:Landroid/widget/TextView;

    .line 2644
    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-nez v1, :cond_2

    .line 2646
    const v1, 0x7f05002c

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mTxtElapseTime:Landroid/widget/TextView;

    .line 2647
    const v1, 0x7f05002e

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mTxtRemainTime:Landroid/widget/TextView;

    .line 2649
    invoke-virtual {p0, v2}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSeekBar;

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPgMain:Lcom/htc/widget/HtcSeekBar;

    .line 2650
    const v1, 0x7f05002d

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSeekBar;

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPgVideo:Lcom/htc/widget/HtcSeekBar;

    .line 2658
    invoke-virtual {p0, v2}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2668
    :goto_0
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPgMain:Lcom/htc/widget/HtcSeekBar;

    instance-of v1, v1, Lcom/htc/widget/HtcSeekBar;

    if-eqz v1, :cond_0

    .line 2669
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPgMain:Lcom/htc/widget/HtcSeekBar;

    .line 2670
    .local v0, seeker:Lcom/htc/widget/HtcSeekBar;
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPgMainListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2671
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPgMain:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 2675
    .end local v0           #seeker:Lcom/htc/widget/HtcSeekBar;
    :cond_0
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPgVideo:Lcom/htc/widget/HtcSeekBar;

    if-eqz v1, :cond_1

    .line 2677
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPgVideo:Lcom/htc/widget/HtcSeekBar;

    .line 2678
    .restart local v0       #seeker:Lcom/htc/widget/HtcSeekBar;
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPgVideoListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2679
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPgVideo:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcSeekBar;->setDisplayMode(I)V

    .line 2680
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPgVideo:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 2681
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPgVideo:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 2685
    .end local v0           #seeker:Lcom/htc/widget/HtcSeekBar;
    :cond_1
    return-void

    .line 2662
    :cond_2
    const v1, 0x7f050013

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mTxtElapseTime:Landroid/widget/TextView;

    .line 2663
    const v1, 0x7f050015

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mTxtRemainTime:Landroid/widget/TextView;

    .line 2664
    invoke-virtual {p0, v2}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSeekBar;

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPgMain:Lcom/htc/widget/HtcSeekBar;

    goto :goto_0
.end method

.method private initializeButtonPanel(I)V
    .locals 12
    .parameter "layoutCase"

    .prologue
    const v6, 0x7f050028

    const v4, 0x7f050026

    const/4 v5, -0x1

    const v3, 0x7f05002f

    const v2, 0x7f050025

    .line 2529
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    .line 2552
    :goto_0
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnShuffle:Landroid/widget/ImageButton;

    .line 2553
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;

    .line 2558
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrev:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrev:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2559
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnPPListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2560
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnNext:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnNext:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2562
    :cond_2
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnMore:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnMore:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnMoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2563
    :cond_3
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPower:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPower:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnPowerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2564
    :cond_4
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnHPower:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnHPower:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnPowerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2566
    :cond_5
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnLib:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnLibListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2567
    :cond_6
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnVol:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnVol:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnVolListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2569
    :cond_7
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnDMR:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnDMR:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnDMRListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2570
    :cond_8
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnShuffle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnShuffle:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2571
    :cond_9
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2575
    :cond_a
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    packed-switch v0, :pswitch_data_1

    .line 2599
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrev:Landroid/view/View;

    const-string v2, "music_icon_previous"

    const v3, 0x2080933

    const v4, 0x7f080046

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/dmc/HtcDMC;->setButtonFace(Landroid/view/View;Ljava/lang/String;III)V

    .line 2604
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    const-string v8, "common_icon_play_on"

    const v9, 0x2080927

    const v10, 0x7f080048

    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mIsBtnPPEnable:Z

    if-eqz v0, :cond_b

    const/16 v11, 0xff

    :goto_2
    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/htc/dmc/HtcDMC;->setButtonFace(Landroid/view/View;Ljava/lang/String;III)V

    .line 2609
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnNext:Landroid/view/View;

    const-string v2, "music_icon_next"

    const v3, 0x208090c

    const v4, 0x7f080045

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/dmc/HtcDMC;->setButtonFace(Landroid/view/View;Ljava/lang/String;III)V

    .line 2630
    return-void

    .line 2532
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    .line 2533
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f05002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnMore:Landroid/view/View;

    .line 2534
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPower:Landroid/view/View;

    goto/16 :goto_0

    .line 2537
    :pswitch_2
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f050027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrev:Landroid/view/View;

    .line 2538
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    .line 2539
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f050029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnNext:Landroid/view/View;

    .line 2540
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f05002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnMore:Landroid/view/View;

    .line 2541
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPower:Landroid/view/View;

    goto/16 :goto_0

    .line 2544
    :pswitch_3
    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrev:Landroid/view/View;

    .line 2545
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    .line 2546
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnNext:Landroid/view/View;

    goto/16 :goto_0

    .line 2584
    :pswitch_4
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrev:Landroid/view/View;

    const-string v1, "common_transport_prev"

    const v2, 0x2080088

    invoke-static {p0, v1, v2}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2588
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    const-string v1, "common_transport_play"

    const v2, 0x2080087

    invoke-static {p0, v1, v2}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2592
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnNext:Landroid/view/View;

    const-string v1, "common_transport_next"

    const v2, 0x2080086

    invoke-static {p0, v1, v2}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 2604
    :cond_b
    const/16 v11, 0x5f

    goto/16 :goto_2

    .line 2529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 2575
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private isServiceHealthy()Z
    .locals 2

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 2729
    const-string v0, "[HtcDMC]"

    const-string v1, "DLNAService down!!"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    const/4 v0, 0x0

    .line 2732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWifiEnabled()Z
    .locals 5

    .prologue
    .line 2997
    const/4 v0, 0x0

    .line 2999
    .local v0, retval:Z
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/htc/dmc/HtcDMC;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 3000
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 3001
    .local v3, wifiState:I
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    .line 3003
    .local v1, wifiApState:Z
    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 3004
    :cond_0
    const/4 v0, 0x1

    .line 3006
    :cond_1
    return v0
.end method

.method public static makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "secs"
    .parameter "bHaveHour"
    .parameter "nCurMode"

    .prologue
    const-wide/16 v8, 0xe10

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 165
    sget-object v2, Lcom/htc/dmc/HtcDMC;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 166
    const/4 p3, 0x1

    .line 168
    sget-object v1, Lcom/htc/dmc/HtcDMC;->sTimeArgs:[Ljava/lang/Object;

    .line 169
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p1, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 170
    div-long v2, p1, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    .line 171
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 172
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 173
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, durationformat:Ljava/lang/String;
    if-eqz p3, :cond_0

    cmp-long v2, p1, v8

    if-ltz v2, :cond_0

    .line 177
    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_0
    sget-object v2, Lcom/htc/dmc/HtcDMC;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 180
    :cond_0
    if-ne p4, v7, :cond_1

    .line 181
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_1
    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private prepareVolumeUI(Landroid/content/Context;)V
    .locals 22
    .parameter "context"

    .prologue
    .line 4640
    const-string v18, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 4641
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v18, 0x10900ca

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mVolumeView:Landroid/view/View;

    .line 4643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x102032e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 4644
    .local v15, volumePanel:Landroid/view/ViewGroup;
    sget-object v18, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "popup_full_dark"

    const-string v20, "drawable"

    const-string v21, "com.htc"

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 4647
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4648
    .local v4, dm:Landroid/util/DisplayMetrics;
    sget-object v18, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    const-string v19, "window"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 4649
    .local v17, wm:Landroid/view/WindowManager;
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4650
    const-string v18, "[HtcDMC]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "dm.widthPixels: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " dm.heightPixels "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4652
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    iget v11, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4654
    .local v11, panelWidth:I
    :goto_0
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 4655
    .local v12, param:Landroid/view/ViewGroup$LayoutParams;
    iput v11, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4656
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x1020331

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 4660
    .local v6, expBtn:Landroid/view/View;
    if-eqz v6, :cond_0

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4661
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x1020330

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 4662
    .local v7, expBtnDiv:Landroid/view/View;
    if-eqz v7, :cond_1

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4664
    :cond_1
    const v18, 0x10900cb

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 4665
    .local v14, sliderView:Landroid/view/View;
    const v18, 0x102031f

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 4666
    .local v8, expBtnDiv_inside:Landroid/view/View;
    if-eqz v8, :cond_2

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4667
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x102032f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 4668
    .local v13, sliderLayout:Landroid/widget/LinearLayout;
    if-eqz v13, :cond_3

    if-eqz v14, :cond_3

    .line 4669
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4671
    :cond_3
    const v18, 0x102000b

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mVolumeMessage:Landroid/widget/TextView;

    .line 4672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x7f08003e

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 4674
    const v18, 0x1020332

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mVolumeIcon:Landroid/widget/ImageView;

    .line 4675
    const v18, 0x10202d9

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/SeekBar;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mVolumeLevel:Landroid/widget/SeekBar;

    .line 4676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeLevel:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 4677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeLevel:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, 0x64

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setMax(I)V

    .line 4678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeLevel:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 4681
    invoke-direct/range {p0 .. p1}, Lcom/htc/dmc/HtcDMC;->getVolumeThumb(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4682
    .local v5, dwThum:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeLevel:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeLevel:Landroid/widget/SeekBar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/dmc/HtcDMC;->getVolumeProgressDrawable(Landroid/content/Context;Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4683
    if-eqz v5, :cond_6

    .line 4684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeLevel:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 4689
    :goto_1
    new-instance v18, Lcom/htc/dmc/HtcDMC$29;

    const v19, 0x10302fb

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/dmc/HtcDMC$29;-><init>(Lcom/htc/dmc/HtcDMC;Landroid/content/Context;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dmc/HtcDMC;->mVolumeDialog:Landroid/app/Dialog;

    .line 4701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeDialog:Landroid/app/Dialog;

    move-object/from16 v18, v0

    const-string v19, "Volume control"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeDialog:Landroid/app/Dialog;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeView:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/htc/dmc/HtcDMC$30;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/dmc/HtcDMC$30;-><init>(Lcom/htc/dmc/HtcDMC;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeDialog:Landroid/app/Dialog;

    move-object/from16 v18, v0

    new-instance v19, Lcom/htc/dmc/HtcDMC$31;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/dmc/HtcDMC$31;-><init>(Lcom/htc/dmc/HtcDMC;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 4733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeDialog:Landroid/app/Dialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    .line 4734
    .local v16, window:Landroid/view/Window;
    const/16 v18, 0x30

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 4735
    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 4736
    .local v10, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4738
    sget-object v18, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1050044

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4740
    const/16 v18, 0x7d3

    move/from16 v0, v18

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4741
    const/16 v18, -0x2

    move/from16 v0, v18

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4742
    const/16 v18, -0x2

    move/from16 v0, v18

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4743
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x5

    move/from16 v0, v18

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4744
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x3

    move/from16 v0, v18

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4745
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4746
    const v18, 0x40028

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mVolumeIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x1080743

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4751
    :cond_4
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/dmc/HtcDMC;->updatePanelRotation(Z)V

    .line 4752
    return-void

    .line 4652
    .end local v5           #dwThum:Landroid/graphics/drawable/Drawable;
    .end local v6           #expBtn:Landroid/view/View;
    .end local v7           #expBtnDiv:Landroid/view/View;
    .end local v8           #expBtnDiv_inside:Landroid/view/View;
    .end local v10           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v11           #panelWidth:I
    .end local v12           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v13           #sliderLayout:Landroid/widget/LinearLayout;
    .end local v14           #sliderView:Landroid/view/View;
    .end local v16           #window:Landroid/view/Window;
    :cond_5
    iget v11, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_0

    .line 4686
    .restart local v5       #dwThum:Landroid/graphics/drawable/Drawable;
    .restart local v6       #expBtn:Landroid/view/View;
    .restart local v7       #expBtnDiv:Landroid/view/View;
    .restart local v8       #expBtnDiv_inside:Landroid/view/View;
    .restart local v11       #panelWidth:I
    .restart local v12       #param:Landroid/view/ViewGroup$LayoutParams;
    .restart local v13       #sliderLayout:Landroid/widget/LinearLayout;
    .restart local v14       #sliderView:Landroid/view/View;
    :cond_6
    const-string v18, "[HtcDMC]"

    const-string v19, "Seek bar HTC Thumb load fail"

    invoke-static/range {v18 .. v19}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private resetVolBlock()V
    .locals 4

    .prologue
    const/16 v2, 0xca

    .line 4634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mVolSetBlocked:Z

    .line 4635
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4636
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4637
    return-void
.end method

.method private resetVolUITimeout()V
    .locals 4

    .prologue
    const/16 v2, 0xc9

    .line 4630
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4631
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4632
    return-void
.end method

.method private serializeBundle(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4594
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-nez p2, :cond_0

    .line 4607
    :goto_0
    return-void

    .line 4598
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/htc/dmc/HtcDMC;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 4599
    .local v2, outStream:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4600
    .local v1, objOutStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 4601
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4602
    .end local v1           #objOutStream:Ljava/io/ObjectOutputStream;
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 4603
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 4604
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 4605
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private setBtnAll(ZZ)V
    .locals 5
    .parameter "bForceSet"
    .parameter "bEnable"

    .prologue
    const/4 v4, 0x0

    .line 498
    if-eqz p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/htc/dmc/HtcDMC;->setBtnEnable(Landroid/view/View;Z)V

    .line 500
    iput-boolean p2, p0, Lcom/htc/dmc/HtcDMC;->mIsBtnPPEnable:Z

    .line 504
    :cond_0
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    iget-wide v0, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCount:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 506
    if-eqz p1, :cond_1

    .line 507
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnNext:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnNext:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/htc/dmc/HtcDMC;->setBtnEnable(Landroid/view/View;Z)V

    .line 509
    :cond_1
    if-eqz p1, :cond_2

    .line 510
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrev:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrev:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/htc/dmc/HtcDMC;->setBtnEnable(Landroid/view/View;Z)V

    .line 517
    :cond_2
    :goto_0
    return-void

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnNext:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnNext:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/htc/dmc/HtcDMC;->setBtnEnable(Landroid/view/View;Z)V

    .line 514
    :cond_4
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrev:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mBtnPrev:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/htc/dmc/HtcDMC;->setBtnEnable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private setBtnEnable(Landroid/view/View;Z)V
    .locals 3
    .parameter "imgbtn"
    .parameter "bEnable"

    .prologue
    const/16 v0, 0xff

    const/16 v1, 0x5f

    .line 2738
    if-nez p1, :cond_0

    .line 2750
    .end local p1
    :goto_0
    return-void

    .line 2740
    .restart local p1
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 2741
    instance-of v2, p1, Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 2742
    check-cast p1, Landroid/widget/ImageButton;

    .end local p1
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 2743
    .restart local p1
    :cond_2
    instance-of v2, p1, Lcom/htc/widget/HtcFooterButton;

    if-eqz v2, :cond_4

    .line 2744
    check-cast p1, Lcom/htc/widget/HtcFooterButton;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/widget/HtcFooterButton;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 2745
    .restart local p1
    :cond_4
    instance-of v2, p1, Landroid/widget/Button;

    if-eqz v2, :cond_6

    .line 2746
    if-eqz p2, :cond_5

    :goto_3
    invoke-static {p1, v0}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->setButtonAlpha(Landroid/view/View;I)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_3

    .line 2748
    :cond_6
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t recognize imgbtn type!! imgbtn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setButtonFace(Landroid/view/View;Ljava/lang/String;III)V
    .locals 3
    .parameter "btn"
    .parameter "szNameInSkinPkg"
    .parameter "nDefaultResId"
    .parameter "nTextResId"
    .parameter "nAlpha"

    .prologue
    const/4 v2, -0x1

    .line 4849
    if-nez p1, :cond_1

    .line 4850
    const-string v0, "[HtcDMC]"

    const-string v1, "setButtonFace but it\'s null"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4899
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 4854
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    .line 4855
    const-string v0, "[HtcDMC]"

    const-string v1, "setButtonFace: HeaderBarImage"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 4856
    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    invoke-static {p0, p2, p3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 4859
    if-eq p4, v2, :cond_0

    .line 4860
    check-cast p1, Lcom/htc/widget/HeaderBarImage;

    .end local p1
    invoke-virtual {p1, p4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    goto :goto_0

    .line 4862
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_4

    .line 4863
    const-string v0, "[HtcDMC]"

    const-string v1, "setButtonFace: HtcFooterButton"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 4864
    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    invoke-static {p0, p2, p3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 4867
    if-eq p5, v2, :cond_3

    move-object v0, p1

    .line 4868
    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooterButton;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4874
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 4876
    :cond_4
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 4877
    const-string v0, "[HtcDMC]"

    const-string v1, "setButtonFace: ImageButton"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4878
    check-cast p1, Landroid/widget/ImageButton;

    .end local p1
    invoke-static {p0, p2, p3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 4881
    .restart local p1
    :cond_5
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 4882
    const-string v0, "[HtcDMC]"

    const-string v1, "setButtonFace: Button"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4883
    if-eq p5, v2, :cond_6

    .line 4885
    invoke-static {p0, p2, p3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0, p5, p4}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->setButtonTopImageBottomLabel(Landroid/view/View;III)V

    goto :goto_0

    .line 4891
    :cond_6
    invoke-static {p0, p2, p3}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0, p4}, Lcom/htc/dmc/utils/CustomizeLayoutHandler;->setButtonTopImageBottomLabel(Landroid/view/View;II)V

    goto :goto_0

    .line 4897
    :cond_7
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t recognize the button type!! btn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setDMCLine(I)V
    .locals 7
    .parameter "nForce"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3418
    const-string v2, "[HtcDMC]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDMCLine nForce:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    if-ne p1, v5, :cond_2

    .line 3420
    iput-boolean v5, p0, Lcom/htc/dmc/HtcDMC;->mIsDMCLineOn:Z

    .line 3422
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 3426
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 3428
    :cond_0
    invoke-direct {p0, v5, v5}, Lcom/htc/dmc/HtcDMC;->setBtnAll(ZZ)V

    .line 3455
    :cond_1
    :goto_0
    return-void

    .line 3429
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 3430
    iput-boolean v6, p0, Lcom/htc/dmc/HtcDMC;->mIsDMCLineOn:Z

    .line 3432
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    invoke-virtual {v2}, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->loadInfo()V

    .line 3433
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    invoke-virtual {v2}, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->refreshInfo()V

    .line 3434
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    invoke-virtual {v2}, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->refreshAlbumArt()V

    .line 3436
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    invoke-virtual {v2}, Lcom/htc/dmc/HtcDMC$DMCStatus;->refreshTime()V

    .line 3438
    const/4 v1, 0x0

    .line 3439
    .local v1, szLastDMRName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/htc/dmc/HtcDMC;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3440
    .local v0, dmrpref:Landroid/content/SharedPreferences;
    const-string v2, "LastDMRName"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3443
    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    if-nez v2, :cond_3

    .line 3445
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 3452
    :goto_1
    invoke-direct {p0, v5, v6}, Lcom/htc/dmc/HtcDMC;->setBtnAll(ZZ)V

    .line 3453
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v2}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    goto :goto_0

    .line 3449
    :cond_3
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4611
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/dmc/HtcDMC;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 4612
    .local v2, inStream:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4613
    .local v3, objInStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4614
    .local v0, alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4622
    .end local v0           #alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .end local v2           #inStream:Ljava/io/FileInputStream;
    .end local v3           #objInStream:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v0

    .line 4616
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/FileNotFoundException;
    move-object v0, v4

    .line 4617
    goto :goto_0

    .line 4618
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move-object v0, v4

    .line 4619
    goto :goto_0

    .line 4620
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 4621
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "[HtcDMC]"

    const-string v6, "can not unserialize arraylist"

    invoke-static {v5, v6}, Lcom/htc/dmc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 4622
    goto :goto_0
.end method

.method private updateLayoutParam(I)V
    .locals 1
    .parameter "layoutCase"

    .prologue
    .line 2284
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC;->initializeButtonPanel(I)V

    .line 2286
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC;->RelayoutThumb(Z)V

    .line 2287
    return-void
.end method

.method private updatePanelRotation(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 4826
    if-nez p1, :cond_1

    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mOrientation:I

    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getRequestedOrientation()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4843
    :cond_0
    :goto_0
    return-void

    .line 4830
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 4832
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mOrientation:I

    if-eqz v0, :cond_0

    .line 4837
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method protected DMRPowerOff(I)V
    .locals 13
    .parameter "nOccured"

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/high16 v11, 0x400

    const/4 v6, 0x0

    .line 4194
    :try_start_0
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v9, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v10, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v7, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V

    .line 4195
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v9, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v10, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v7, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4204
    :cond_0
    :goto_0
    iget v7, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    packed-switch v7, :pswitch_data_0

    .line 4321
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DMR"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v12}, Lcom/htc/dmc/HtcDMC;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 4323
    .local v4, prefDMR:Landroid/content/SharedPreferences;
    if-eqz v4, :cond_1

    .line 4324
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "DMR"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4326
    :cond_1
    invoke-direct {p0, v12}, Lcom/htc/dmc/HtcDMC;->getPrefFile(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4327
    .local v0, Pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2

    .line 4328
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "DMCPref"

    const-string v8, "NeedClear"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4330
    :cond_2
    return-void

    .line 4196
    .end local v0           #Pref:Landroid/content/SharedPreferences;
    .end local v4           #prefDMR:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 4197
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4198
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 4199
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 4201
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4207
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_0
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 4208
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4210
    .local v3, intent:Landroid/content/Intent;
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "*/*"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4211
    const-string v7, "Render"

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4212
    const-string v6, "Server"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4213
    const-string v6, "key_bucket_id"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4214
    const-string v6, "key_folder_name"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4215
    const-string v6, "folder_type"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderType:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4216
    iget v6, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-nez v6, :cond_3

    .line 4217
    const-string v6, "position"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderPosition:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4220
    :goto_2
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4221
    invoke-virtual {p0, v3}, Lcom/htc/dmc/HtcDMC;->startActivity(Landroid/content/Intent;)V

    .line 4269
    :goto_3
    const-string v6, "[HtcDMC]"

    const-string v7, "finish() called, 2789"

    invoke-static {v6, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4270
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->finish()V

    goto/16 :goto_1

    .line 4219
    :cond_3
    const-string v6, "position"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 4223
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    iget v7, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-nez v7, :cond_5

    .line 4224
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.htc.album.action.DLNA_BROWSE_DMS"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4226
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "*/*"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4227
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4228
    const-string v7, "Render"

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4229
    const-string v6, "Server"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4231
    const-string v6, "tab_default"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderPanelID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4233
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4234
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "server_id"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderID:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4235
    const-string v6, "server_name"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4236
    const-string v6, "directory_info"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4238
    const-string v6, "browse_info"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4239
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4240
    invoke-virtual {p0, v3}, Lcom/htc/dmc/HtcDMC;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 4242
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.htc.album.action.DLNA_VIEW_SERVER_PHOTO"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4244
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "*/*"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4245
    const-string v7, "Render"

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4246
    const-string v6, "Server"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4247
    const-string v6, "DLNA_SERVER"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4248
    const-string v6, "DLNA_CONTAINER"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4249
    const-string v6, "DLNA_ALBUM"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderType:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4250
    const-string v6, "DLNA_CONTENT"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4254
    const-string v6, "DLNA_PHOTOBEGIN"

    iget-wide v7, p0, Lcom/htc/dmc/HtcDMC;->mCurPLStartIdx:J

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4255
    const-string v6, "DLNA_PHOTOEND"

    iget-wide v7, p0, Lcom/htc/dmc/HtcDMC;->mCurPLEndIdx:J

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4256
    const-string v6, "DLNA_PHOTODIRECTION"

    iget v7, p0, Lcom/htc/dmc/HtcDMC;->mCurPLDirection:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4258
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4259
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v6, "server_id"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderID:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4260
    const-string v6, "server_name"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4261
    const-string v6, "directory_info"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4263
    const-string v6, "browse_info"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4264
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4265
    invoke-virtual {p0, v3}, Lcom/htc/dmc/HtcDMC;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 4275
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 4276
    .local v5, rtt:Landroid/content/Intent;
    const-string v7, "com.htc.music.PLAYBACK_VIEWER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4284
    const-string v7, "[HtcDMC]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Goto Music, passing ContentID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4285
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 4286
    const-string v7, "Server"

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4287
    const-string v7, "container"

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4288
    const-string v7, "content"

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4296
    :goto_4
    const-string v7, "startIdx"

    iget-wide v9, p0, Lcom/htc/dmc/HtcDMC;->mCurPLStartIdx:J

    invoke-virtual {v5, v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4297
    const-string v7, "endIdx"

    iget-wide v9, p0, Lcom/htc/dmc/HtcDMC;->mCurPLEndIdx:J

    invoke-virtual {v5, v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4298
    const-string v7, "direction"

    iget v9, p0, Lcom/htc/dmc/HtcDMC;->mCurPLDirection:I

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4300
    const-string v7, "filepath"

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4302
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4304
    const-string v7, "Render"

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4305
    const-string v6, "SaveRender"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4307
    const-string v6, "[HtcDMC]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shuffle:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-boolean v9, v9, Lcom/htc/dmc/HtcDMC$DMCStatus;->bShuffleState:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", repeat:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v9, v9, Lcom/htc/dmc/HtcDMC$DMCStatus;->nRepeatState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4308
    const-string v7, "shuffle"

    iget-object v6, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-boolean v6, v6, Lcom/htc/dmc/HtcDMC$DMCStatus;->bShuffleState:Z

    if-eqz v6, :cond_7

    move v6, v8

    :goto_5
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4309
    const-string v6, "repeat"

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v7, v7, Lcom/htc/dmc/HtcDMC$DMCStatus;->nRepeatState:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4311
    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4313
    invoke-virtual {p0, v5}, Lcom/htc/dmc/HtcDMC;->startActivity(Landroid/content/Intent;)V

    .line 4317
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->finish()V

    goto/16 :goto_1

    .line 4290
    :cond_6
    const-string v9, "Server"

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4292
    const-string v9, "container"

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4293
    const-string v7, "content"

    const-string v9, "0"

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 4308
    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    .line 4204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ExecuteMenuFunc(I)V
    .locals 3
    .parameter "nMenuFuncId"

    .prologue
    const/4 v2, 0x0

    .line 2125
    const/4 v0, 0x0

    .line 2126
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 2147
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2128
    :pswitch_1
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnShuffleListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 2129
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnShuffleListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 2132
    :pswitch_2
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnRepeatListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 2133
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnRepeatListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 2136
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getCurDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->LaunchDetails(Lcom/htc/dlnainterface/DLNAContentItemDetails;)V

    goto :goto_0

    .line 2142
    :pswitch_4
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnDMRListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 2143
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnDMRListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 2126
    :pswitch_data_0
    .packed-switch 0x4b1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public HandlePgChanged(IZ)V
    .locals 3
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 3732
    if-eqz p2, :cond_0

    .line 3733
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lUserPosition:J

    .line 3734
    :cond_0
    return-void
.end method

.method public HandlePgStartTT(Landroid/view/View;)V
    .locals 2
    .parameter "PgView"

    .prologue
    const/4 v1, 0x1

    .line 3722
    instance-of v0, p1, Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_1

    .line 3723
    check-cast p1, Lcom/htc/widget/HtcSeekBar;

    .end local p1
    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcSeekBar;->setPressed(Z)V

    .line 3728
    :cond_0
    :goto_0
    return-void

    .line 3724
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_0

    .line 3725
    check-cast p1, Lcom/htc/widget/HtcSeekBar;

    .end local p1
    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcSeekBar;->setPressed(Z)V

    goto :goto_0
.end method

.method public HandlePgStopTT(Landroid/view/View;)V
    .locals 10
    .parameter "PgView"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v1, 0x0

    .line 3737
    const/4 v8, 0x0

    .line 3738
    .local v8, nProgress:I
    instance-of v0, p1, Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 3740
    check-cast v0, Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setPressed(Z)V

    .line 3741
    check-cast p1, Lcom/htc/widget/HtcSeekBar;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/widget/HtcSeekBar;->getProgress()I

    move-result v8

    .line 3752
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->PgTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 3753
    iget-object v9, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->PgTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dmc/HtcDMC$PgTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/htc/dmc/HtcDMC$PgTimerTask;-><init>(Lcom/htc/dmc/HtcDMC;Lcom/htc/dmc/HtcDMC$1;)V

    const-wide/16 v3, 0xbb8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dmc/HtcDMC;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/dmc/HtcDMC$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 3756
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-wide v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lDuration:J

    int-to-long v2, v8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/dmc/HtcDMC;->mPosOverride:J

    .line 3758
    :try_start_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/dmc/HtcDMC;->mPosOverride:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3765
    :cond_2
    :goto_1
    iput-wide v5, p0, Lcom/htc/dmc/HtcDMC;->mPosOverride:J

    .line 3766
    return-void

    .line 3744
    .restart local p1
    :cond_3
    instance-of v0, p1, Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_0

    .line 3747
    check-cast p1, Lcom/htc/widget/HtcSeekBar;

    .end local p1
    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcSeekBar;->setPressed(Z)V

    .line 3748
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-wide v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lUserPosition:J

    long-to-int v8, v0

    goto :goto_0

    .line 3759
    :catch_0
    move-exception v7

    .line 3760
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3761
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 3762
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 3763
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method protected LaunchDetails(Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 21
    .parameter "details"

    .prologue
    .line 3057
    if-nez p1, :cond_1

    .line 3059
    const-string v3, "[HtcDMC]"

    const-string v4, "Item detail null..."

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    :cond_0
    :goto_0
    return-void

    .line 3063
    :cond_1
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "duration:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filename:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3065
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nameDMS:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3066
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trackname:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "artistname:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "albumname:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "genre:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "composer:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "location:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3076
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3083
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 3087
    .local v20, rtt:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    packed-switch v3, :pswitch_data_0

    .line 3163
    :goto_1
    if-eqz v20, :cond_0

    .line 3164
    const/high16 v3, 0x400

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3165
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3092
    :pswitch_0
    new-instance v2, Lcom/htc/dmc/DetailDlgParams;

    invoke-direct {v2}, Lcom/htc/dmc/DetailDlgParams;-><init>()V

    .line 3094
    .local v2, maker:Lcom/htc/dmc/DetailDlgParams;
    const/4 v5, 0x0

    .line 3095
    .local v5, szPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    if-nez v3, :cond_3

    .line 3096
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 3102
    :goto_2
    const-string v3, "HdcDMC"

    const-string v4, "remote"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-nez v6, :cond_5

    const-string v6, "video"

    :goto_3
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    if-eqz v7, :cond_6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    :goto_5
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    if-eqz v9, :cond_8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    if-eqz v10, :cond_9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    :goto_7
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    if-eqz v11, :cond_a

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    :goto_8
    const-string v12, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v13, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_b

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    :goto_9
    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_c

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    :goto_a
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_d

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    :goto_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_d
    const-string v19, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual/range {v2 .. v19}, Lcom/htc/dmc/DetailDlgParams;->CreateExtraParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    .line 3140
    goto/16 :goto_1

    .line 3096
    :cond_2
    const-string v5, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_2

    .line 3099
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    :goto_e
    goto/16 :goto_2

    :cond_4
    const-string v5, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_e

    .line 3102
    :cond_5
    const-string v6, "image"

    goto/16 :goto_3

    :cond_6
    const-string v7, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_4

    :cond_7
    const-string v8, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_5

    :cond_8
    const-string v9, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_6

    :cond_9
    const-string v10, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_7

    :cond_a
    const-string v11, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_8

    :cond_b
    const-string v14, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_9

    :cond_c
    const-string v15, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_a

    :cond_d
    const-string v16, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_b

    :cond_e
    const-string v17, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_c

    :cond_f
    const-string v18, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_d

    .line 3143
    .end local v2           #maker:Lcom/htc/dmc/DetailDlgParams;
    .end local v5           #szPath:Ljava/lang/String;
    :pswitch_1
    if-eqz v20, :cond_0

    .line 3144
    const-string v3, "com.htc.music.PluginPropertyListActivity"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3145
    const-string v3, "duration"

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3146
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    if-nez v3, :cond_10

    .line 3147
    const-string v3, "filename"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3148
    const-string v3, "location"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3153
    :goto_f
    const-string v3, "trackname"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3154
    const-string v3, "artistname"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3155
    const-string v3, "albumname"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3156
    const-string v3, "genre"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3157
    const-string v3, "composer"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3158
    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 3150
    :cond_10
    const-string v3, "filename"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3151
    const-string v3, "location"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/dmc/HtcDMC;->mCurFilePath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_f

    .line 3087
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected RequestDetails(Ljava/lang/String;)V
    .locals 5
    .parameter "contentID"

    .prologue
    const/4 v3, 0x1

    .line 3020
    :try_start_0
    iget v2, p0, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    if-ne v2, v3, :cond_0

    .line 3022
    const-string v2, "[HtcDMC]"

    const-string v3, "Request detail by getContentItemDetails (remote)"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V

    .line 3031
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/dmc/HtcDMC;->mIsRequestDetails:Z

    .line 3035
    :goto_1
    return-void

    .line 3027
    :cond_0
    const-string v2, "[HtcDMC]"

    const-string v3, "Request detail by getLocalContentItemDetails (local)"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3029
    .local v1, nId:I
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget v4, p0, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    invoke-interface {v2, v3, v1, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getLocalContentItemDetails(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3032
    .end local v1           #nId:I
    :catch_0
    move-exception v0

    .line 3033
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public StopTimers()V
    .locals 2

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPosTimer:Ljava/util/Timer;

    .line 1966
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mSwitchTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mSwitchTimer:Ljava/util/Timer;

    .line 1967
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v1, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 1968
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v1, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 1969
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v1, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 1970
    return-void
.end method

.method public TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 3
    .parameter "timer"

    .prologue
    .line 3687
    if-eqz p1, :cond_0

    .line 3688
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 3689
    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 3690
    const-string v0, "[HtcDMC]"

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

    .line 3691
    const/4 p1, 0x0

    .line 3694
    :goto_0
    return-object p1

    .line 3693
    :cond_0
    const-string v0, "[HtcDMC]"

    const-string v1, "Timer already disabled..."

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
    .line 3699
    if-nez p1, :cond_1

    .line 3700
    new-instance p1, Ljava/util/Timer;

    .end local p1
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 3701
    .restart local p1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    .line 3702
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 3705
    :goto_0
    const-string v0, "[HtcDMC]"

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

    .line 3709
    :goto_1
    return-object p1

    .line 3704
    :cond_0
    invoke-virtual/range {p1 .. p6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 3707
    :cond_1
    const-string v0, "[HtcDMC]"

    const-string v1, "Timer already enabled..."

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected UIRefreshPlayState(Z)V
    .locals 14
    .parameter "bReload"

    .prologue
    const/16 v10, 0xff

    const/16 v11, 0x5f

    const/4 v3, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 4481
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-ne v0, v3, :cond_4

    .line 4482
    const/4 v8, 0x1

    .line 4484
    .local v8, nSSState:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 4494
    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 4591
    .end local v8           #nSSState:I
    :goto_1
    :sswitch_0
    return-void

    .line 4486
    .restart local v8       #nSSState:I
    :catch_0
    move-exception v7

    .line 4487
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4488
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 4489
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 4491
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4496
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_0
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-eq v0, v3, :cond_1

    .line 4497
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPosTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dmc/HtcDMC$PosTimerTask;

    invoke-direct {v2, p0, v13}, Lcom/htc/dmc/HtcDMC$PosTimerTask;-><init>(Lcom/htc/dmc/HtcDMC;Lcom/htc/dmc/HtcDMC$1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dmc/HtcDMC;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPosTimer:Ljava/util/Timer;

    .line 4499
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    invoke-virtual {p0, v1, v13}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 4500
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    const-string v2, "common_icon_pause_slideshow"

    const v3, 0x2080915

    const v4, 0x7f080047

    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mIsBtnPPEnable:Z

    if-eqz v0, :cond_2

    move v5, v10

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/dmc/HtcDMC;->setButtonFace(Landroid/view/View;Ljava/lang/String;III)V

    goto :goto_1

    :cond_2
    move v5, v11

    goto :goto_2

    .line 4507
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPosTimer:Ljava/util/Timer;

    .line 4508
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    invoke-virtual {p0, v1, v13}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 4509
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    const-string v2, "common_icon_play"

    const v3, 0x2080927

    const v4, 0x7f080048

    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mIsBtnPPEnable:Z

    if-eqz v0, :cond_3

    move v5, v10

    :goto_3
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/dmc/HtcDMC;->setButtonFace(Landroid/view/View;Ljava/lang/String;III)V

    goto :goto_1

    :cond_3
    move v5, v11

    goto :goto_3

    .line 4519
    .end local v8           #nSSState:I
    :cond_4
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    if-ne p1, v12, :cond_9

    .line 4522
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v9

    .line 4523
    .local v9, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v9, :cond_a

    .line 4524
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    iput v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    .line 4525
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-nez v0, :cond_6

    .line 4526
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I

    .line 4527
    :cond_6
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v12, :cond_7

    .line 4528
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I

    .line 4529
    :cond_7
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v3, :cond_8

    .line 4530
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I

    .line 4531
    :cond_8
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x1

    #setter for: Lcom/htc/dmc/HtcDMC$DMCStatus;->bStateSynced:Z
    invoke-static {v0, v1}, Lcom/htc/dmc/HtcDMC$DMCStatus;->access$6702(Lcom/htc/dmc/HtcDMC$DMCStatus;Z)Z

    .line 4533
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- init nPlaystate, get current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v2, v2, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4549
    .end local v9           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    #getter for: Lcom/htc/dmc/HtcDMC$DMCStatus;->bStateSynced:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC$DMCStatus;->access$6700(Lcom/htc/dmc/HtcDMC$DMCStatus;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    :goto_5
    sparse-switch v0, :sswitch_data_0

    .line 4572
    :goto_6
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_1

    .line 4582
    :sswitch_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    sget-object v2, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    const v3, 0x7f08002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4537
    .restart local v9       #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_a
    :try_start_2
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    .line 4540
    .end local v9           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_2
    move-exception v7

    .line 4541
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4542
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 4543
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .line 4545
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 4549
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_b
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I

    goto :goto_5

    .line 4552
    :sswitch_2
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-eq v0, v3, :cond_c

    .line 4553
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mPosTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dmc/HtcDMC$PosTimerTask;

    invoke-direct {v2, p0, v13}, Lcom/htc/dmc/HtcDMC$PosTimerTask;-><init>(Lcom/htc/dmc/HtcDMC;Lcom/htc/dmc/HtcDMC$1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dmc/HtcDMC;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPosTimer:Ljava/util/Timer;

    .line 4554
    :cond_c
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    invoke-virtual {p0, v1, v13}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 4555
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    const-string v2, "common_icon_pause_slideshow"

    const v3, 0x2080915

    const v4, 0x7f080047

    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mIsBtnPPEnable:Z

    if-eqz v0, :cond_d

    move v5, v10

    :goto_7
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/dmc/HtcDMC;->setButtonFace(Landroid/view/View;Ljava/lang/String;III)V

    goto :goto_6

    :cond_d
    move v5, v11

    goto :goto_7

    .line 4563
    :sswitch_3
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC;->mPosTimer:Ljava/util/Timer;

    .line 4564
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;

    invoke-virtual {p0, v1, v13}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 4565
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnPP:Landroid/view/View;

    const-string v2, "common_icon_play"

    const v3, 0x2080927

    const v4, 0x7f080048

    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC;->mIsBtnPPEnable:Z

    if-eqz v0, :cond_e

    move v5, v10

    :goto_8
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/dmc/HtcDMC;->setButtonFace(Landroid/view/View;Ljava/lang/String;III)V

    goto/16 :goto_6

    :cond_e
    move v5, v11

    goto :goto_8

    .line 4585
    :sswitch_4
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iput v12, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I

    goto/16 :goto_1

    .line 4494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4549
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3e8 -> :sswitch_3
    .end sparse-switch

    .line 4572
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x3e8 -> :sswitch_4
    .end sparse-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 2037
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2060
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 2039
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2040
    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2041
    :cond_2
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnLibListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 2042
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnLibListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 2048
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 2049
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 2050
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 2054
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 2055
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 2056
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 2037
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
    .end sparse-switch
.end method

.method protected getCurDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 7

    .prologue
    .line 3039
    const/4 v0, 0x0

    .line 3042
    .local v0, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_start_0
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3052
    :cond_0
    :goto_0
    return-object v0

    .line 3044
    :catch_0
    move-exception v1

    .line 3045
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3046
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 3047
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 3049
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "szListIndex"
    .parameter "szStatus"

    .prologue
    .line 145
    if-nez p2, :cond_1

    .line 147
    if-eqz p1, :cond_0

    const-string v0, ""

    if-ne p1, v0, :cond_2

    .line 149
    :cond_0
    iget-object p2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRName:Ljava/lang/String;

    .line 156
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 152
    .restart local p2
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 4115
    const-string v6, "[HtcDMC]"

    const-string v7, "OnActivityResult"

    invoke-static {v6, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4117
    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    .line 4183
    :cond_0
    :goto_0
    return-void

    .line 4121
    :cond_1
    const/16 v6, 0x14

    if-ne p1, v6, :cond_4

    .line 4124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DMR"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Lcom/htc/dmc/HtcDMC;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4127
    .local v0, Prf:Landroid/content/SharedPreferences;
    const-string v6, "DMR"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4129
    .local v2, curDMR:Ljava/lang/String;
    const-string v6, "[HtcDMC]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DMR choosed, ID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4131
    if-nez v2, :cond_2

    .line 4133
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/htc/dmc/HtcDMC;->DMRPowerOff(I)V

    goto :goto_0

    .line 4134
    :cond_2
    iget-object v6, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4139
    :try_start_0
    iget-object v6, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v8, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V

    .line 4140
    iget-object v6, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget v8, p0, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC;->mszAppTitle:Ljava/lang/String;

    invoke-interface {v6, v7, v2, v8, v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 4142
    const-string v6, "[HtcDMC]"

    const-string v7, "Changed OK..."

    invoke-static {v6, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4143
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;

    .line 4144
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->DMCPreparePlaying()Z

    .line 4151
    :goto_1
    iget-object v6, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v7, 0x1

    iput v7, v6, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4153
    :catch_0
    move-exception v3

    .line 4154
    .local v3, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4155
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 4146
    .end local v3           #e:Ljava/lang/NullPointerException;
    :cond_3
    :try_start_1
    const-string v6, "[HtcDMC]"

    const-string v7, "Changed Fail..."

    invoke-static {v6, v7}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4156
    :catch_1
    move-exception v3

    .line 4157
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4161
    .end local v0           #Prf:Landroid/content/SharedPreferences;
    .end local v2           #curDMR:Ljava/lang/String;
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_4
    const/16 v6, 0x26

    if-ne p1, v6, :cond_0

    .line 4163
    iget v6, p0, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    if-eq v6, v8, :cond_0

    .line 4164
    const-string v6, "[HtcDMC]"

    const-string v7, "Playlist order changed"

    invoke-static {v6, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4167
    const/4 v5, 0x0

    .line 4168
    .local v5, naPushList:[I
    const-string v6, "NOW_PLAYING_LIST"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 4170
    if-eqz v5, :cond_6

    array-length v6, v5

    if-lez v6, :cond_6

    .line 4171
    iput-object v5, p0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    .line 4172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4173
    .local v1, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v6, p0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    array-length v6, v6

    if-ge v4, v6, :cond_5

    .line 4174
    iget-object v6, p0, Lcom/htc/dmc/HtcDMC;->mCurPushList:[I

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4173
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4176
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PushList_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/htc/dmc/HtcDMC;->serializeBundle(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4180
    .end local v1           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #i:I
    :cond_6
    iput-boolean v8, p0, Lcom/htc/dmc/HtcDMC;->mIsResetPlaylist:Z

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 1701
    const-string v1, "[HtcDMC]"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1705
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->setContentView(I)V

    .line 1707
    iput-boolean v3, p0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    .line 1709
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->getLayoutCase()I

    move-result v0

    .line 1710
    .local v0, layoutCase:I
    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC;->InitUI(I)V

    .line 1711
    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC;->updateLayoutParam(I)V

    .line 1714
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->HandleOnServiceConnected()V

    .line 1715
    invoke-direct {p0, v3}, Lcom/htc/dmc/HtcDMC;->updatePanelRotation(Z)V

    .line 1716
    const-string v1, "[HtcDMC]"

    const-string v2, "on config change"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 1554
    const-string v9, "[HtcDMC]"

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1557
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sput-object v9, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    .line 1559
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1560
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1562
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->getLayoutCase()I

    move-result v9

    if-nez v9, :cond_4

    .line 1564
    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v9, Lcom/htc/dmc/HtcDMC;->mScreenWidth:I

    .line 1565
    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v9, Lcom/htc/dmc/HtcDMC;->mScreenHeight:I

    .line 1573
    :goto_0
    const-string v9, "[HtcDMC]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Screen res:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/dmc/HtcDMC;->mScreenWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "px, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/dmc/HtcDMC;->mScreenHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "px"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1576
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 1579
    const-string v9, "cookie"

    const/4 v10, -0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1580
    .local v6, nCookie:I
    const-string v9, "Mode"

    const/4 v10, -0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1581
    .local v7, nMode:I
    const/4 v9, 0x1

    if-ne v6, v9, :cond_0

    .line 1582
    const/4 v9, 0x1

    iput v9, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    .line 1583
    const/4 v9, 0x1

    iput v9, p0, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    .line 1585
    :cond_0
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    .line 1586
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    .line 1587
    const/4 v9, 0x4

    iput v9, p0, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    .line 1589
    :cond_1
    if-nez v6, :cond_2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_2

    .line 1590
    const/4 v9, 0x2

    iput v9, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    .line 1591
    const/4 v9, 0x2

    iput v9, p0, Lcom/htc/dmc/HtcDMC;->mCurFCap:I

    .line 1593
    :cond_2
    iput v6, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    .line 1594
    const-string v9, "[HtcDMC]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(onCreate) cur mode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    .end local v6           #nCookie:I
    .end local v7           #nMode:I
    :cond_3
    iget v9, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 1599
    const v0, 0x20801c1

    .line 1601
    .local v0, bgId:I
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1609
    .end local v0           #bgId:I
    :goto_1
    const v9, 0x7f030001

    invoke-virtual {p0, v9}, Lcom/htc/dmc/HtcDMC;->setContentView(I)V

    .line 1611
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->getLayoutCase()I

    move-result v5

    .line 1612
    .local v5, layoutCase:I
    invoke-direct {p0, v5}, Lcom/htc/dmc/HtcDMC;->InitUI(I)V

    .line 1613
    invoke-direct {p0, v5}, Lcom/htc/dmc/HtcDMC;->updateLayoutParam(I)V

    .line 1618
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v8

    .line 1619
    .local v8, retainObj:Ljava/lang/Object;
    if-nez v8, :cond_6

    .line 1620
    const-string v9, "[HtcDMC]"

    const-string v10, "NOT Orient.change\'s onCreate"

    invoke-static {v9, v10}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    .line 1626
    :goto_2
    const-string v9, "FolderBundle"

    invoke-direct {p0, v9}, Lcom/htc/dmc/HtcDMC;->unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/dmc/HtcDMC;->mCurFolderList:Ljava/util/ArrayList;

    .line 1627
    invoke-direct {p0, p0}, Lcom/htc/dmc/HtcDMC;->prepareVolumeUI(Landroid/content/Context;)V

    .line 1628
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getRequestedOrientation()I

    move-result v9

    iput v9, p0, Lcom/htc/dmc/HtcDMC;->mOrientation:I

    .line 1630
    const-string v9, "[HtcDMC]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oncreate, current mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mCurSource = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/dmc/HtcDMC;->mCurSource:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1634
    .local v2, f:Landroid/content/IntentFilter;
    const-string v9, "com.htc.dmc.setstatesync"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1635
    const-string v9, "com.htc.dmc.addtoplaylist"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1636
    const-string v9, "com.htc.dmc.showdetails"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1638
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1639
    .local v3, fScan:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1640
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1641
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1642
    const-string v9, "file"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1644
    iget-object v9, p0, Lcom/htc/dmc/HtcDMC;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v3}, Lcom/htc/dmc/HtcDMC;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1645
    iget-object v9, p0, Lcom/htc/dmc/HtcDMC;->mDMCActionListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v2}, Lcom/htc/dmc/HtcDMC;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1646
    return-void

    .line 1569
    .end local v2           #f:Landroid/content/IntentFilter;
    .end local v3           #fScan:Landroid/content/IntentFilter;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #layoutCase:I
    .end local v8           #retainObj:Ljava/lang/Object;
    :cond_4
    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v9, Lcom/htc/dmc/HtcDMC;->mScreenWidth:I

    .line 1570
    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v9, Lcom/htc/dmc/HtcDMC;->mScreenHeight:I

    goto/16 :goto_0

    .line 1605
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_5
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/htc/dmc/HtcDMC;->requestWindowFeature(I)Z

    .line 1606
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x400

    const/16 v11, 0x400

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_1

    .line 1623
    .restart local v5       #layoutCase:I
    .restart local v8       #retainObj:Ljava/lang/Object;
    :cond_6
    const-string v9, "[HtcDMC]"

    const-string v10, "Orient.change\'s onCreate"

    invoke-static {v9, v10}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x7f08003b

    const v4, 0x20c015f

    const/4 v3, 0x0

    .line 1440
    packed-switch p1, :pswitch_data_0

    .line 1541
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1446
    :pswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC;->mszAppTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/dmc/HtcDMC$4;

    invoke-direct {v1, p0}, Lcom/htc/dmc/HtcDMC$4;-><init>(Lcom/htc/dmc/HtcDMC;)V

    invoke-virtual {v0, v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1470
    :pswitch_2
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    packed-switch v0, :pswitch_data_1

    .line 1509
    :pswitch_3
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/dmc/HtcDMC$10;

    invoke-direct {v1, p0}, Lcom/htc/dmc/HtcDMC$10;-><init>(Lcom/htc/dmc/HtcDMC;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08000a

    new-instance v2, Lcom/htc/dmc/HtcDMC$9;

    invoke-direct {v2, p0}, Lcom/htc/dmc/HtcDMC$9;-><init>(Lcom/htc/dmc/HtcDMC;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08001a

    new-instance v2, Lcom/htc/dmc/HtcDMC$8;

    invoke-direct {v2, p0}, Lcom/htc/dmc/HtcDMC$8;-><init>(Lcom/htc/dmc/HtcDMC;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1472
    :pswitch_4
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/dmc/HtcDMC$5;

    invoke-direct {v1, p0}, Lcom/htc/dmc/HtcDMC$5;-><init>(Lcom/htc/dmc/HtcDMC;)V

    invoke-virtual {v0, v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1484
    :pswitch_5
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/dmc/HtcDMC$6;

    invoke-direct {v1, p0}, Lcom/htc/dmc/HtcDMC$6;-><init>(Lcom/htc/dmc/HtcDMC;)V

    invoke-virtual {v0, v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1496
    :pswitch_6
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/htc/dmc/HtcDMC;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/dmc/HtcDMC$7;

    invoke-direct {v1, p0}, Lcom/htc/dmc/HtcDMC$7;-><init>(Lcom/htc/dmc/HtcDMC;)V

    invoke-virtual {v0, v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1440
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1470
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2075
    const-string v0, "[HtcDMC]"

    const-string v1, "onCreateOptionMenu"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2078
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    if-ne v0, v4, :cond_0

    .line 2079
    const/16 v0, 0x4b8

    const v1, 0x7f080014

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2081
    :cond_0
    iget v0, p0, Lcom/htc/dmc/HtcDMC;->mCurMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2082
    const/16 v0, 0x4b2

    const v1, 0x7f080005

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2087
    :cond_1
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2088
    const/16 v0, 0x4b3

    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080328

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2095
    :cond_2
    return v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 2021
    const-string v0, "[HtcDMC]"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->StopTimers()V

    .line 2025
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2028
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCActionListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2029
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2031
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2032
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 1662
    const-string v0, "[HtcDMC]"

    const-string v1, "onNewIntent!!"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    invoke-virtual {p0, p1}, Lcom/htc/dmc/HtcDMC;->setIntent(Landroid/content/Intent;)V

    .line 1665
    iput-boolean v2, p0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    .line 1668
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->InitData()V

    .line 1669
    iput-boolean v2, p0, Lcom/htc/dmc/HtcDMC;->mIsNewIntented:Z

    .line 1670
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    .line 1671
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->HandleOnServiceConnected()V

    .line 1672
    const-string v0, "[HtcDMC]"

    const-string v1, "(Svc!=null)NewIntent come after svcconnected! Renew Middle Layer..."

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1680
    return-void

    .line 1675
    :cond_0
    const-string v0, "[HtcDMC]"

    const-string v1, "(Svc==null)NewIntent come before svcconnected! NO Renew Middle Layer"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 2118
    const-string v0, "[HtcDMC]"

    const-string v1, "onOptionItem Selected"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/dmc/HtcDMC;->ExecuteMenuFunc(I)V

    .line 2120
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1958
    const-string v0, "[HtcDMC]"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1960
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 2100
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2101
    invoke-virtual {p0, p1}, Lcom/htc/dmc/HtcDMC;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1949
    const-string v0, "[HtcDMC]"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1955
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1546
    const-string v1, "[HtcDMC]"

    const-string v2, "onRetainNonConfigurationInstance"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    .line 1548
    .local v0, obj:Ljava/lang/Object;
    return-object v0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1722
    const-string v1, "[HtcDMC]"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    iget-boolean v1, p0, Lcom/htc/dmc/HtcDMC;->mIsNewIntented:Z

    if-nez v1, :cond_1

    .line 1726
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->InitData()V

    .line 1731
    :goto_0
    const/4 v0, 0x0

    .line 1732
    .local v0, bBindRes:Z
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/htc/dmc/HtcDMC;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1733
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1735
    const-string v1, "[HtcDMC]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MLService Bind result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iput-boolean v4, p0, Lcom/htc/dmc/HtcDMC;->mServiceUnbinded:Z

    .line 1738
    if-nez v0, :cond_0

    .line 1739
    const-string v1, "[HtcDMC]"

    const-string v2, "finish() called, 1182"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->finish()V

    .line 1743
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1744
    return-void

    .line 1728
    .end local v0           #bBindRes:Z
    :cond_1
    iput-boolean v4, p0, Lcom/htc/dmc/HtcDMC;->mIsNewIntented:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1974
    const-string v2, "[HtcDMC]"

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    :try_start_0
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    .line 1977
    const-string v2, "[HtcDMC]"

    const-string v3, "unregister service callbacks"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dmc/HtcDMC;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 1979
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1989
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/htc/dmc/HtcDMC;->mIsNewLaunch:Z

    .line 1991
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->StopTimers()V

    .line 1993
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iput-boolean v5, v2, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastR:Z

    .line 1994
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iput-boolean v5, v2, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastS:Z

    .line 1997
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->SavePref()Z

    .line 2000
    invoke-direct {p0, v6}, Lcom/htc/dmc/HtcDMC;->getPrefFile(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2001
    .local v0, Pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    const-string v2, "DMCPref"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NeedClear"

    if-ne v2, v3, :cond_1

    .line 2002
    const-string v2, "[HtcDMC]"

    const-string v3, "--Do Clear Pref"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->ClearPref()Z

    .line 2007
    :goto_1
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC;->mSC:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_2

    .line 2008
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2009
    const-string v2, "[HtcDMC]"

    const-string v3, "ML Service unbind"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    :goto_2
    iput-object v7, p0, Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 2014
    iput-boolean v6, p0, Lcom/htc/dmc/HtcDMC;->mServiceUnbinded:Z

    .line 2016
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2017
    return-void

    .line 1981
    .end local v0           #Pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 1982
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1983
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1984
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1986
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2005
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #Pref:Landroid/content/SharedPreferences;
    :cond_1
    const-string v2, "[HtcDMC]"

    const-string v3, "--Pref KEEP"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2011
    :cond_2
    const-string v2, "[HtcDMC]"

    const-string v3, "ML ServiceConnection null"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setStateSync()V
    .locals 2

    .prologue
    .line 3851
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I

    if-nez v0, :cond_0

    .line 3852
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC$DMCStatus;->setUserState(I)V

    .line 3853
    :cond_0
    return-void
.end method
