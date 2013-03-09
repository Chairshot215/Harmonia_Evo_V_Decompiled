.class public Lcom/htc/music/DMCServiceManager;
.super Ljava/lang/Object;
.source "DMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/DMCServiceManager$SwitchTimerTask;,
        Lcom/htc/music/DMCServiceManager$PgTimerTask;,
        Lcom/htc/music/DMCServiceManager$PosTimerTask;,
        Lcom/htc/music/DMCServiceManager$DMCStatus;,
        Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x190

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

.field private static final LANDSCAPE_GALLERY_PANEL:I = 0xf

.field private static final LANDSCAPE_MUSIC_PANEL:I = 0x6

.field private static final MENU_ADDTOPLAYLIST:I = 0x4b6

.field private static final MENU_CHANGEORDER:I = 0x4b7

.field private static final MENU_EDITNP:I = 0x4b5

.field private static final MENU_PROPERTIES:I = 0x4b3

.field private static final MENU_REPEAT:I = 0x4b2

.field private static final MENU_SETTINGS:I = 0x4b4

.field private static final MENU_SHUFFLE:I = 0x4b1

.field public static final META_CHANGED:Ljava/lang/String; = "com.htc.music.dmcsvcman.metachanged"

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

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.dmcsvcman.playstatechanged"

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

.field protected static final STATE_TIMEOUT_GALLERY:J = 0x88b8L

.field protected static final STATE_TIMEOUT_MSG:J = 0xfa0L

.field protected static final STATE_TIMEOUT_MUSIC:J = 0x61a8L

.field private static final TAG:Ljava/lang/String; = "[DMCServiceManager]"

.field private static final UI_ALPHA_DISABLE:I = 0x5f

.field private static final UI_ALPHA_ENABLE:I = 0xff

.field private static final VOLBLOCK_TIMEOUT:I = 0xfa

.field private static final VOLUI_TIMEOUT:I = 0xbb8

.field protected static final VOL_LEVEL_COUNT:I = 0x32

.field private static mContext:Landroid/app/Activity;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field private mAdditionalMessage:Landroid/widget/TextView;

.field private mBtnNextListener:Landroid/view/View$OnClickListener;

.field private mBtnPPListener:Landroid/view/View$OnClickListener;

.field private mBtnPowerListener:Landroid/view/View$OnClickListener;

.field private mBtnPrevListener:Landroid/view/View$OnClickListener;

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

.field private mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

.field private mDMCPref:Landroid/content/SharedPreferences;

.field private mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

.field private final mHandler:Landroid/os/Handler;

.field private mIsBtnPPEnable:Z

.field private mIsNewIntented:Z

.field private mIsNewLaunch:Z

.field private mIsRequestDetails:Z

.field private mIsResetPlaylist:Z

.field private mLargeStreamIcon:Landroid/widget/ImageView;

.field private mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

.field private mOncePlayed:Z

.field private mOrientation:I

.field private mPosTimer:Ljava/util/Timer;

.field private mSC:Landroid/content/ServiceConnection;

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mServiceUnbinded:Z

.field private mSwitchTimer:Ljava/util/Timer;

.field private mVolListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mVolSetBlocked:Z

.field private mVolumeDialog:Landroid/app/Dialog;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private mVolumeLevel:Landroid/widget/SeekBar;

.field private mVolumeMessage:Landroid/widget/TextView;

.field private mVolumeView:Landroid/view/View;

.field mbNP:Z

.field private mszAppTitle:Ljava/lang/String;

.field private mszListIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/music/DMCServiceManager;->sFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/music/DMCServiceManager;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/music/DMCServiceManager;->sFormatter:Ljava/util/Formatter;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/music/DMCServiceManager;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/ServiceConnection;I)V
    .locals 7

    const-wide/16 v5, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/htc/music/DMCServiceManager$1;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$1;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCActionListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    new-instance v1, Lcom/htc/music/DMCServiceManager$DMCStatus;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/DMCServiceManager$DMCStatus;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mServiceUnbinded:Z

    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z

    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsNewIntented:Z

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mCurThumbHQ:Z

    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurFCap:I

    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurSlideDur:I

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurIndex:I

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    iput-wide v5, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    iput-wide v5, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z

    iput-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mIsBtnPPEnable:Z

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mszAppTitle:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mszListIndex:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    new-instance v1, Lcom/htc/music/DMCServiceManager$2;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$2;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z

    new-instance v1, Lcom/htc/music/DMCServiceManager$3;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$3;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/music/DMCServiceManager$4;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$4;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnPrevListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/htc/music/DMCServiceManager$5;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$5;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnPPListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/htc/music/DMCServiceManager$6;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$6;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnNextListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/htc/music/DMCServiceManager$7;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$7;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnPowerListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/htc/music/DMCServiceManager$8;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$8;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolListener:Landroid/view/View$OnClickListener;

    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mbNP:Z

    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsResetPlaylist:Z

    new-instance v1, Lcom/htc/music/DMCServiceManager$9;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$9;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/htc/music/DMCServiceManager$10;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$10;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z

    new-instance v1, Lcom/htc/music/DMCServiceManager$13;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$13;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mVolListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const-string v1, "[DMCServiceManager]"

    const-string v2, "DMCServiceManager constructor"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    :goto_0
    sput-object p1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    iput-object p2, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    sget-object v1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/htc/music/DMCServiceManager;->prepareVolumeUI(Landroid/content/Context;)V

    const-string v1, "[DMCServiceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCurSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/music/DMCServiceManager;->mIsNewIntented:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->InitData()V

    :goto_1
    const/4 v0, 0x0

    sget-object v1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const-string v1, "[DMCServiceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MLService Bind result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mServiceUnbinded:Z

    if-nez v0, :cond_0

    const-string v1, "[DMCServiceManager]"

    const-string v2, "service binding fail"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsNewIntented:Z

    goto :goto_1
.end method

.method private ClearPref()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method private DMCDoPP(Z)V
    .locals 4

    const-string v1, "[DMCServiceManager]"

    const-string v2, "DMC Music Do playpause()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    #calls: Lcom/htc/music/DMCServiceManager$DMCStatus;->isPlaying()Z
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$2700(Lcom/htc/music/DMCServiceManager$DMCStatus;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "[DMCServiceManager]"

    const-string v2, "do play..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->resume(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/DMCServiceManager$DMCStatus;->setUserState(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "[DMCServiceManager]"

    const-string v2, "do pause..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/DMCServiceManager$DMCStatus;->setUserState(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private DMCPreparePlaying()Z
    .locals 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-interface {v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getControllingRendererID(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    iget v9, p0, Lcom/htc/music/DMCServiceManager;->mCurFCap:I

    iget-object v10, p0, Lcom/htc/music/DMCServiceManager;->mszAppTitle:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    const-string v6, "[DMCServiceManager]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createMediaController OK, cookie:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurFCap:I

    invoke-interface {v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(II)V

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v7, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v7, v6, Lcom/htc/music/DMCServiceManager$DMCStatus;->nRepeatState:I

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-boolean v7, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v7, v6, Lcom/htc/music/DMCServiceManager$DMCStatus;->bShuffleState:Z

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    :cond_0
    if-ne v3, v4, :cond_1

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    :cond_1
    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCVolumeControlSupport(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "[DMCServiceManager]"

    const-string v7, "DMR doesn\'t support Volume Control..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-boolean v6, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v9, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCount:J

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v9, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCurrentIndex:J

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getControlItemInfo(ILjava/lang/String;)V

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v7, 0x0

    #calls: Lcom/htc/music/DMCServiceManager$DMCStatus;->setPosUI(I)V
    invoke-static {v6, v7}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$2600(Lcom/htc/music/DMCServiceManager$DMCStatus;I)V

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0xa

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/music/DMCServiceManager;->UIRefreshPlayState(Z)V

    :goto_1
    return v4

    :cond_4
    const-string v6, "[DMCServiceManager]"

    const-string v7, "DMR support Volume Control..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    invoke-virtual {v6}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshVolume()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move v4, v5

    goto :goto_1
.end method

.method private GetPref()Z
    .locals 9

    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    sget-object v3, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMR"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const-string v3, "DMR"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "DMCPref"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurServerID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurContainerID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurContentID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurFilePath"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurPLStartIdx"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurPLEndIdx"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurPLDirection"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v5, "CurVol"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private InitData()V
    .locals 6

    const/4 v4, 0x1

    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/htc/music/DMCServiceManager;->getPrefFile(I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->GetPref()Z

    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    :goto_0
    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    if-nez v2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushList_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/music/DMCServiceManager;->unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    goto :goto_0

    :cond_2
    const-string v2, "[DMCServiceManager]"

    const-string v3, "Values form Pref:::"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/music/DMCServiceManager;->mCurIndex:I

    :goto_2
    const-string v2, "[DMCServiceManager]"

    const-string v3, "LOCAL SRC -- DMC in \'Local Push\' Mode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--Mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--dmr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--svr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--container:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--FilePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--Shuffle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserShuffleState:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    const-string v3, "--For PL"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  End:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Dir:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    if-eqz v2, :cond_3

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- (LOCAL Only!) PushList len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "[DMCServiceManager]"

    const-string v3, "--For Status"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Vol:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-wide v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPosition:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Dur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-wide v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->lDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->SavePref()Z

    return-void

    :cond_4
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurIndex:I

    goto/16 :goto_2

    :cond_5
    const-string v2, "[DMCServiceManager]"

    const-string v3, "REMOTE SRC -- DMC in \'Remote Ctrl\' Mode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private SavePref()Z
    .locals 4

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "[DMCServiceManager]"

    const-string v1, "contentID should never be null, save pref aborted!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DMCPref"

    const-string v2, "Saved"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurServerID"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurContainerID"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurContentID"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurFilePath"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurPLStartIdx"

    iget-wide v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurPLEndIdx"

    iget-wide v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurPLDirection"

    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurVol"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v2, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0
.end method

.method private TuneVolume(II)V
    .locals 7

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    iput v4, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v1, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    if-gez p1, :cond_1

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v3, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    if-le v3, p2, :cond_2

    :cond_1
    if-lez p1, :cond_6

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v3, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    sub-int v4, p2, p1

    if-lt v3, v4, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput p2, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    invoke-virtual {v3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    if-gez p1, :cond_3

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    const v4, 0x1080350

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v3, v4, v5, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->resetVolUITimeout()V

    return-void

    :cond_5
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    iput v4, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    const v4, 0x108034d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v6, v6, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/DMCServiceManager;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->SavePref()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/music/DMCServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/music/DMCServiceManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager;->setDMCLine(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/music/DMCServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager;->mCurThumbHQ:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/music/DMCServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/htc/music/DMCServiceManager;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->DMCPreparePlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mszListIndex:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/music/DMCServiceManager;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/htc/music/DMCServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/music/DMCServiceManager;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/music/DMCServiceManager;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/htc/music/DMCServiceManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager;->DMCDoPP(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/DMCServiceManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/DMCServiceManager;->TuneVolume(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/DMCServiceManager;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/music/DMCServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->resetVolUITimeout()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/DMCServiceManager;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/DMCServiceManager;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/DMCServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->resetVolBlock()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/DMCServiceManager;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/music/DMCServiceManager;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/DMCServiceManager;->mCurIndex:I

    return p1
.end method

.method private getPrefFile(I)Landroid/content/SharedPreferences;
    .locals 2

    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v1, "DMCPref_Video"

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v1, "DMCPref_Music"

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v1, "DMCPref_Photo"

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isServiceHealthy()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "DLNAService down!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWifiEnabled()Z
    .locals 5

    const/4 v0, 0x0

    sget-object v3, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0xe10

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    sget-object v2, Lcom/htc/music/DMCServiceManager;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 p3, 0x1

    sget-object v1, Lcom/htc/music/DMCServiceManager;->sTimeArgs:[Ljava/lang/Object;

    div-long v2, p1, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    div-long v2, p1, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    cmp-long v2, p1, v8

    if-ltz v2, :cond_1

    const v2, 0x7f070005

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/music/DMCServiceManager;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    if-ne p4, v7, :cond_0

    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private prepareVolumeUI(Landroid/content/Context;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x0

    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x10900af

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    const v8, 0x1020331

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    const v8, 0x1020330

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v7, 0x10900b0

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    const v8, 0x102032f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    const v7, 0x1020332

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    const v7, 0x10202d9

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mVolListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    new-instance v7, Landroid/app/Dialog;

    const v8, 0x10302fa

    invoke-direct {v7, p1, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    const-string v8, "Volume control"

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    new-instance v8, Lcom/htc/music/DMCServiceManager$11;

    invoke-direct {v8, p0}, Lcom/htc/music/DMCServiceManager$11;-><init>(Lcom/htc/music/DMCServiceManager;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    new-instance v8, Lcom/htc/music/DMCServiceManager$12;

    invoke-direct {v8, p0}, Lcom/htc/music/DMCServiceManager$12;-><init>(Lcom/htc/music/DMCServiceManager;)V

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v7, 0x7d3

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    const v8, 0x108029b

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method private resetVolBlock()V
    .locals 4

    const/16 v2, 0xca

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private resetVolUITimeout()V
    .locals 4

    const/16 v2, 0xc9

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private serializeBundle(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v3, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private setDMCLine(I)V
    .locals 5

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDMCLine nForce:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->loadInfo()V

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->refreshInfo()V

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshTime()V

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "LastDMRName"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    if-nez v2, :cond_2

    :cond_2
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v2}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    goto :goto_0
.end method

.method private unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v5, p1}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v4

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v5, "[DMCServiceManager]"

    const-string v6, "can not unserialize arraylist"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method protected DMRPowerOff(I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v5, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DMR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v4, v5, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "DMR"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v8}, Lcom/htc/music/DMCServiceManager;->getPrefFile(I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "DMCPref"

    const-string v6, "NeedClear"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.htc.music.PLAYBACK_VIEWER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "[DMCServiceManager]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Goto Music, passing ContentID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, "Server"

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "container"

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "content"

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v4, "startIdx"

    iget-wide v6, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "endIdx"

    iget-wide v6, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "direction"

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "filepath"

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Render"

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "SaveRender"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_3
    const-string v6, "Server"

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "container"

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "content"

    const-string v6, "0"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public HandleOnServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    const/4 v4, 0x1

    iget-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mServiceUnbinded:Z

    if-ne v3, v4, :cond_1

    const-string v3, "[DMCServiceManager]"

    const-string v4, "return, since service should already unbinded"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v3, :cond_2

    const-string v3, "[DMCServiceManager]"

    const-string v4, "MiddleLayer Service null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z

    sget-object v3, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v4, "com.htc.dmc_preferences"

    sget-object v5, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "dmc_timeout_setting"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    const-string v5, "JPEG_SM,JPEG_TN,PNG_TN"

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setControllingTimeout(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    iget-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mIsResetPlaylist:Z

    if-eqz v3, :cond_4

    :try_start_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mIsResetPlaylist:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->DMCPreparePlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "[DMCServiceManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleOnServiceConnected mIsNewLaunch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const-wide/32 v4, 0x927c0

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setControllingTimeout(J)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public StopTimers()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->PgTimer:Ljava/util/Timer;

    return-void
.end method

.method public TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    const-string v0, "[DMCServiceManager]"

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

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    const-string v0, "[DMCServiceManager]"

    const-string v1, "Timer already disabled..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;
    .locals 3

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    const-string v0, "[DMCServiceManager]"

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

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p1

    :cond_0
    invoke-virtual/range {p1 .. p6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    :cond_1
    const-string v0, "[DMCServiceManager]"

    const-string v1, "Timer already enabled..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected UIRefreshPlayState(Z)V
    .locals 13

    const-wide/16 v5, 0x1f4

    const-wide/16 v3, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    if-ne v0, v11, :cond_2

    const/4 v8, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    :cond_1
    :goto_1
    :sswitch_0
    return-void

    :catch_0
    move-exception v7

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    if-eq v0, v11, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/music/DMCServiceManager$PosTimerTask;

    invoke-direct {v2, p0, v12}, Lcom/htc/music/DMCServiceManager$PosTimerTask;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/DMCServiceManager;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ne p1, v10, :cond_7

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    :cond_4
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v10, :cond_5

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    :cond_5
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v11, :cond_6

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    :cond_6
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z
    invoke-static {v0, v1}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$3902(Lcom/htc/music/DMCServiceManager$DMCStatus;Z)Z

    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- init nPlaystate, get current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v2, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    #getter for: Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$3900(Lcom/htc/music/DMCServiceManager$DMCStatus;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    :goto_3
    sparse-switch v0, :sswitch_data_0

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput v10, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    goto/16 :goto_1

    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_2
    move-exception v7

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    goto :goto_3

    :sswitch_2
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    if-eq v0, v11, :cond_8

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/music/DMCServiceManager$PosTimerTask;

    invoke-direct {v2, p0, v12}, Lcom/htc/music/DMCServiceManager$PosTimerTask;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/DMCServiceManager;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    goto :goto_4

    :sswitch_3
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3e8 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v0, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szArtist:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDMCThumbBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->getDLNAThumbBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v0, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v0, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    #calls: Lcom/htc/music/DMCServiceManager$DMCStatus;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$2700(Lcom/htc/music/DMCServiceManager$DMCStatus;)Z

    move-result v0

    return v0
.end method

.method public makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object p2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public next()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnNextListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public playpause()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager;->DMCDoPP(Z)V

    return-void
.end method

.method public prev()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnPrevListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "[DMCServiceManager]"

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    const-string v2, "[DMCServiceManager]"

    const-string v3, "unregister service callbacks"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    invoke-virtual {p0}, Lcom/htc/music/DMCServiceManager;->StopTimers()V

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput-boolean v5, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->bCanToastR:Z

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput-boolean v5, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->bCanToastS:Z

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->SavePref()Z

    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v6}, Lcom/htc/music/DMCServiceManager;->getPrefFile(I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "DMCPref"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NeedClear"

    if-ne v2, v3, :cond_2

    const-string v2, "[DMCServiceManager]"

    const-string v3, "--Do Clear Pref"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->ClearPref()Z

    :goto_1
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v2, "[DMCServiceManager]"

    const-string v3, "ML Service unbind"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iput-boolean v6, p0, Lcom/htc/music/DMCServiceManager;->mServiceUnbinded:Z

    invoke-virtual {p0}, Lcom/htc/music/DMCServiceManager;->StopTimers()V

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v2, "[DMCServiceManager]"

    const-string v3, "--Pref KEEP"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "[DMCServiceManager]"

    const-string v3, "ML ServiceConnection null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setStateSync()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/DMCServiceManager$DMCStatus;->setUserState(I)V

    :cond_0
    return-void
.end method
