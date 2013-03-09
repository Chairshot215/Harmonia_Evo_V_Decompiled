.class public Lcom/htc/htcmailwidgets/MailWidgetBase;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "MailWidgetBase.java"

# interfaces
.implements Lcom/htc/htcmailwidgets/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;,
        Lcom/htc/htcmailwidgets/MailWidgetBase$WidgetHandler;,
        Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;,
        Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;,
        Lcom/htc/htcmailwidgets/MailWidgetBase$AutoSyncRemainingTimeOutTask;
    }
.end annotation


# static fields
.field protected static final ANIMATION_DELAYED:J = 0x3e8L

.field protected static final DEFAULT_MAX_LINES:I = 0x5

.field protected static final DEFAULT_NO_ACCOUNT:J = -0x1L

.field protected static final DELAY_AUTO_SYNC:J = 0x320L

.field protected static final DELETED_ACCOUNT:J = -0x2L

.field protected static final DELETED_ACCOUNT_ACQUIRE:J = -0x3L

.field protected static final EAS_MESSAGE_CLASS_INT_IPM_Schedule_Meeting_Request:I = 0x6

.field protected static final LAUNCH_MAIL_DETAIL:I = 0x2710

.field protected static final LAUNCH_MAIL_REJECT:I = 0x2711

.field public static final LOG_ATS:Z = false

.field protected static M10_VIEW_PATH_LAND:Ljava/lang/String; = null

.field protected static M10_VIEW_PATH_PORT:Ljava/lang/String; = null

.field protected static final MAILLIST_UPDATE_FIRST_QUERY:I = 0xa

.field protected static final MAXIMUN_NOTIFICATION:I = 0x63

.field protected static final RESUME_DELAYED:J = 0x5dcL

.field protected static final UNKNOWN_ACCOUNT:J = -0x9L

.field public static final localLOGV:Z = false

.field protected static final sMSG_AUTO_SYNC_REMAINING_TIME_OUT:I = 0x1391

.field protected static final sMSG_BASE:I = 0x1388

.field protected static final sMSG_CONFIGURATION_CHANGED:I = 0x138a

.field protected static final sMSG_GET_AUTOSYNC_STATUS:I = 0x1392

.field protected static final sMSG_ON_RESUME_EASC_SYNC:I = 0x1390

.field protected static final sMSG_ON_STOP_EASC_SYNC:I = 0x138f

.field protected static final sMSG_PAUSE:I = 0x1388

.field protected static final sMSG_RELOAD_ACCOUNT_INFO:I = 0x138b

.field protected static final sMSG_REQUERY_ACCOUNT_INFO:I = 0x1393

.field protected static final sMSG_RESUME:I = 0x1389

.field protected static final sMSG_START_CHECK_ACCOUNT:I = 0x138e

.field protected static final sMSG_START_QUERY_MAIL:I = 0x138d

.field protected static final sMSG_SYNC_MAIL_SETTING:I = 0x138c

.field protected static final sUIMSG_BASE:I = 0x1770

.field protected static final sUIMSG_UPDATE_MAILDATA:I = 0x1772

.field protected static final sUIMSG_UPDATE_MAIL_BODY_LINES:I = 0x1770

.field protected static final sUIMSG_UPDATE_NOTIFICATION:I = 0x1773

.field protected static final sUIMSG_WIDGET_SHOW_PANEL:I = 0x1771

.field protected static final token_full_query:I = 0x14

.field protected static final token_full_requery:I = 0x1e

.field protected static final token_limit_10_query:I = 0xa

.field protected static final token_sort:I = 0x28


# instance fields
.field private final APP_ID:Ljava/lang/String;

.field private final CATEGORY_WIDGET:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field protected MAILLIST_UPDATE_ITEMS:I

.field private final TAG_ANALYTIC:Ljava/lang/String;

.field protected TIME_OUT:I

.field protected _col_account:I

.field protected _col_flags:I

.field protected _col_from:I

.field protected _col_fromEmail:I

.field protected _col_id:I

.field protected _col_importance:I

.field protected _col_incAttachment:I

.field protected _col_internaldate:I

.field protected _col_mailAct:I

.field protected _col_mailPreview:I

.field protected _col_messageClassInt:I

.field protected _col_read:I

.field protected _col_subject:I

.field protected _col_subjtype:I

.field protected fxControlObj:[Lcom/htc/fusion/fx/FxObject;

.field protected fxControlObjLand:[Lcom/htc/fusion/fx/FxObject;

.field protected fxControlObjPort:[Lcom/htc/fusion/fx/FxObject;

.field protected mAccountDefaultFolderId:I

.field protected mAccountId:J

.field protected mAccountName:Ljava/lang/String;

.field protected mAccountProtocol:I

.field protected mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

.field protected mCalendar:Ljava/util/Calendar;

.field protected mComposeBtnClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentPosition:I

.field protected mCursorCount:I

.field public mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

.field protected mDataReceiver:Landroid/content/BroadcastReceiver;

.field protected mEmptyPageListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstVisibleItemIndex:Landroid/graphics/PointF;

.field protected mFirstVisibleItemPosition:I

.field protected mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntExtractDataPosition:I

.field protected mListBtnClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mMailIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mMailInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;"
        }
    .end annotation
.end field

.field protected mMailUpdateIndex:I

.field protected mMaxLines:I

.field protected mOrientation:I

.field protected mPhotoSizeX:I

.field protected mPhotoSizeY:I

.field protected mProcessBodyIndex:I

.field protected mProcessContactIndex:I

.field protected mProcessDateIndex:I

.field protected mProcessIndex:I

.field protected mQueryHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

.field protected mResolution:I

.field protected mSceneSetting:Ljava/lang/String;

.field protected mStatusChangeListenerHandle:Ljava/lang/Object;

.field protected mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

.field protected mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field protected mTimer:Ljava/util/Timer;

.field protected mTimerTast:Ljava/util/TimerTask;

.field protected mTotalCounts:I

.field private mULogData:Lcom/htc/utils/ulog/ReusableULogData;

.field protected mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

.field protected mWhere:Ljava/lang/String;

.field protected mWidgetId:I

.field protected mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

.field protected mWidgetScene:Lcom/htc/fusion/fx/FxScene;

.field protected mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

.field protected mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

.field protected mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field protected mbAccountAssigned:Z

.field protected mbAddonly:Z

.field protected mbDoOrientation:Z

.field protected mbEnableAutoSync:Z

.field protected mbExtractMailBody:Z

.field protected mbExtractMailBodyTerminated:Z

.field protected mbFirstRunQuery:Z

.field protected mbFirstRunQueryCompleted:Z

.field protected mbFromIntent:Z

.field protected mbHasDeletedMail:Z

.field protected mbHasNewMailComingNotify:Z

.field protected mbHasUnreadMail:Z

.field protected mbHaveAccountName:Z

.field protected mbInDeleteMail:Z

.field protected mbInRefresh:Z

.field protected mbInvisible:Z

.field protected mbIsESAStop:Z

.field protected mbIsICS:Z

.field protected mbLaunchMailApp:Z

.field protected mbLoacteCurrentItemPosition:Z

.field protected mbLocalKorea:Z

.field protected mbNeedExtractMailCursor:Z

.field protected mbNeedGetAutoSyncStatus:Z

.field protected mbNeedMailChange:Z

.field protected mbNeedRefreshAccount:Z

.field protected mbNeedRefreshDateTime:Z

.field protected mbNeedRefreshFlag:Z

.field protected mbNeedRefreshMail:Z

.field protected mbNeedReloadAccountInfo:Z

.field protected mbNeedRequeryUnreadMails:Z

.field protected mbNeedSecondRoundQuery:Z

.field protected mbNeedSwitchAccount:Z

.field protected mbNeedUpdateContactStatus:Z

.field protected mbNeedUpdateDataToUI:Z

.field protected mbReQueryAll:Z

.field protected mbReQueryAllCompleted:Z

.field protected mbRefetchAllMails:Z

.field protected mbSecondRunQuery:Z

.field protected mbSecondRunQueryCompleted:Z

.field protected mbSense30:Z

.field protected mbSense35:Z

.field protected mbTimeChanged:Z

.field protected mbWidgetDestroy:Z

.field protected mbmFacebookIcon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 219
    sput-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    .line 220
    sput-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 404
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 55
    const-string v0, "HTCWidget_MailWidgetBase"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    .line 85
    const-string v0, "com.htc.android.mail"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->APP_ID:Ljava/lang/String;

    .line 86
    const-string v0, "widget_clickcount"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->CATEGORY_WIDGET:Ljava/lang/String;

    .line 87
    const-string v0, "ANALYTIC_Mail"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->TAG_ANALYTIC:Ljava/lang/String;

    .line 98
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMaxLines:I

    .line 110
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->MAILLIST_UPDATE_ITEMS:I

    .line 116
    iput v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mCurrentPosition:I

    .line 125
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    .line 132
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbSense30:Z

    .line 133
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbSense35:Z

    .line 136
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    .line 139
    iput v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mResolution:I

    .line 142
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    .line 143
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mSceneSetting:Ljava/lang/String;

    .line 146
    iput v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetId:I

    .line 149
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshAccount:Z

    .line 150
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedReloadAccountInfo:Z

    .line 151
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedSwitchAccount:Z

    .line 152
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbAccountAssigned:Z

    .line 155
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshMail:Z

    .line 156
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbRefetchAllMails:Z

    .line 157
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbHasNewMailComingNotify:Z

    .line 160
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedMailChange:Z

    .line 161
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedUpdateContactStatus:Z

    .line 162
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshDateTime:Z

    .line 163
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRequeryUnreadMails:Z

    .line 164
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshFlag:Z

    .line 165
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedUpdateDataToUI:Z

    .line 168
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbHasDeletedMail:Z

    .line 169
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbHaveAccountName:Z

    .line 170
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbWidgetDestroy:Z

    .line 171
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbHasUnreadMail:Z

    .line 174
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbFirstRunQueryCompleted:Z

    .line 175
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbSecondRunQueryCompleted:Z

    .line 176
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbReQueryAllCompleted:Z

    .line 177
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedSecondRoundQuery:Z

    .line 178
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedExtractMailCursor:Z

    .line 181
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    .line 187
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbFirstRunQuery:Z

    .line 188
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbSecondRunQuery:Z

    .line 189
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbReQueryAll:Z

    .line 190
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbAddonly:Z

    .line 191
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbExtractMailBody:Z

    .line 192
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbExtractMailBodyTerminated:Z

    .line 195
    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mProcessIndex:I

    .line 196
    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mCursorCount:I

    .line 197
    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailUpdateIndex:I

    .line 198
    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mProcessBodyIndex:I

    .line 199
    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mProcessDateIndex:I

    .line 200
    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mProcessContactIndex:I

    .line 203
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbTimeChanged:Z

    .line 206
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLocalKorea:Z

    .line 209
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbFromIntent:Z

    .line 210
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInRefresh:Z

    .line 211
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInDeleteMail:Z

    .line 236
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbIsESAStop:Z

    .line 237
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    .line 240
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mCalendar:Ljava/util/Calendar;

    .line 243
    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mFirstVisibleItemPosition:I

    .line 244
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mFirstVisibleItemIndex:Landroid/graphics/PointF;

    .line 248
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z

    .line 256
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbEnableAutoSync:Z

    .line 257
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedGetAutoSyncStatus:Z

    .line 259
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 263
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailInfo:Ljava/util/ArrayList;

    .line 264
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    .line 267
    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mTotalCounts:I

    .line 286
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mTimer:Ljava/util/Timer;

    .line 287
    const v0, 0x493e0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->TIME_OUT:I

    .line 291
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    .line 294
    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mIntExtractDataPosition:I

    .line 297
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbIsICS:Z

    .line 347
    new-instance v0, Lcom/htc/htcmailwidgets/MailWidgetBase$1;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$1;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mEmptyPageListener:Lcom/htc/fusion/fx/MessageListener;

    .line 361
    new-instance v0, Lcom/htc/htcmailwidgets/MailWidgetBase$2;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$2;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 370
    new-instance v0, Lcom/htc/htcmailwidgets/MailWidgetBase$3;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$3;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mComposeBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 380
    new-instance v0, Lcom/htc/htcmailwidgets/MailWidgetBase$4;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$4;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mListBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 392
    new-instance v0, Lcom/htc/htcmailwidgets/MailWidgetBase$5;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$5;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 573
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 574
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->fxControlObjPort:[Lcom/htc/fusion/fx/FxObject;

    .line 575
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->fxControlObjLand:[Lcom/htc/fusion/fx/FxObject;

    .line 405
    return-void
.end method

.method static synthetic access$000(Lcom/htc/htcmailwidgets/MailWidgetBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->addWidgetList()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/htcmailwidgets/MailWidgetBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->surpressHostSlide(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/htcmailwidgets/MailWidgetBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->surpressHostSlide(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/htcmailwidgets/MailWidgetBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->addWidgetCompose()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/htcmailwidgets/MailWidgetBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addWidgetCompose()V
    .locals 4

    .prologue
    .line 921
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    .line 922
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    const-string v2, "com.htc.android.mail"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "widget_clickcount"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "compose,click"

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 925
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 926
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 927
    const-string v0, "Compose mails through widget"

    .line 928
    .local v0, message:Ljava/lang/String;
    const-string v1, "ANALYTIC_Mail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Click]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void
.end method

.method private addWidgetList()V
    .locals 4

    .prologue
    .line 932
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    .line 933
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    const-string v2, "com.htc.android.mail"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "widget_clickcount"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "list,click"

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 936
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 937
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 938
    const-string v0, "List mails through widget"

    .line 939
    .local v0, message:Ljava/lang/String;
    const-string v1, "ANALYTIC_Mail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Click]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return-void
.end method


# virtual methods
.method public checkAccount()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method protected checkDelConfirm()Z
    .locals 12

    .prologue
    .line 944
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 946
    const-wide/16 v6, 0x0

    .line 947
    .local v6, ask:J
    const/4 v8, 0x0

    .line 949
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_askBeforeDelete"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 951
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v6, v0

    .line 954
    :cond_0
    if-eqz v8, :cond_1

    .line 955
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    const/4 v8, 0x0

    .line 968
    :cond_1
    :goto_0
    const-wide/16 v0, 0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_3

    .line 969
    const/4 v0, 0x1

    .line 999
    .end local v6           #ask:J
    :goto_1
    return v0

    .line 958
    .restart local v6       #ask:J
    :catch_0
    move-exception v9

    .line 959
    .local v9, e:Ljava/lang/Exception;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 960
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 962
    :cond_2
    const/4 v8, 0x0

    .line 963
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 972
    .end local v9           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 975
    .end local v6           #ask:J
    .end local v8           #c:Landroid/database/Cursor;
    :cond_4
    const-wide/16 v10, 0x0

    .line 976
    .local v10, total:J
    const/4 v8, 0x0

    .line 978
    .restart local v8       #c:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(_id) as _total"

    aput-object v4, v2, v3

    const-string v3, "_del = -1 AND _askBeforeDelete = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 980
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 981
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v10, v0

    .line 983
    :cond_5
    if-eqz v8, :cond_6

    .line 984
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 985
    const/4 v8, 0x0

    .line 996
    :cond_6
    :goto_2
    const-wide/16 v0, 0x1

    cmp-long v0, v10, v0

    if-ltz v0, :cond_8

    .line 997
    const/4 v0, 0x1

    goto :goto_1

    .line 987
    :catch_1
    move-exception v9

    .line 988
    .restart local v9       #e:Ljava/lang/Exception;
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 989
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 991
    :cond_7
    const/4 v8, 0x0

    .line 992
    const-wide/16 v10, 0x0

    goto :goto_2

    .line 999
    .end local v9           #e:Ljava/lang/Exception;
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getAccountName(J)Ljava/lang/String;
    .locals 4
    .parameter "accountid"

    .prologue
    .line 1618
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-nez v2, :cond_0

    .line 1619
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 1621
    :cond_0
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v1, v2

    .line 1624
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1625
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 1626
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 1627
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    const v3, 0x7f080013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1634
    :goto_1
    return-object v2

    .line 1629
    :cond_1
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    goto :goto_1

    .line 1624
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1634
    :cond_3
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected getAccountProperties()V
    .locals 11

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->loadInstanceData()Ljava/util/Properties;

    move-result-object v3

    .line 1569
    .local v3, props:Ljava/util/Properties;
    if-eqz v3, :cond_3

    .line 1570
    const-string v7, "ACCOUNT_NAME"

    invoke-virtual {v3, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    .line 1571
    const-string v7, "ACCOUNT_DEFAULTFOLDER"

    invoke-virtual {v3, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1572
    .local v4, sDefaultFolder:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 1574
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountDefaultFolderId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    :cond_0
    :goto_0
    const-string v7, "ACCOUNT_PROTOCOL"

    invoke-virtual {v3, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1580
    .local v6, sProtocol:Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1582
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountProtocol:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1587
    :cond_1
    :goto_1
    const-string v7, "ACCOUNT_ID"

    invoke-virtual {v3, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1588
    .local v5, sId:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1591
    :try_start_2
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v0

    .line 1595
    .local v0, accountId:J
    :goto_2
    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    .line 1598
    .end local v0           #accountId:J
    :cond_2
    const-wide v7, 0x7fffffffffffffffL

    iget-wide v9, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 1599
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    const v8, 0x7f080013

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    .line 1604
    .end local v4           #sDefaultFolder:Ljava/lang/String;
    .end local v5           #sId:Ljava/lang/String;
    .end local v6           #sProtocol:Ljava/lang/String;
    :cond_3
    return-void

    .line 1575
    .restart local v4       #sDefaultFolder:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1576
    .local v2, ex:Ljava/lang/NumberFormatException;
    const/4 v7, 0x1

    iput v7, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountDefaultFolderId:I

    goto :goto_0

    .line 1583
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .restart local v6       #sProtocol:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1584
    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountProtocol:I

    goto :goto_1

    .line 1592
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .restart local v5       #sId:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 1593
    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    const-wide/16 v0, -0x1

    .restart local v0       #accountId:J
    goto :goto_2
.end method

.method protected getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 1538
    iget-wide v0, p1, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    .line 1540
    const-wide v0, 0x7fffffffffffffffL

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    .line 1544
    :goto_0
    iget v0, p1, Lcom/htc/htcmailwidgets/MailUtils$Account;->protocol:I

    iput v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountProtocol:I

    .line 1545
    iget v0, p1, Lcom/htc/htcmailwidgets/MailUtils$Account;->defaultfolderid:I

    iput v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountDefaultFolderId:I

    .line 1546
    return-void

    .line 1543
    :cond_0
    iget-object v0, p1, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getAccountProtocol(J)I
    .locals 7
    .parameter "accountid"

    .prologue
    .line 1265
    const/4 v4, -0x1

    .line 1267
    .local v4, protocol:I
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-eqz v5, :cond_0

    .line 1268
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .local v1, arr$:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1269
    .local v0, acc:Lcom/htc/htcmailwidgets/MailUtils$Account;
    iget-wide v5, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    .line 1270
    iget v4, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->protocol:I

    .line 1275
    .end local v0           #acc:Lcom/htc/htcmailwidgets/MailUtils$Account;
    .end local v1           #arr$:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return v4

    .line 1268
    .restart local v0       #acc:Lcom/htc/htcmailwidgets/MailUtils$Account;
    .restart local v1       #arr$:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected getColumnIndex(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 1349
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return v1

    .line 1352
    :cond_1
    :try_start_0
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_id:I

    .line 1353
    const-string v2, "_subject"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_subject:I

    .line 1354
    const-string v2, "_internaldate"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_internaldate:I

    .line 1355
    const-string v2, "_from"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_from:I

    .line 1356
    const-string v2, "_fromEmail"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_fromEmail:I

    .line 1357
    const-string v2, "_flags"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_flags:I

    .line 1358
    const-string v2, "_read"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_read:I

    .line 1359
    const-string v2, "_account"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_account:I

    .line 1360
    const-string v2, "_incAttachment"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_incAttachment:I

    .line 1361
    const-string v2, "_importance"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_importance:I

    .line 1362
    const-string v2, "_mailAct"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_mailAct:I

    .line 1363
    const-string v2, "_messageClassInt"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_messageClassInt:I

    .line 1364
    const-string v2, "_subjtype"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_subjtype:I

    .line 1366
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->isWithPreview()Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    move-result-object v2

    sget-object v3, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;->EN_WITH_PREVIEW:Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    if-ne v2, v3, :cond_2

    .line 1367
    const-string v2, "_preview"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_mailPreview:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    .local v0, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Exception: getColumnIndex..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getDateString(J)Ljava/lang/CharSequence;
    .locals 23
    .parameter "date"

    .prologue
    .line 847
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 850
    .local v17, today:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mCalendar:Ljava/util/Calendar;

    if-nez v4, :cond_0

    .line 851
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mCalendar:Ljava/util/Calendar;

    .line 853
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mCalendar:Ljava/util/Calendar;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 854
    move-wide/from16 v15, p1

    .line 855
    .local v15, millis:J
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 856
    .local v2, nowTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 857
    .local v10, currMillis:J
    invoke-virtual {v2, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 858
    iget v0, v2, Landroid/text/format/Time;->weekDay:I

    move/from16 v20, v0

    .line 859
    .local v20, weekday:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    iget v7, v2, Landroid/text/format/Time;->month:I

    iget v8, v2, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 860
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    .line 861
    .local v13, lToday:J
    const-wide/32 v4, 0x5265c00

    sub-long v21, v13, v4

    .line 862
    .local v21, yesterday:J
    const-wide/32 v4, 0x5265c00

    div-long v18, v10, v4

    .line 863
    .local v18, todayValues:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 864
    .local v3, yearStart:Ljava/util/Calendar;
    iget v4, v2, Landroid/text/format/Time;->year:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 866
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 887
    :goto_0
    return-object v4

    .line 868
    :cond_1
    cmp-long v4, v15, v13

    if-gez v4, :cond_2

    cmp-long v4, v15, v21

    if-ltz v4, :cond_2

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    const v5, 0x7f080011

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 870
    :cond_2
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_3

    move/from16 v0, v20

    int-to-long v4, v0

    sub-long v4, v18, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    cmp-long v4, v4, v15

    if-gez v4, :cond_3

    .line 871
    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 872
    iget v4, v2, Landroid/text/format/Time;->weekDay:I

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 873
    :cond_3
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v15, v4

    if-ltz v4, :cond_4

    .line 874
    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 877
    const-string v12, "MMM dd"

    .line 878
    .local v12, currentFormat:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v12, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 884
    .end local v12           #currentFormat:Ljava/lang/CharSequence;
    :cond_4
    const-string v12, "MM/dd/yy"

    .line 887
    .restart local v12       #currentFormat:Ljava/lang/CharSequence;
    move-wide/from16 v0, p1

    invoke-static {v12, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0
.end method

.method protected getFxObjects(Lcom/htc/fusion/fx/FxScene;Lcom/htc/htcmailwidgets/Components$ORIENTATION;)V
    .locals 3
    .parameter "scene"
    .parameter "orientation"

    .prologue
    .line 578
    sget-object v0, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mResolution:I

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/Components;->getWidgetSceneObjectMap(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->fxControlObjPort:[Lcom/htc/fusion/fx/FxObject;

    .line 582
    :cond_0
    sget-object v0, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    if-ne p2, v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mResolution:I

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/Components;->getWidgetSceneObjectMap(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->fxControlObjLand:[Lcom/htc/fusion/fx/FxObject;

    .line 585
    :cond_1
    return-void
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 442
    iget v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 447
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method public getSettingIntent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 542
    new-instance v0, Ljava/lang/String;

    const-string v1, "#Intent;action=ChangeAccountOption;component=com.htc.htcmailwidgets/.MailAccountOption;end"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    return-object v0
.end method

.method protected getWhere()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1280
    const/4 v1, 0x0

    .line 1281
    .local v1, length:I
    const-wide/16 v2, -0x1

    .line 1283
    .local v2, mailboxId:J
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-nez v5, :cond_0

    .line 1284
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 1286
    :cond_0
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v1, v5

    .line 1288
    const-string v4, "_mailboxId in ("

    .line 1289
    .local v4, where:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1290
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v6, v6, v0

    iget-wide v6, v6, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/htc/htcmailwidgets/MailUtils$Account;->defaultfolderid:I

    invoke-static {v5, v6, v7, v8}, Lcom/htc/htcmailwidgets/MailUtils;->getDefaultMailBoxId(Landroid/content/Context;JI)J

    move-result-wide v2

    .line 1291
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_2

    .line 1289
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1293
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1294
    add-int/lit8 v5, v1, -0x1

    if-eq v0, v5, :cond_1

    .line 1295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1298
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AND _del = -1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1300
    return-object v4
.end method

.method protected getWhere(JI)Ljava/lang/String;
    .locals 7
    .parameter "accountId"
    .parameter "defaultfolderId"

    .prologue
    const/16 v6, 0x138e

    .line 1312
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountDefaultFolderId:I

    invoke-static {v3, p1, p2, v4}, Lcom/htc/htcmailwidgets/MailUtils;->getDefaultMailBoxId(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 1313
    .local v0, mailboxId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 1314
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: getWhere: accountId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mailboxId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1318
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const-wide/16 v4, 0x1f4

    invoke-interface {v3, v6, v4, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 1320
    const/4 v2, 0x0

    .line 1325
    :goto_0
    return-object v2

    .line 1323
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND _del=-1 AND _mailboxId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1325
    .local v2, where:Ljava/lang/String;
    goto :goto_0
.end method

.method public getWidgetBase()Lcom/htc/android/rosie/widget/Widget$Base;
    .locals 0

    .prologue
    .line 558
    return-object p0
.end method

.method public getWidgetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetID()I
    .locals 4

    .prologue
    .line 1647
    const/4 v1, -0x1

    .line 1648
    .local v1, ret:I
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1649
    .local v0, randomGenerator:Ljava/util/Random;
    :goto_0
    if-gez v1, :cond_0

    .line 1650
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->getAccountMapUsedCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    add-int v1, v2, v3

    goto :goto_0

    .line 1653
    :cond_0
    return v1
.end method

.method protected getWidgetInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1607
    const/4 v1, 0x0

    .line 1608
    .local v1, scene:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->loadInstanceData()Ljava/util/Properties;

    move-result-object v0

    .line 1609
    .local v0, props:Ljava/util/Properties;
    if-eqz v0, :cond_0

    .line 1610
    const-string v2, "widget_scene"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1613
    :cond_0
    return-object v1
.end method

.method public getWidgetScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "callback"

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 549
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    goto :goto_0
.end method

.method public getWorkerHandler()Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 519
    return-void
.end method

.method public handleUIMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 517
    return-void
.end method

.method protected initReceiver()V
    .locals 3

    .prologue
    .line 635
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 636
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    const-string v1, "com.htc.android.mail.intent.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    const-string v1, "android.intent.action.EAS_ACCOUNT_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    const-string v1, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    const-string v1, "com.htc.eas.intent.all_sync_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v1, "com.htc.eas.intent.all_sync_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string v1, "com.htc.htcmailwidgets.donothing_completed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string v1, "com.htc.htcmailwidgets.firstrun_completed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string v1, "com.htc.htcmailwidgets.secondrun_completed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    const-string v1, "com.htc.htcmailwidgets.requeryrun_completed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 647
    const-string v1, "com.htc.htcmailwidgets.mailstatus_completed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    const-string v1, "com.htc.htcmailwidgets.contactstatus_completed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    const-string v1, "com.htc.htcmailwidgets.timechanged_completed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    const-string v1, "android.mail.notification.NotifyNewMail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 653
    new-instance v1, Lcom/htc/htcmailwidgets/MailWidgetBase$6;

    invoke-direct {v1, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$6;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataReceiver:Landroid/content/BroadcastReceiver;

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 839
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 840
    :cond_1
    return-void
.end method

.method public initTilt()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method protected initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 611
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    .line 612
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedExtractMailCursor:Z

    .line 613
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshAccount:Z

    .line 614
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshMail:Z

    .line 615
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshFlag:Z

    .line 616
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbHaveAccountName:Z

    .line 617
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInRefresh:Z

    .line 618
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInDeleteMail:Z

    .line 619
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedSecondRoundQuery:Z

    .line 620
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbWidgetDestroy:Z

    .line 621
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbTimeChanged:Z

    .line 622
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshDateTime:Z

    .line 623
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedUpdateContactStatus:Z

    .line 624
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRequeryUnreadMails:Z

    .line 625
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbFirstRunQueryCompleted:Z

    .line 626
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbSecondRunQueryCompleted:Z

    .line 627
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbReQueryAllCompleted:Z

    .line 628
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbFromIntent:Z

    .line 629
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbRefetchAllMails:Z

    .line 630
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbHasNewMailComingNotify:Z

    .line 631
    return-void
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public isICS(Ljava/lang/String;)Z
    .locals 6
    .parameter "release_version"

    .prologue
    const/4 v1, 0x0

    .line 534
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 535
    .local v0, pos:I
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 537
    const/4 v1, 0x1

    .line 538
    :cond_0
    return v1
.end method

.method protected isLastItemBoth(Landroid/database/Cursor;)Z
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 1242
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 1261
    :goto_0
    return v2

    .line 1245
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getColumnIndex(Landroid/database/Cursor;)Z

    .line 1247
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 1249
    iget v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_id:I

    if-gez v2, :cond_2

    move v2, v3

    .line 1250
    goto :goto_0

    .line 1252
    :cond_2
    iget v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->_col_id:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    .line 1254
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v3

    .line 1255
    goto :goto_0

    .line 1257
    :cond_4
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_5

    .line 1258
    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    move v2, v3

    .line 1261
    goto :goto_0
.end method

.method public isParentVisible()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWithPreview()Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;
    .locals 3

    .prologue
    .line 1334
    sget-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;->EN_NO_PREVIEW:Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    .line 1336
    .local v0, w:Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v2, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne v1, v2, :cond_2

    .line 1337
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v1, v1, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v1, v1, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1339
    :cond_0
    sget-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;->EN_WITH_PREVIEW:Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    .line 1345
    :cond_1
    :goto_0
    return-object v0

    .line 1340
    :cond_2
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v2, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_HONEYCOMB:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne v1, v2, :cond_1

    .line 1341
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v1, v1, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 1342
    sget-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;->EN_WITH_PREVIEW:Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    goto :goto_0
.end method

.method protected launchAccountList()V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const-wide/16 v4, -0x2

    const/4 v6, 0x1

    .line 1149
    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v2, v2

    if-nez v2, :cond_3

    .line 1150
    :cond_1
    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1151
    const-wide/16 v2, -0x3

    iput-wide v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    .line 1152
    :cond_2
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshAccount:Z

    .line 1153
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->launchProviderListScreen()V

    .line 1215
    :goto_0
    return-void

    .line 1155
    :cond_3
    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v2, v2

    if-ne v2, v6, :cond_4

    .line 1156
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->checkAccount()V

    goto :goto_0

    .line 1157
    :cond_4
    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v2, v2

    if-le v2, v6, :cond_5

    .line 1158
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->launchAccountOption()V

    goto :goto_0

    .line 1159
    :cond_5
    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    .line 1162
    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbIsICS:Z

    if-eqz v2, :cond_6

    .line 1163
    sget-object v0, Lcom/htc/htcmailwidgets/LocalData;->mButtonCancel:Ljava/lang/String;

    .line 1164
    .local v0, stringLeft:Ljava/lang/String;
    sget-object v1, Lcom/htc/htcmailwidgets/LocalData;->mButtonOk:Ljava/lang/String;

    .line 1170
    .local v1, stringRight:Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/htc/htcmailwidgets/LocalData;->mAccountNotExistTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/htc/htcmailwidgets/LocalData;->mAccountNotExistText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/htcmailwidgets/MailWidgetBase$9;

    invoke-direct {v3, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$9;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbIsICS:Z

    if-eqz v2, :cond_7

    move-object v2, v0

    :goto_2
    new-instance v4, Lcom/htc/htcmailwidgets/MailWidgetBase$8;

    invoke-direct {v4, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$8;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    invoke-virtual {v3, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbIsICS:Z

    if-eqz v3, :cond_8

    .end local v1           #stringRight:Ljava/lang/String;
    :goto_3
    new-instance v3, Lcom/htc/htcmailwidgets/MailWidgetBase$7;

    invoke-direct {v3, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$7;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    invoke-virtual {v2, v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 1166
    .end local v0           #stringLeft:Ljava/lang/String;
    :cond_6
    sget-object v1, Lcom/htc/htcmailwidgets/LocalData;->mButtonCancel:Ljava/lang/String;

    .line 1167
    .restart local v1       #stringRight:Ljava/lang/String;
    sget-object v0, Lcom/htc/htcmailwidgets/LocalData;->mButtonOk:Ljava/lang/String;

    .restart local v0       #stringLeft:Ljava/lang/String;
    goto :goto_1

    :cond_7
    move-object v2, v1

    .line 1170
    goto :goto_2

    :cond_8
    move-object v1, v0

    goto :goto_3

    .line 1210
    .end local v0           #stringLeft:Ljava/lang/String;
    .end local v1           #stringRight:Ljava/lang/String;
    :cond_9
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: launchAccountList: mAccountId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshAccount:Z

    .line 1213
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->launchProviderListScreen()V

    goto/16 :goto_0
.end method

.method protected launchAccountOption()V
    .locals 2

    .prologue
    .line 1232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AccountOption"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1233
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.htcmailwidgets/open"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    :try_start_0
    iget v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetId:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :goto_0
    return-void

    .line 1236
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected launchDetail(ILjava/lang/String;Z)V
    .locals 11
    .parameter "messageId"
    .parameter "account"
    .parameter "isExchange"

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1004
    iget-boolean v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z

    if-eqz v3, :cond_0

    .line 1005
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LaunchDetail block by App already be called, mbLaunchMailApp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 1010
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: launchDetail: mAccountId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1016
    :cond_1
    if-gez p1, :cond_2

    .line 1017
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: launchDetail: messageId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1021
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1022
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1023
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "accountID"

    iget-wide v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1024
    const-string v3, "position"

    iget v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mCurrentPosition:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1025
    const-string v3, "sortRule"

    const-string v4, "_internaldate collate nocase desc, _internaldate desc"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v3, v3, v9

    if-nez v3, :cond_4

    .line 1029
    const-string v3, "MailReadFromAllAccount"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1034
    :goto_1
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 1036
    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v3, v3, v9

    if-nez v3, :cond_5

    .line 1037
    const-string v3, "where"

    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    :goto_2
    const/16 v3, 0x2710

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/htc/htcmailwidgets/MailWidgetBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1053
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v3, :cond_3

    .line 1054
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v4, 0x1388

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1056
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1057
    :catch_0
    move-exception v0

    .line 1059
    .local v0, e:Ljava/lang/Exception;
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z

    goto/16 :goto_0

    .line 1031
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v3, "MailReadFromAllAccount"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1039
    :cond_5
    const-string v3, "where"

    iget-wide v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    iget v6, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountDefaultFolderId:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getWhere(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1042
    :cond_6
    const-string v3, "where"

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method protected launchMailApp()V
    .locals 7

    .prologue
    .line 1079
    iget-boolean v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z

    if-eqz v3, :cond_0

    .line 1080
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LaunchMailList block by App already be called, mbLaunchMailApp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :goto_0
    return-void

    .line 1084
    :cond_0
    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 1085
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: launchMailList: mAccountId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->launchAccountList()V

    goto :goto_0

    .line 1092
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1093
    .local v2, url:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1095
    .local v1, intent:Landroid/content/Intent;
    iget v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mResolution:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mResolution:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    .line 1096
    :cond_2
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.MultipleActivitiesMain"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V

    .line 1103
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v3, :cond_4

    .line 1104
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v4, 0x1388

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1106
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1107
    :catch_0
    move-exception v0

    .line 1109
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z

    goto :goto_0

    .line 1097
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_5
    iget v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mResolution:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mResolution:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mResolution:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    .line 1098
    :cond_6
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.MailListTab"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected launchMailCompose()V
    .locals 6

    .prologue
    .line 1114
    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z

    if-eqz v2, :cond_0

    .line 1115
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ComposeNewMail block by App already be called, mbLaunchMailApp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :goto_0
    return-void

    .line 1119
    :cond_0
    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1120
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: composeNewMail: mAccountId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1123
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1124
    .local v0, compose_intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.ComposeActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    const-string v2, "cmd"

    const-string v3, "compose"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1129
    const-string v2, "accountID"

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1132
    :cond_2
    const-string v2, "SetOrient"

    const-string v3, "InMail"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V

    .line 1138
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v2, :cond_3

    .line 1139
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v3, 0x1388

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1141
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1142
    :catch_0
    move-exception v1

    .line 1144
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLaunchMailApp:Z

    goto :goto_0
.end method

.method protected launchProviderListScreen()V
    .locals 3

    .prologue
    .line 1218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1219
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.ProviderListScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    :try_start_0
    iget v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetId:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :goto_0
    return-void

    .line 1226
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfiguration"

    .prologue
    .line 521
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 417
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 437
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 438
    return-void
.end method

.method public onEdit()V
    .locals 5

    .prologue
    .line 458
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getSettingIntent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 459
    .local v1, intent:Landroid/content/Intent;
    iget v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetId:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 460
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWidgetId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v3, 0x1388

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 473
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 480
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 481
    return-void

    .line 475
    :pswitch_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onHostMessage: HOST_ORIENTATION_CHANGE_COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->removeAllMsg()V

    .line 477
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138a

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 428
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onGetExtractDataCount()I

    move-result v0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mIntExtractDataPosition:I

    .line 430
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mIntExtractDataPosition:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->setExtractionDataPosition(JLjava/lang/String;I)V

    .line 432
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->surpressHostSlide(Z)V

    .line 433
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 434
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedState"

    .prologue
    const-wide/16 v6, 0x0

    .line 485
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onPostCreate(Landroid/os/Bundle;)V

    .line 486
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getAccountProperties()V

    .line 487
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 488
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_4

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v3, v3, v6

    if-gez v3, :cond_4

    .line 489
    const-string v3, "ACCOUNT_ID"

    const-wide/16 v4, -0x9

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 490
    .local v0, acc:J
    cmp-long v3, v0, v6

    if-gtz v3, :cond_0

    .line 512
    .end local v0           #acc:J
    :goto_0
    return-void

    .line 494
    .restart local v0       #acc:J
    :cond_0
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v3, v0

    if-nez v3, :cond_3

    .line 495
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    .line 498
    :goto_1
    const-string v3, "ACCOUNT_PROTOCOL"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountProtocol:I

    .line 499
    const-string v3, "ACCOUNT_DEFAULTFOLDER"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountDefaultFolderId:I

    .line 500
    cmp-long v3, v0, v6

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 501
    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->setAccountProperties()V

    .line 504
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-nez v3, :cond_2

    .line 505
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getWidgetContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mResolution:I

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v6, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mOrientation:I

    invoke-static {v3, v4, v5, v6}, Lcom/htc/htcmailwidgets/MailDataManager;->getInstance(Landroid/content/Context;ILcom/htc/htcmailwidgets/Components$OS_VERSION;I)Lcom/htc/htcmailwidgets/MailDataManager;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->registerAccount()V

    goto :goto_0

    .line 497
    :cond_3
    const-string v3, "ACCOUNT_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    goto :goto_1

    .line 510
    .end local v0           #acc:J
    :cond_4
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getAccountProperties()V

    goto :goto_0
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 515
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailDataManager;->getExtractionDataPosition(JLjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mIntExtractDataPosition:I

    .line 422
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mIntExtractDataPosition:I

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailDataManager;->onSetExtractDataCount(I)V

    .line 424
    :cond_0
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 425
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 0
    .parameter "tilt"

    .prologue
    .line 525
    return-void
.end method

.method protected preloadScene()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 589
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mResolution:I

    sget-object v2, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v3, v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/Components;->getWidgetScenePath(Lcom/htc/htcmailwidgets/Components$OS_VERSION;ILcom/htc/htcmailwidgets/Components$ORIENTATION;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    .line 590
    sget-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailWidgetBase;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getFxObjects(Lcom/htc/fusion/fx/FxScene;Lcom/htc/htcmailwidgets/Components$ORIENTATION;)V

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mResolution:I

    sget-object v2, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v3, v3, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/Components;->getWidgetScenePath(Lcom/htc/htcmailwidgets/Components$OS_VERSION;ILcom/htc/htcmailwidgets/Components$ORIENTATION;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    .line 600
    sget-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_2

    .line 602
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailWidgetBase;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_3

    .line 606
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getFxObjects(Lcom/htc/fusion/fx/FxScene;Lcom/htc/htcmailwidgets/Components$ORIENTATION;)V

    .line 608
    :cond_3
    return-void
.end method

.method protected queryMailBodyMaxLines()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 892
    const/4 v6, 0x0

    .line 893
    .local v6, ask:I
    const/4 v7, 0x0

    .line 895
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_previewLinesNumber"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 896
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 898
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxLines:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_0
    if-eqz v7, :cond_1

    .line 901
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    const/4 v7, 0x0

    .line 911
    :cond_1
    :goto_0
    if-gtz v6, :cond_2

    .line 912
    const/4 v6, 0x5

    .line 914
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_3

    .line 915
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1770

    invoke-virtual {v1, v2, v6, v9}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 917
    :cond_3
    return-void

    .line 904
    :catch_0
    move-exception v8

    .line 905
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 906
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 908
    :cond_4
    const/4 v7, 0x0

    .line 909
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected registerAccount()V
    .locals 5

    .prologue
    .line 1396
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbAccountAssigned:Z

    if-nez v0, :cond_1

    .line 1397
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager;->isAccountExist(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1398
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->createAccountMap(JLjava/lang/String;I)V

    .line 1404
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbAccountAssigned:Z

    .line 1406
    :cond_1
    return-void

    .line 1401
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->registExistAccountMap(JLjava/lang/String;I)V

    goto :goto_0
.end method

.method public releaseControl()V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method public removeAllMsg()V
    .locals 2

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 1642
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1644
    :cond_0
    return-void
.end method

.method protected renewCursor(Ljava/lang/String;Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;I)V
    .locals 8
    .parameter "limit"
    .parameter "projection"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 1379
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1393
    :goto_0
    return-void

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/htcmailwidgets/MailUtils;->getTotalMailsCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mTotalCounts:I

    .line 1384
    const-string v7, "_internaldate desc"

    .line 1386
    .local v7, order:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1389
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mQueryHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    if-nez v0, :cond_2

    .line 1390
    new-instance v0, Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mQueryHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    .line 1392
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mQueryHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    sget-object v3, Lcom/htc/htcmailwidgets/MailUtils;->sMessagesURI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/htcmailwidgets/MailUtils;->sMAIL_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    move v1, p3

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setAccountProperties()V
    .locals 4

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1533
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    .line 1534
    :cond_0
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    iget v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountProtocol:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountDefaultFolderId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailWidgetBase;->setAccountProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    return-void
.end method

.method protected setAccountProperties(J)V
    .locals 4
    .parameter "sId"

    .prologue
    .line 1528
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "0"

    const-string v3, "1"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailWidgetBase;->setAccountProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    return-void
.end method

.method protected setAccountProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "sId"
    .parameter "sName"
    .parameter "sProtocol"
    .parameter "sDefaultFolderId"

    .prologue
    .line 1551
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1552
    .local v0, props:Ljava/util/Properties;
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1553
    const-string v1, "ACCOUNT_NAME"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1554
    const-string v1, "ACCOUNT_PROTOCOL"

    invoke-virtual {v0, v1, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1555
    const-string v1, "ACCOUNT_DEFAULTFOLDER"

    invoke-virtual {v0, v1, p4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1557
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mSceneSetting:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1558
    const-string v1, "widget_scene"

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mSceneSetting:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1561
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->storeInstanceData(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    :goto_0
    return-void

    .line 1562
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setAdapter(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    return-void
.end method

.method protected startMissedMessageQuery()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x1771

    const/4 v9, 0x0

    .line 1411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1413
    .local v2, start_time:J
    iget-wide v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    .line 1415
    iput-boolean v9, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInRefresh:Z

    .line 1416
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v5, :cond_1

    .line 1417
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v5, v10}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1418
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v5, v10}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1419
    :cond_0
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v5, v10}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1460
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1462
    :cond_2
    :goto_1
    return-void

    .line 1422
    :cond_3
    iget-boolean v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbWidgetDestroy:Z

    if-nez v5, :cond_2

    .line 1425
    iget-boolean v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbIsESAStop:Z

    if-nez v5, :cond_4

    .line 1426
    invoke-virtual {p0, v11}, Lcom/htc/htcmailwidgets/MailWidgetBase;->stopEascSync(Z)V

    .line 1427
    :cond_4
    iput-boolean v11, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInRefresh:Z

    .line 1429
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 1431
    iget-wide v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 1432
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getWhere()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    .line 1438
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 1439
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error: showMails: where == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iput-boolean v9, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInRefresh:Z

    goto :goto_1

    .line 1434
    :cond_6
    iget-wide v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    iget v7, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountDefaultFolderId:I

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getWhere(JI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    goto :goto_2

    .line 1444
    :cond_7
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->isWithPreview()Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    move-result-object v4

    .line 1448
    .local v4, w:Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->registerAccount()V

    .line 1450
    iget-wide v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailIDList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    .line 1451
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_9

    .line 1452
    :cond_8
    const-string v5, "limit 10"

    const/16 v6, 0xa

    invoke-virtual {p0, v5, v4, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase;->renewCursor(Ljava/lang/String;Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;I)V

    .line 1457
    :goto_3
    iput-boolean v9, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInRefresh:Z

    goto :goto_0

    .line 1453
    :cond_9
    iget-boolean v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbFirstRunQueryCompleted:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbSecondRunQueryCompleted:Z

    if-nez v5, :cond_b

    .line 1454
    :cond_a
    const/16 v5, 0x14

    invoke-virtual {p0, v12, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase;->renewCursor(Ljava/lang/String;Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;I)V

    goto :goto_3

    .line 1456
    :cond_b
    const/16 v5, 0x1e

    invoke-virtual {p0, v12, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase;->renewCursor(Ljava/lang/String;Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;I)V

    goto :goto_3
.end method

.method protected startMissedMessageQuery2()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/16 v9, 0x1771

    const/4 v8, 0x0

    .line 1467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1469
    .local v2, start_time:J
    iget-wide v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 1471
    iput-boolean v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInRefresh:Z

    .line 1472
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v4, :cond_1

    .line 1473
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v4, v9}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1474
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v4, v9}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1475
    :cond_0
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v4, v9}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1510
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1512
    :cond_2
    :goto_1
    return-void

    .line 1478
    :cond_3
    iget-boolean v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbWidgetDestroy:Z

    if-nez v4, :cond_2

    .line 1481
    iget-boolean v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbIsESAStop:Z

    if-nez v4, :cond_4

    .line 1482
    invoke-virtual {p0, v10}, Lcom/htc/htcmailwidgets/MailWidgetBase;->stopEascSync(Z)V

    .line 1483
    :cond_4
    iput-boolean v10, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInRefresh:Z

    .line 1485
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 1487
    iget-wide v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 1488
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getWhere()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    .line 1494
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 1495
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Error: showMails: where == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iput-boolean v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInRefresh:Z

    goto :goto_1

    .line 1490
    :cond_6
    iget-wide v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    iget v6, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountDefaultFolderId:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase;->getWhere(JI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWhere:Ljava/lang/String;

    goto :goto_2

    .line 1500
    :cond_7
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->registerAccount()V

    .line 1503
    iget-boolean v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbFirstRunQueryCompleted:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbSecondRunQueryCompleted:Z

    if-nez v4, :cond_9

    .line 1504
    :cond_8
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->isWithPreview()Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {p0, v11, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase;->renewCursor(Ljava/lang/String;Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;I)V

    .line 1507
    :goto_3
    iput-boolean v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInRefresh:Z

    goto :goto_0

    .line 1506
    :cond_9
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->isWithPreview()Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-virtual {p0, v11, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase;->renewCursor(Ljava/lang/String;Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;I)V

    goto :goto_3
.end method

.method protected stopEascSync(Z)V
    .locals 3
    .parameter "stop"

    .prologue
    const/16 v2, 0x1390

    const/16 v1, 0x138f

    .line 1516
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1517
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1519
    iput-boolean p1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbIsESAStop:Z

    .line 1521
    if-eqz p1, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1525
    :goto_0
    return-void

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0
.end method

.method protected syncMail()V
    .locals 3

    .prologue
    .line 1305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.eas.syncMail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1306
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1307
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1308
    return-void
.end method
