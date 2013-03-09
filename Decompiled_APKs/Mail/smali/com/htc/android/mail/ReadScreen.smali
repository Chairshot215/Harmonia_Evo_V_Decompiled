.class public Lcom/htc/android/mail/ReadScreen;
.super Landroid/app/Activity;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ReadScreen$WebViewMenuListener;,
        Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;,
        Lcom/htc/android/mail/ReadScreen$MessageIds;,
        Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;,
        Lcom/htc/android/mail/ReadScreen$UIHandler;,
        Lcom/htc/android/mail/ReadScreen$BackGroundHandler;,
        Lcom/htc/android/mail/ReadScreen$MailHeader;,
        Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;,
        Lcom/htc/android/mail/ReadScreen$RequestHandler;,
        Lcom/htc/android/mail/ReadScreen$CursorType;,
        Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;,
        Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;,
        Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;,
        Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;,
        Lcom/htc/android/mail/ReadScreen$TagList;,
        Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;,
        Lcom/htc/android/mail/ReadScreen$TagListInfo;,
        Lcom/htc/android/mail/ReadScreen$RecipientListInfo;,
        Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;,
        Lcom/htc/android/mail/ReadScreen$FocusNode;,
        Lcom/htc/android/mail/ReadScreen$MeetingDetail;,
        Lcom/htc/android/mail/ReadScreen$PlayData;,
        Lcom/htc/android/mail/ReadScreen$ContactObj;
    }
.end annotation


# static fields
.field private static final ACTION_FORWARD:I = 0x5

.field private static final CONTENT_EMAIL:I = 0x1

.field private static final CONTENT_PHONE:I = 0x0

.field private static final CONTENT_URL:I = 0x2

.field private static DEBUG:Z = false

.field private static final DELETE_MAIL:I = 0x6

.field private static final DIAGLOG_AIRPLANE_NOTIFY:I = 0x3

.field private static final DIAGLOG_CHARSET_ENCODING:I = 0x7

.field private static final DIAGLOG_CHARSET_NOT_SUPPORT:I = 0x8

.field private static final DIAGLOG_DELETE_MAIL_DLG:I = 0x5

.field private static final DIAGLOG_DOWNLOAD_KEY:I = 0x0

.field private static final DIAGLOG_NOT_EXIST:I = 0x1

.field private static final DIAGLOG_NO_NETWORK_NOTIFY:I = 0x4

.field private static final DIAGLOG_REMOVE_RECIPIENT:I = 0x2

.field private static final DIAGLOG_SPACE_NOT_ENOUGH:I = 0x6

.field private static final DIALOG_CANNOT_RESP_MEETING:I = 0x9

.field private static final DOWNLOAD_ALL_ATTACHMENT:I = 0x5

.field private static final EDIT_CONTACT_GROUP:I = 0x19

.field private static final ENCODING:I = 0xd

.field private static final FORWARD_MAIL:I = 0x2

.field private static final FROM_MAIL_LIST:I = 0x0

.field private static final FROM_NEXT_BUTTON:I = 0x2

.field private static final FROM_PREVIOUS_BUTTON:I = 0x1

.field private static final IPM_SCHEDULE_METTING:I = 0x6

.field private static final LARGER_FONT:I = 0x1

.field private static final LARGEST_FONT:I = 0x0

.field private static final LAUNCH_READSCREEN_FAIL:I = 0x2711

.field private static final LONG_PRESS_ACTION:I = 0x1

.field private static final MEDIUM_FONT:I = 0x2

.field private static final MENU_COMPOSE:I = 0x7

.field private static final MENU_COPY_TEXT:I = 0x10

.field private static final MENU_INBOX:I = 0xf

.field private static final MENU_MARK_UNREAD:I = 0x8

.field private static final MENU_METTING_DECLINE:I = 0x9

.field private static final MENU_METTING_FORWARD:I = 0xc

.field private static final MENU_METTING_PROPOSE_NEWTIME:I = 0xb

.field private static final MENU_METTING_TENTATIVE:I = 0xa

.field private static final MENU_MOVE_TO:I = 0x12

.field private static final MENU_NEXT:I = 0x1b

.field private static final MENU_PREVIOUS:I = 0x1a

.field private static final MENU_PRINT:I = 0x13

.field private static final MENU_SAVE_AS_TASK:I = 0x1c

.field private static final MENU_SEE_CONVERSATION:I = 0x11

.field private static final MENU_SHORTCUTKEY_FORWARD:I = 0x16

.field private static final MENU_SHORTCUTKEY_MARKFLAG:I = 0x19

.field private static final MENU_SHORTCUTKEY_MOVETOFOLDER:I = 0x17

.field private static final MENU_SHORTCUTKEY_REPLY:I = 0x14

.field private static final MENU_SHORTCUTKEY_REPLYALL:I = 0x15

.field private static final MENU_SHORTCUTKEY_TOGGLEREADUNREAD:I = 0x18

.field public static final METHODS_AUX_DATA_COLUMN:I = 0x6

.field public static final METHODS_DATA_COLUMN:I = 0x2

.field public static final METHODS_ID_COLUMN:I = 0x0

.field public static final METHODS_ISPRIMARY_COLUMN:I = 0x5

.field public static final METHODS_KIND_COLUMN:I = 0x1

.field public static final METHODS_LABEL_COLUMN:I = 0x4

.field public static final METHODS_STATUS_COLUMN:I = 0x7

.field public static final METHODS_TYPE_COLUMN:I = 0x3

.field public static final MODE_COPY_TEXT:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_QCOPY_TEXT:I = 0xa

.field private static final REPLY_ALL:I = 0x3

.field private static final REPLY_MAIL:I = 0x1

.field private static final REPLY_MEETING_MAIL:I = 0xe

.field private static final SHORT_TAP_ACTION:I = 0x8

.field private static final SHOW_TO_CC:I = 0x4

.field private static final SMALLER_FONT:I = 0x3

.field private static final SMALLEST_FONT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ReadScreen"

.field private static final TIME_FORMAT_ALL:I = 0x1

.field private static final TIME_FORMAT_EEYYMMDD:I = 0x2

.field private static final TIME_FORMAT_HHMM:I = 0x3

.field private static _showToCC:Z

.field private static isShowRecipientBlock:Z

.field private static mNowTokenId:I

.field private static mZoomControl:Lcom/htc/android/mail/ZoomControl;

.field private static sProjection:[Ljava/lang/String;


# instance fields
.field final MAIL_PROJECTION:[Ljava/lang/String;

.field private WithOutScroll:Ljava/lang/String;

.field _read:I

.field addContactAddress:Ljava/lang/String;

.field addContactName:Ljava/lang/String;

.field private attachmentCounts:I

.field private cancelAddContactEvent:Landroid/content/DialogInterface$OnClickListener;

.field private confirmAddContactEvent:Landroid/content/DialogInterface$OnClickListener;

.field private confirmDelMailEvent:Landroid/content/DialogInterface$OnClickListener;

.field curRecp:Lcom/htc/android/mail/ReceiverList;

.field private cur_w:Lcom/htc/android/mail/HtcWebView;

.field private deleteEvent:Landroid/view/View$OnClickListener;

.field private doAddcontactToContactList:Z

.field private downloadHtmlImageActionListener:Landroid/view/View$OnClickListener;

.field enableEncoding:Z

.field private expandAttachmentView:Z

.field private expandAttachmentViewListener:Landroid/view/View$OnClickListener;

.field private forwardEvent:Landroid/view/View$OnClickListener;

.field private getUnfinishedListener:Landroid/view/View$OnClickListener;

.field private getUnfinishedText:Ljava/lang/String;

.field info:Ljava/lang/String;

.field private isInlineAttachDownload:Z

.field loadingUnfinished:Z

.field private localIntent:Landroid/content/Intent;

.field private localMail:I

.field private long_press_groupId:Ljava/lang/String;

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mAccountId:J

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mActivityCallback:Lcom/htc/android/mail/util/ActivityCallback;

.field private mAdapter:Lcom/htc/android/mail/MoveToAdapter;

.field private mAddr:Ljava/lang/String;

.field mArriveMillis:J

.field private mAttachBottomDivider:Landroid/widget/LinearLayout;

.field mAttachListContainer:Landroid/widget/LinearLayout;

.field private mAttachSwitch:Lcom/htc/android/mail/widget/MailAttachmentSwitch;

.field private mBackGroundHandler:Landroid/os/Handler;

.field mBodyCharset:Ljava/lang/String;

.field mBodyEncode:Ljava/lang/String;

.field mBodyIndex:Ljava/lang/String;

.field mBodyPartID:J

.field mCcListViewLayout:Landroid/widget/LinearLayout;

.field mCcRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

.field private mCcRecipientList:Ljava/lang/String;

.field mCcRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

.field private mComboSubject:Ljava/lang/String;

.field private mCurrentSender:Lcom/htc/android/mail/ReadScreen$MailHeader;

.field private mCurrent_charset:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDLRemainRequest:Lcom/htc/android/mail/Request;

.field private mDefaultScrollSize:I

.field private mDialogListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mEmptyHtml:Z

.field mFlags:I

.field private mFrom:Ljava/lang/String;

.field private mFromConversationView:Z

.field private mFromListTab:Z

.field private mFromMimeViewer:Z

.field private mFromSearchSvrMailView:Z

.field private mFullSize:Z

.field mGroup:Ljava/lang/String;

.field private mIsAirPlaneMode:I

.field private mIsCancelMeetingView:Z

.field private mIsDestroyed:Z

.field private mIsFirstQuery:Z

.field private mIsMeetingView:Z

.field private mIsPreNextAction:Z

.field private mIsWebViewDestroied:Z

.field private mLoadAllDataDone:Z

.field private mLoadPrevNextTask:Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;

.field private mMailBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mMailCommon:Lcom/htc/android/mail/MailCommon;

.field private mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

.field private mMailbox:Lcom/htc/android/mail/Mailbox;

.field private mMeetingDetail:Lcom/htc/android/mail/ReadScreen$MeetingDetail;

.field private mMenu:Landroid/view/Menu;

.field mMessageID:J

.field private mMessageIdsUriStr:Ljava/lang/String;

.field mMultiTouchZoomType:I

.field private mNextMailListener:Landroid/view/View$OnClickListener;

.field private mNextMessageId:J

.field private mNoHistoryEnable:Z

.field private mOldFocusNode:Lcom/htc/android/mail/ReadScreen$FocusNode;

.field mOldMessageId:J

.field private mOnClickMeetingAccept:Landroid/view/View$OnClickListener;

.field private mOnClickMeetingDecline:Landroid/view/View$OnClickListener;

.field private mOnClickMeetingProposeTime:Landroid/view/View$OnClickListener;

.field private mOnClickMeetingTentative:Landroid/view/View$OnClickListener;

.field private mPartFactory:Landroid/view/LayoutInflater;

.field private mPlayables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ReadScreen$PlayData;",
            ">;"
        }
    .end annotation
.end field

.field private mPreMailListener:Landroid/view/View$OnClickListener;

.field private mPreMessageId:J

.field private mProfileRawContactID:J

.field private mReadFromAllAccount:Z

.field private mReadScreenScrollContainer:Landroid/widget/LinearLayout;

.field private mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

.field mRecipientBlockWidth:I

.field private mRequestController:Lcom/htc/android/mail/AbsRequestController;

.field private mRequestHandler:Lcom/htc/android/mail/ReadScreen$RequestHandler;

.field private mRes:Landroid/content/res/Resources;

.field private mRestoreScrollX:I

.field private mRestoreScrollY:I

.field private mSQLStatement:Ljava/lang/String;

.field mSenderLabel:Landroid/widget/TextView;

.field private mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

.field private mShowAttachThreadLock:Ljava/lang/Object;

.field private mShowDownloadHtmlImageButton:Z

.field private mShowGetUnfinishUI:Z

.field private mShowHtmlImage:Z

.field private mShowRecipientDialog:Z

.field private mSingleItem:Z

.field private mSortRule:Ljava/lang/String;

.field private mSubjType:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field mSuggestCharset:Ljava/lang/String;

.field private mTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;",
            ">;"
        }
    .end annotation
.end field

.field private mTagListMain:Landroid/widget/LinearLayout;

.field mTagRecipientInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

.field mTagRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

.field private mTextSize:I

.field mToListViewLayout:Landroid/widget/LinearLayout;

.field mToRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

.field private mToRecipientList:Ljava/lang/String;

.field mToRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

.field mTotalSize:I

.field private mTriggerSource:I

.field private mUIHandler:Landroid/os/Handler;

.field mUid:Ljava/lang/String;

.field private mWaitForFetchRelatedInfos:Z

.field private mWaitForVisibleWebview:Z

.field private mWasScaleChanged:Z

.field private mWeakRequestHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClient:Landroid/webkit/WebViewClient;

.field private mWebViewLock:Ljava/lang/Object;

.field private mWebViewScale:F

.field private mWithOutScroll:Z

.field private markStarEvent:Landroid/view/View$OnClickListener;

.field private meetingReplySelected:I

.field mimeType:Ljava/lang/String;

.field private moveToEvent:Landroid/view/View$OnClickListener;

.field private myContext:Landroid/content/Context;

.field private myHandler:Landroid/os/Handler;

.field private onClickAddContactListener:Landroid/view/View$OnClickListener;

.field private onClickRecipientShowAllListener:Landroid/view/View$OnClickListener;

.field private photoBmp:Landroid/graphics/Bitmap;

.field recipientThread:Ljava/lang/Thread;

.field private removeMeetingFromCalendarListener:Landroid/view/View$OnClickListener;

.field replyAddr:Ljava/lang/String;

.field private replyAllEvent:Landroid/view/View$OnClickListener;

.field private replyEvent:Landroid/view/View$OnClickListener;

.field replyName:Ljava/lang/String;

.field sKEY_IS_SHOW_ALL:I

.field sTO_CC_BUTTON_MAX_WIDTH_RATIO:F

.field sTO_CC_BUTTON_MIN_WIDTH_RATIO:F

.field private searchMailCollectinId:Ljava/lang/String;

.field private senderImage:Lcom/htc/widget/QuickContactBadge;

.field senderUri:Landroid/net/Uri;

.field private showToCCeventS:Landroid/view/View$OnClickListener;

.field private tmp_charset_select:I

.field tryFetchInfo:Z

.field unfinishedL:Landroid/widget/RelativeLayout;

.field private url:Landroid/net/Uri;

.field private vcard_file_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    .line 299
    sput-boolean v2, Lcom/htc/android/mail/ReadScreen;->_showToCC:Z

    .line 300
    sput-boolean v2, Lcom/htc/android/mail/ReadScreen;->isShowRecipientBlock:Z

    .line 315
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    .line 446
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_account"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "_mailboxId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_uid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_from"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_fromEmail"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_subject"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_to"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_date"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_read"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_cc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_readtotalsize"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_subjtype"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_charset"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_done"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_importance"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "_local"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_group"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "_messageClassInt"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_startTime"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "_endTime"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "_location"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "_allDayEvent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/ReadScreen;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const-wide/16 v5, 0x0

    const-wide/16 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 184
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 186
    iput v7, p0, Lcom/htc/android/mail/ReadScreen;->mMultiTouchZoomType:I

    .line 191
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->isInlineAttachDownload:Z

    .line 192
    const-string v0, "WithOutScroll"

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->WithOutScroll:Ljava/lang/String;

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->myHandler:Landroid/os/Handler;

    .line 200
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->curRecp:Lcom/htc/android/mail/ReceiverList;

    .line 201
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mCursor:Landroid/database/Cursor;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mPlayables:Ljava/util/ArrayList;

    .line 206
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mFromListTab:Z

    .line 208
    iput v4, p0, Lcom/htc/android/mail/ReadScreen;->localMail:I

    .line 279
    iput-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    .line 281
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    .line 282
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mIsCancelMeetingView:Z

    .line 288
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mNoHistoryEnable:Z

    .line 295
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    .line 296
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->expandAttachmentView:Z

    .line 301
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->recipientThread:Ljava/lang/Thread;

    .line 303
    sget v0, Lcom/htc/android/mail/Mail;->EMAIL_MEDIUM:I

    iput v0, p0, Lcom/htc/android/mail/ReadScreen;->mTextSize:I

    .line 304
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mShowGetUnfinishUI:Z

    .line 305
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mShowDownloadHtmlImageButton:Z

    .line 308
    iput-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mArriveMillis:J

    .line 310
    iput-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mProfileRawContactID:J

    .line 311
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 312
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    .line 313
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewLock:Ljava/lang/Object;

    .line 314
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mIsWebViewDestroied:Z

    .line 321
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->senderImage:Lcom/htc/widget/QuickContactBadge;

    .line 322
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;

    .line 323
    iput v4, p0, Lcom/htc/android/mail/ReadScreen;->attachmentCounts:I

    .line 324
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUid:Ljava/lang/String;

    .line 325
    iput-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    .line 326
    iput-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mOldMessageId:J

    .line 327
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mGroup:Ljava/lang/String;

    .line 328
    iput-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mBodyPartID:J

    .line 329
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mBodyIndex:Ljava/lang/String;

    .line 330
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mBodyEncode:Ljava/lang/String;

    .line 331
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mBodyCharset:Ljava/lang/String;

    .line 332
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mSuggestCharset:Ljava/lang/String;

    .line 333
    iput v4, p0, Lcom/htc/android/mail/ReadScreen;->mTotalSize:I

    .line 334
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mimeType:Ljava/lang/String;

    .line 335
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    .line 336
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->tryFetchInfo:Z

    .line 337
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->info:Ljava/lang/String;

    .line 338
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->enableEncoding:Z

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mSubjType:Ljava/lang/String;

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mSubject:Ljava/lang/String;

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mComboSubject:Ljava/lang/String;

    .line 343
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mFrom:Ljava/lang/String;

    .line 344
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->vcard_file_name:Ljava/lang/String;

    .line 345
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMailCommon:Lcom/htc/android/mail/MailCommon;

    .line 347
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mEmptyHtml:Z

    .line 351
    iput-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mNextMessageId:J

    .line 352
    iput-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mPreMessageId:J

    .line 353
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mShowAttachThreadLock:Ljava/lang/Object;

    .line 354
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->getUnfinishedText:Ljava/lang/String;

    .line 355
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mOldFocusNode:Lcom/htc/android/mail/ReadScreen$FocusNode;

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F

    .line 358
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMeetingDetail:Lcom/htc/android/mail/ReadScreen$MeetingDetail;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mTagList:Ljava/util/ArrayList;

    .line 363
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mWithOutScroll:Z

    .line 364
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/android/mail/ReadScreen;->mDefaultScrollSize:I

    .line 365
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mFullSize:Z

    .line 367
    iput v4, p0, Lcom/htc/android/mail/ReadScreen;->mTriggerSource:I

    .line 391
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;

    .line 394
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;

    .line 395
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mIsPreNextAction:Z

    .line 397
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mFromConversationView:Z

    .line 398
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    .line 400
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mSingleItem:Z

    .line 401
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->searchMailCollectinId:Ljava/lang/String;

    .line 402
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mWaitForVisibleWebview:Z

    .line 403
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mFromMimeViewer:Z

    .line 406
    iput v4, p0, Lcom/htc/android/mail/ReadScreen;->mRestoreScrollX:I

    .line 407
    iput v4, p0, Lcom/htc/android/mail/ReadScreen;->mRestoreScrollY:I

    .line 408
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mWasScaleChanged:Z

    .line 414
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z

    .line 416
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mCurrentSender:Lcom/htc/android/mail/ReadScreen$MailHeader;

    .line 419
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccountName:Ljava/lang/String;

    .line 420
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccountType:Ljava/lang/String;

    .line 426
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSenderLabel:Landroid/widget/TextView;

    .line 429
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAttachSwitch:Lcom/htc/android/mail/widget/MailAttachmentSwitch;

    .line 430
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAttachBottomDivider:Landroid/widget/LinearLayout;

    .line 432
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagListMain:Landroid/widget/LinearLayout;

    .line 440
    iput v4, p0, Lcom/htc/android/mail/ReadScreen;->meetingReplySelected:I

    .line 442
    new-instance v0, Lcom/htc/android/mail/util/MailDialogManager;

    invoke-direct {v0}, Lcom/htc/android/mail/util/MailDialogManager;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    .line 836
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const-string v1, "_id"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    .line 929
    new-instance v0, Lcom/htc/android/mail/ReadScreen$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$1;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->showToCCeventS:Landroid/view/View$OnClickListener;

    .line 974
    new-instance v0, Lcom/htc/android/mail/ReadScreen$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$2;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->markStarEvent:Landroid/view/View$OnClickListener;

    .line 980
    new-instance v0, Lcom/htc/android/mail/ReadScreen$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$3;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->replyEvent:Landroid/view/View$OnClickListener;

    .line 986
    new-instance v0, Lcom/htc/android/mail/ReadScreen$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$4;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->replyAllEvent:Landroid/view/View$OnClickListener;

    .line 992
    new-instance v0, Lcom/htc/android/mail/ReadScreen$5;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$5;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mOnClickMeetingAccept:Landroid/view/View$OnClickListener;

    .line 1005
    new-instance v0, Lcom/htc/android/mail/ReadScreen$6;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$6;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mOnClickMeetingDecline:Landroid/view/View$OnClickListener;

    .line 1018
    new-instance v0, Lcom/htc/android/mail/ReadScreen$7;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$7;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mOnClickMeetingTentative:Landroid/view/View$OnClickListener;

    .line 1031
    new-instance v0, Lcom/htc/android/mail/ReadScreen$8;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$8;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mOnClickMeetingProposeTime:Landroid/view/View$OnClickListener;

    .line 1045
    new-instance v0, Lcom/htc/android/mail/ReadScreen$9;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$9;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->forwardEvent:Landroid/view/View$OnClickListener;

    .line 1051
    new-instance v0, Lcom/htc/android/mail/ReadScreen$10;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$10;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->moveToEvent:Landroid/view/View$OnClickListener;

    .line 1057
    new-instance v0, Lcom/htc/android/mail/ReadScreen$11;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$11;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->deleteEvent:Landroid/view/View$OnClickListener;

    .line 1067
    new-instance v0, Lcom/htc/android/mail/ReadScreen$12;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$12;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->confirmAddContactEvent:Landroid/content/DialogInterface$OnClickListener;

    .line 1072
    new-instance v0, Lcom/htc/android/mail/ReadScreen$13;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$13;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cancelAddContactEvent:Landroid/content/DialogInterface$OnClickListener;

    .line 1078
    new-instance v0, Lcom/htc/android/mail/ReadScreen$14;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$14;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->confirmDelMailEvent:Landroid/content/DialogInterface$OnClickListener;

    .line 1224
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->replyAddr:Ljava/lang/String;

    .line 1225
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->replyName:Ljava/lang/String;

    .line 1226
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mShowRecipientDialog:Z

    .line 1353
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientList:Ljava/lang/String;

    .line 1354
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientList:Ljava/lang/String;

    .line 1356
    iput v4, p0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    .line 1357
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/htc/android/mail/ReadScreen;->sTO_CC_BUTTON_MAX_WIDTH_RATIO:F

    .line 1358
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/htc/android/mail/ReadScreen;->sTO_CC_BUTTON_MIN_WIDTH_RATIO:F

    .line 1359
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/ReadScreen;->sKEY_IS_SHOW_ALL:I

    .line 1361
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mToListViewLayout:Landroid/widget/LinearLayout;

    .line 1362
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mCcListViewLayout:Landroid/widget/LinearLayout;

    .line 1364
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    .line 1365
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    .line 1366
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagRecipientInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    .line 1368
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    .line 1369
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    .line 1370
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    .line 1474
    new-instance v0, Lcom/htc/android/mail/ReadScreen$18;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$18;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->onClickRecipientShowAllListener:Landroid/view/View$OnClickListener;

    .line 1510
    new-instance v0, Lcom/htc/android/mail/ReadScreen$19;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$19;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->onClickAddContactListener:Landroid/view/View$OnClickListener;

    .line 3444
    new-instance v0, Lcom/htc/android/mail/ReadScreen$27;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$27;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mPreMailListener:Landroid/view/View$OnClickListener;

    .line 3640
    new-instance v0, Lcom/htc/android/mail/ReadScreen$29;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$29;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mNextMailListener:Landroid/view/View$OnClickListener;

    .line 3647
    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->localIntent:Landroid/content/Intent;

    .line 3668
    new-instance v0, Lcom/htc/android/mail/ReadScreen$30;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$30;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mMailBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3924
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mShowHtmlImage:Z

    .line 3925
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mWaitForFetchRelatedInfos:Z

    .line 4228
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->loadingUnfinished:Z

    .line 4379
    new-instance v0, Lcom/htc/android/mail/ReadScreen$34;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$34;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->getUnfinishedListener:Landroid/view/View$OnClickListener;

    .line 4565
    new-instance v0, Lcom/htc/android/mail/ReadScreen$35;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$35;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->downloadHtmlImageActionListener:Landroid/view/View$OnClickListener;

    .line 4692
    new-instance v0, Lcom/htc/android/mail/ReadScreen$39;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$39;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mDialogListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 5101
    new-instance v0, Lcom/htc/android/mail/ReadScreen$41;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$41;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 5244
    new-instance v0, Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 5396
    invoke-static {}, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mBackGroundHandler:Landroid/os/Handler;

    .line 5800
    new-instance v0, Lcom/htc/android/mail/ReadScreen$42;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$42;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->removeMeetingFromCalendarListener:Landroid/view/View$OnClickListener;

    .line 6067
    new-instance v0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;

    invoke-direct {v0, p0, v3}, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;-><init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mLoadPrevNextTask:Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;

    .line 6712
    new-instance v0, Lcom/htc/android/mail/ReadScreen$44;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$44;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->expandAttachmentViewListener:Landroid/view/View$OnClickListener;

    .line 7143
    return-void
.end method

.method private ComposeOne(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "addr"
    .parameter "name"

    .prologue
    .line 633
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ComposeOne>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_0
    iget-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 643
    :goto_0
    return-void

    .line 635
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 636
    .local v0, compose_intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 637
    const-string v1, "cmd"

    const-string v2, "compose"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string v1, "accountID"

    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 639
    const-string v1, "replyAddr"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    const-string v1, "replyName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v1, "SetOrient"

    const-string v2, "InMail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private MillsToDate(JI)Ljava/lang/String;
    .locals 7
    .parameter "MeetingDate"
    .parameter "format"

    .prologue
    const/4 v6, 0x3

    .line 5997
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 5998
    .local v2, is24Format:Z
    const/4 v4, 0x0

    .line 5999
    .local v4, returnDate:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    .line 6001
    .local v0, currentFormat:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6002
    const-string v0, "E, MMM d, yyyy h:mm aa"

    .line 6005
    :cond_0
    if-ne p3, v6, :cond_1

    .line 6007
    const-string v0, ""

    .line 6010
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v3, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 6012
    .local v3, locale:Ljava/util/Locale;
    const/4 v5, 0x1

    if-eq p3, v5, :cond_2

    if-ne p3, v6, :cond_6

    .line 6014
    :cond_2
    if-eqz v2, :cond_3

    .line 6015
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kk:mm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6016
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6017
    .local v1, dateFormat:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6034
    .end local v1           #dateFormat:Ljava/lang/CharSequence;
    :goto_0
    return-object v4

    .line 6019
    :cond_3
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh_tw"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh_cn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6020
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " aa h:mm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6021
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6022
    .restart local v1       #dateFormat:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6023
    goto :goto_0

    .line 6024
    .end local v1           #dateFormat:Ljava/lang/CharSequence;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " h:mm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6025
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "aa"

    invoke-static {v6, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6027
    .local v1, dateFormat:Ljava/lang/String;
    move-object v4, v1

    .line 6028
    goto :goto_0

    .line 6031
    .end local v1           #dateFormat:Ljava/lang/String;
    :cond_6
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6032
    .local v1, dateFormat:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showRecipientBlock()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->deleteMail()V

    return-void
.end method

.method static synthetic access$10000(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->doDynamticZoom()V

    return-void
.end method

.method static synthetic access$10100(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/widget/HtcPhotoButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->updateEachContact(Lcom/htc/android/mail/widget/HtcPhotoButton;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$MeetingDetail;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->updateMeetingDetail(Lcom/htc/android/mail/ReadScreen$MeetingDetail;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReceiverList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->updateSenderContactBtnUI(Lcom/htc/android/mail/ReceiverList;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/htc/android/mail/ReadScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->deleteMail(Z)V

    return-void
.end method

.method static synthetic access$10600(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mMessageIdsUriStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/util/ActivityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mActivityCallback:Lcom/htc/android/mail/util/ActivityCallback;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mSortRule:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/ReadScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mShowRecipientDialog:Z

    return v0
.end method

.method static synthetic access$11000(Lcom/htc/android/mail/ReadScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mFromConversationView:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/android/mail/ReadScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/htc/android/mail/ReadScreen;->mShowRecipientDialog:Z

    return p1
.end method

.method static synthetic access$11102(Lcom/htc/android/mail/ReadScreen;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/htc/android/mail/ReadScreen;->mPreMessageId:J

    return-wide p1
.end method

.method static synthetic access$11202(Lcom/htc/android/mail/ReadScreen;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/htc/android/mail/ReadScreen;->mNextMessageId:J

    return-wide p1
.end method

.method static synthetic access$11500(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->updateAttachmentView()V

    return-void
.end method

.method static synthetic access$11600(Lcom/htc/android/mail/ReadScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/ReadScreenScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mComboSubject:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/ReadScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget v0, p0, Lcom/htc/android/mail/ReadScreen;->meetingReplySelected:I

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/android/mail/ReadScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput p1, p0, Lcom/htc/android/mail/ReadScreen;->meetingReplySelected:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/ReadScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/AbsRequestController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/ReadScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/android/mail/ReadScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/ReadScreen;->ComposeOne(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->editContactGroup()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/android/mail/ReadScreen;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/ReadScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->replyMail(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/android/mail/ReadScreen;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->onClickRecipientShowAllListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/android/mail/ReadScreen;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mPartFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/widget/HtcPhotoButton;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/ReadScreen;->getBtnWidth(Lcom/htc/android/mail/widget/HtcPhotoButton;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/android/mail/ReadScreen;Landroid/view/View;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/ReadScreen;->getViewWidth(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->updateReceiverContacts(Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReceiverList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->getDisplayName(Lcom/htc/android/mail/ReceiverList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/android/mail/ReadScreen;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->onClickAddContactListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/ReceiverList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReceiverList;)Lcom/htc/android/mail/ReceiverList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/android/mail/ReadScreen;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 184
    invoke-direct/range {p0 .. p5}, Lcom/htc/android/mail/ReadScreen;->updateMailAddress(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->replyAllMail()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->updateContactButtonUI(Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/android/mail/ReadScreen;Landroid/database/Cursor;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/ReadScreen;->showHtmlBody(Landroid/database/Cursor;Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/android/mail/ReadScreen;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->showTextBody(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3302(Lcom/htc/android/mail/ReadScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/htc/android/mail/ReadScreen;->mEmptyHtml:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/android/mail/ReadScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->getScrollSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/widget/QuickContactBadge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->senderImage:Lcom/htc/widget/QuickContactBadge;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/htc/android/mail/ReadScreen;Lcom/htc/widget/QuickContactBadge;)Lcom/htc/widget/QuickContactBadge;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen;->senderImage:Lcom/htc/widget/QuickContactBadge;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/htc/android/mail/ReadScreen;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->updateProfilePhoto()V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->updateContactPhoto()V

    return-void
.end method

.method static synthetic access$3900()I
    .locals 1

    .prologue
    .line 184
    sget v0, Lcom/htc/android/mail/ReadScreen;->mNowTokenId:I

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/android/mail/ReadScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->loadMail(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/android/mail/ReadScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->moveMarkMailtoFold2(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/android/mail/ReadScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->goToPreMail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/ReadScreen;->createNewContact(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4400(Lcom/htc/android/mail/ReadScreen;JLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/ReadScreen;->getGroupList(JLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/android/mail/ReadScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->goToNextMail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4602(Lcom/htc/android/mail/ReadScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput p1, p0, Lcom/htc/android/mail/ReadScreen;->mIsAirPlaneMode:I

    return p1
.end method

.method static synthetic access$4700(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->reloadAttachment()V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Mailbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/mail/ReadScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/htc/android/mail/ReadScreen;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget v0, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F

    return v0
.end method

.method static synthetic access$5002(Lcom/htc/android/mail/ReadScreen;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput p1, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F

    return p1
.end method

.method static synthetic access$5100(Lcom/htc/android/mail/ReadScreen;D)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/ReadScreen;->setZoomStatus(D)V

    return-void
.end method

.method static synthetic access$5200()Lcom/htc/android/mail/ZoomControl;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Request;)Lcom/htc/android/mail/Request;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Request;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->startGetUnfinishedAnimation(Lcom/htc/android/mail/Request;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->stopGetUnfinishedAnimation()V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->searchMailCollectinId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/android/mail/ReadScreen;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$5900(Lcom/htc/android/mail/ReadScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mShowHtmlImage:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/htc/android/mail/ReadScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/htc/android/mail/ReadScreen;->mShowHtmlImage:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/android/mail/ReadScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/htc/android/mail/ReadScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mWaitForFetchRelatedInfos:Z

    return v0
.end method

.method static synthetic access$6100(Lcom/htc/android/mail/ReadScreen;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->downloadHtmlImage(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->hideDownloadHtmlImageButton()V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/ReadScreen$RequestHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mRequestHandler:Lcom/htc/android/mail/ReadScreen$RequestHandler;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/htc/android/mail/ReadScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget v0, p0, Lcom/htc/android/mail/ReadScreen;->tmp_charset_select:I

    return v0
.end method

.method static synthetic access$6402(Lcom/htc/android/mail/ReadScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput p1, p0, Lcom/htc/android/mail/ReadScreen;->tmp_charset_select:I

    return p1
.end method

.method static synthetic access$6500(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->reShowMail()V

    return-void
.end method

.method static synthetic access$6700(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showAttachmentSwitch()V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mShowAttachThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/htc/android/mail/ReadScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->expandAttachmentView:Z

    return v0
.end method

.method static synthetic access$6902(Lcom/htc/android/mail/ReadScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/htc/android/mail/ReadScreen;->expandAttachmentView:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/android/mail/ReadScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->meetingRespEvent(I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/htc/android/mail/ReadScreen;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->showAttachment(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$7102(Lcom/htc/android/mail/ReadScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/htc/android/mail/ReadScreen;->mLoadAllDataDone:Z

    return p1
.end method

.method static synthetic access$7202(Lcom/htc/android/mail/ReadScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput p1, p0, Lcom/htc/android/mail/ReadScreen;->mRestoreScrollX:I

    return p1
.end method

.method static synthetic access$7302(Lcom/htc/android/mail/ReadScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput p1, p0, Lcom/htc/android/mail/ReadScreen;->mRestoreScrollY:I

    return p1
.end method

.method static synthetic access$7400(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showMailBody()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500(Lcom/htc/android/mail/ReadScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->isInlineAttachDownload:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/htc/android/mail/ReadScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/htc/android/mail/ReadScreen;->isInlineAttachDownload:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/htc/android/mail/ReadScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->updateAllAttachmentButton(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/htc/android/mail/ReadScreen;ILcom/htc/android/mail/Attachment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/ReadScreen;->updateAttachmentButton(ILcom/htc/android/mail/Attachment;I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->stopDownloadHtmlImageBtnAnimation()V

    return-void
.end method

.method static synthetic access$7900(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->setMailRead()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->forwardMail()V

    return-void
.end method

.method static synthetic access$8000(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Attachment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/ReadScreen;->updateAttachmentProgressDisplay(Lcom/htc/android/mail/Attachment;I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/htc/android/mail/ReadScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mWasScaleChanged:Z

    return v0
.end method

.method static synthetic access$8102(Lcom/htc/android/mail/ReadScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/htc/android/mail/ReadScreen;->mWasScaleChanged:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showUnfinished()V

    return-void
.end method

.method static synthetic access$8500(Lcom/htc/android/mail/ReadScreen;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->addAttachView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Attachment;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->updateAttachView(Lcom/htc/android/mail/Attachment;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Attachment;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->updateAttachButton(Lcom/htc/android/mail/Attachment;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->updatePreNextButton()V

    return-void
.end method

.method static synthetic access$8900(Lcom/htc/android/mail/ReadScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->updateAttachmentSwitch(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Attachment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/ReadScreen;->updateAttachmentProgress(Lcom/htc/android/mail/Attachment;I)V

    return-void
.end method

.method static synthetic access$9100(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$MailHeader;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->updateMailHeader(Lcom/htc/android/mail/ReadScreen$MailHeader;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->setFooterBar()V

    return-void
.end method

.method static synthetic access$9300(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->loadMailContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/htc/android/mail/ReadScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->showAttachList(Z)V

    return-void
.end method

.method static synthetic access$9500(Lcom/htc/android/mail/ReadScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->updateUIByAccountType(Z)V

    return-void
.end method

.method static synthetic access$9600(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showMessageTooLargeToast()V

    return-void
.end method

.method static synthetic access$9700(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showLoadingMail()V

    return-void
.end method

.method static synthetic access$9800(Lcom/htc/android/mail/ReadScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen;->showUnfinishedUI(I)V

    return-void
.end method

.method static synthetic access$9900(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->removeUnfinishUI()V

    return-void
.end method

.method private addAttachView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 5603
    if-eqz p1, :cond_0

    .line 5604
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5606
    :cond_0
    return-void
.end method

.method private bringStarredTagToFirst(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;>;"
    const/4 v8, 0x0

    .line 878
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 879
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 880
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v5, "ReadScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    iget-wide v4, v4, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 882
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    invoke-virtual {v4}, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->clone()Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    move-result-object v1

    .line 883
    .local v1, oldFirstTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    invoke-virtual {v4}, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->clone()Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    move-result-object v3

    .line 885
    .local v3, starredTab:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    invoke-virtual {p1, v8, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 886
    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 890
    .end local v1           #oldFirstTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    .end local v3           #starredTab:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    :cond_1
    return-void

    .line 879
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkContactExit(Ljava/lang/String;)Z
    .locals 10
    .parameter "addr"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 6193
    const/4 v2, 0x0

    .line 6194
    .local v2, res:Z
    const-string v3, "data1 LIKE ?"

    .line 6196
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/String;

    aput-object p1, v7, v4

    invoke-static {v5, v6, v3, v7, v9}, Lcom/htc/android/mail/ReadScreen;->getContactCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6197
    .local v0, contactCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 6199
    .local v1, profileCursor:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 6200
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/String;

    aput-object p1, v7, v4

    invoke-static {v5, v6, v3, v7, v9}, Lcom/htc/android/mail/ReadScreen;->getProfileCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6202
    if-nez v1, :cond_1

    .line 6203
    sget-boolean v5, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ReadScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContactId cursor null>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6236
    :cond_0
    :goto_0
    return v4

    .line 6211
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6212
    const/4 v2, 0x1

    .line 6214
    :cond_2
    if-eqz v0, :cond_3

    .line 6215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6216
    const/4 v0, 0x0

    .line 6222
    :cond_3
    if-nez v2, :cond_6

    .line 6223
    if-nez v1, :cond_4

    .line 6224
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/String;

    aput-object p1, v7, v4

    invoke-static {v5, v6, v3, v7, v9}, Lcom/htc/android/mail/ReadScreen;->getProfileCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6227
    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6228
    const/4 v2, 0x1

    .line 6230
    :cond_5
    if-eqz v1, :cond_6

    .line 6231
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6232
    const/4 v1, 0x0

    :cond_6
    move v4, v2

    .line 6236
    goto :goto_0
.end method

.method private clearNewMailNotification()V
    .locals 3

    .prologue
    .line 6129
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/NewMailNotification;->clearNotificationInLine(Landroid/content/Context;J)I

    .line 6130
    return-void
.end method

.method private composeNew()V
    .locals 5

    .prologue
    .line 622
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    const-string v2, "composeNew>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_0
    iget-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 630
    :goto_0
    return-void

    .line 624
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 625
    .local v0, replyall_intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 626
    const-string v1, "cmd"

    const-string v2, "compose"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v1, "accountID"

    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 628
    const-string v1, "SetOrient"

    const-string v2, "InMail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private createNewContact(Ljava/lang/String;Ljava/lang/String;)J
    .locals 20
    .parameter "name"
    .parameter "mail"

    .prologue
    .line 7198
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 7199
    .local v13, resolver:Landroid/content/ContentResolver;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 7201
    .local v15, values:Landroid/content/ContentValues;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 7202
    .local v12, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v10, 0x0

    .line 7203
    .local v10, operation:Landroid/content/ContentProviderOperation;
    const/4 v11, 0x0

    .line 7205
    .local v11, operationCountsIdx:I
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 7206
    sget-object v16, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 7209
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/ReadScreen;->setAccountInfo()V

    .line 7210
    const-string v16, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAccountName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7211
    const-string v16, "account_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAccountType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7213
    const-string v16, "version"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7214
    const-string v16, "dirty"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7215
    const-string v16, "deleted"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7216
    const/4 v14, 0x0

    .line 7217
    .local v14, tmpStr:Ljava/lang/String;
    const-string v16, "sync1"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7218
    const-string v16, "sync2"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7219
    const-string v16, "sync3"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7220
    const-string v16, "sync4"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7221
    const-string v16, "aggregation_mode"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7222
    const-string v16, "sourceid"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7224
    invoke-virtual {v2, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 7225
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    .line 7226
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7229
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 7230
    sget-object v16, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 7231
    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 7232
    const-string v16, "data1"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7243
    :cond_0
    const-string v16, "mimetype"

    const-string v17, "vnd.android.cursor.item/name"

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7244
    invoke-virtual {v2, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 7245
    const-string v16, "raw_contact_id"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 7246
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    .line 7247
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7250
    move-object/from16 v5, p2

    .line 7251
    .local v5, data:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 7252
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 7253
    const-string v16, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7254
    const-string v16, "data2"

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7255
    const-string v16, "mimetype"

    const-string v17, "vnd.android.cursor.item/email_v2"

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7256
    sget-object v16, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 7257
    invoke-virtual {v2, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 7258
    const-string v16, "raw_contact_id"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 7259
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    .line 7260
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7263
    :cond_1
    const-wide/16 v7, 0x0

    .line 7266
    .local v7, id:J
    :try_start_0
    const-string v16, "com.android.contacts"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v9

    .line 7267
    .local v9, mResult:[Landroid/content/ContentProviderResult;
    if-eqz v9, :cond_2

    const/16 v16, 0x0

    aget-object v16, v9, v16

    if-eqz v16, :cond_2

    .line 7268
    const/16 v16, 0x0

    aget-object v16, v9, v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v7

    .line 7277
    .end local v9           #mResult:[Landroid/content/ContentProviderResult;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreen;->getContactId(Ljava/lang/String;)J

    move-result-wide v3

    .line 7279
    .local v3, contactId:J
    return-wide v3

    .line 7270
    .end local v3           #contactId:J
    :catch_0
    move-exception v6

    .line 7271
    .local v6, e:Landroid/os/RemoteException;
    const-string v16, "ReadScreen"

    const-string v17, "InsertColleageToContactTask: "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 7272
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 7273
    .local v6, e:Landroid/content/OperationApplicationException;
    const-string v16, "ReadScreen"

    const-string v17, "InsertColleageToContactTask: "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createWebView()V
    .locals 12

    .prologue
    .line 3747
    sget-boolean v8, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ReadScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "func start: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3748
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->getWebTextSize()V

    .line 3750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3751
    .local v4, webviewCreate:J
    new-instance v8, Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/htc/android/mail/HtcWebView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    .line 3752
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setFocusable(Z)V

    .line 3753
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v8, p0}, Lcom/htc/android/mail/HtcWebView;->SetOwnerActivityContext(Landroid/content/Context;)V

    .line 3754
    sget-boolean v8, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "ReadScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create WebView use: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3756
    :cond_1
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ReadScreenScrollView;->setWebView(Lcom/htc/android/mail/HtcWebView;)V

    .line 3757
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    invoke-virtual {v8, p0}, Lcom/htc/android/mail/ReadScreenScrollView;->setReadScreen(Lcom/htc/android/mail/ReadScreen;)V

    .line 3758
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ReadScreenScrollView;->setAccount(Lcom/htc/android/mail/Account;)V

    .line 3759
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setScrollView(Lcom/htc/android/mail/ReadScreenScrollView;)V

    .line 3761
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v8}, Lcom/htc/android/mail/HtcWebView;->enableSmartZoom()V

    .line 3762
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setTouchSlop(I)V

    .line 3765
    :try_start_0
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setScaleWithoutCheck(Z)V

    .line 3767
    const/4 v8, 0x2

    iget v9, p0, Lcom/htc/android/mail/ReadScreen;->mMultiTouchZoomType:I

    if-ne v8, v9, :cond_2

    .line 3768
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v8}, Lcom/htc/android/mail/HtcWebView;->enableMultiTouch()V

    .line 3769
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setIsCacheDrawBitmap(Z)V

    .line 3771
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const/high16 v9, 0x4000

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setZoomUpperBound(F)V

    .line 3772
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const v9, 0x3f4ccccd

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setZoomLowerBound(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3781
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    new-instance v9, Lcom/htc/android/mail/ReadScreen$31;

    invoke-direct {v9, p0}, Lcom/htc/android/mail/ReadScreen$31;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 3836
    const/4 v8, 0x1

    iget v9, p0, Lcom/htc/android/mail/ReadScreen;->mMultiTouchZoomType:I

    if-ne v8, v9, :cond_3

    .line 3837
    new-instance v8, Lcom/htc/android/mail/ZoomControl;

    invoke-direct {v8, p0}, Lcom/htc/android/mail/ZoomControl;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    .line 3838
    sget-object v8, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    new-instance v9, Lcom/htc/android/mail/ReadScreen$32;

    invoke-direct {v9, p0}, Lcom/htc/android/mail/ReadScreen$32;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ZoomControl;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 3847
    sget-object v8, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    new-instance v9, Lcom/htc/android/mail/ReadScreen$33;

    invoke-direct {v9, p0}, Lcom/htc/android/mail/ReadScreen$33;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ZoomControl;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 3856
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    sget-object v9, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ReadScreenScrollView;->setZoomControl(Lcom/htc/android/mail/ZoomControl;)V

    .line 3860
    :cond_3
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v8}, Lcom/htc/android/mail/HtcWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 3861
    .local v7, ws:Landroid/webkit/WebSettings;
    iget v8, p0, Lcom/htc/android/mail/ReadScreen;->mTextSize:I

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 3862
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 3863
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 3864
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 3865
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 3866
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setIsEnableGifAnimation(Z)V

    .line 3869
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 3870
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v10, 0x16

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3873
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 3874
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3875
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3876
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 3877
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setPureZoomMode(Z)V

    .line 3889
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setVerticalScrollBarEnabled(Z)V

    .line 3891
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 3892
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-static {v8, v9}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getEASOptionValuesForUI(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/eassvc/util/EASOptionForUI;

    move-result-object v1

    .line 3894
    .local v1, easOptionsForUI:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    iget v8, v1, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;->mailBodyType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    iget v8, v1, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;->mailTruncationSize:I

    const/16 v9, 0xa

    if-ne v8, v9, :cond_8

    .line 3896
    sget-boolean v8, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "ReadScreen"

    const-string v9, "setLoadsImagesAutomaticallyEx: false"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3897
    :cond_4
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->clearCache(Z)V

    .line 3898
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 3905
    .end local v1           #easOptionsForUI:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    :cond_5
    :goto_1
    const v8, 0x7f09014c

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 3906
    .local v2, frameLayout:Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x51

    invoke-direct {v3, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3907
    .local v3, param:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, 0x1

    iget v9, p0, Lcom/htc/android/mail/ReadScreen;->mMultiTouchZoomType:I

    if-ne v8, v9, :cond_6

    .line 3908
    sget-object v8, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ZoomControl;->setVisibility(I)V

    .line 3909
    sget-object v8, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    invoke-virtual {v2, v8, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3914
    :cond_6
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const-string v9, "#f2f2f2"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setBackgroundColor(I)V

    .line 3916
    const v8, 0x7f09004f

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 3917
    .local v6, webview_container:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3919
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    iget v9, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/HtcWebView;->setInitialScale(I)V

    .line 3921
    sget-boolean v8, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v8, :cond_7

    const-string v8, "ReadScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "func end: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3922
    :cond_7
    return-void

    .line 3776
    .end local v2           #frameLayout:Landroid/widget/FrameLayout;
    .end local v3           #param:Landroid/widget/FrameLayout$LayoutParams;
    .end local v6           #webview_container:Landroid/widget/LinearLayout;
    .end local v7           #ws:Landroid/webkit/WebSettings;
    :catch_0
    move-exception v0

    .line 3777
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "ReadScreen"

    const-string v9, "there is something wrong when calling cur_w\'s method"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3778
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3900
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #easOptionsForUI:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    .restart local v7       #ws:Landroid/webkit/WebSettings;
    :cond_8
    sget-boolean v8, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "ReadScreen"

    const-string v9, "setLoadsImagesAutomaticallyEx: true"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3901
    :cond_9
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    goto/16 :goto_1
.end method

.method private deleteMail()V
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ReadScreen;->deleteMail(Z)V

    .line 782
    return-void
.end method

.method private deleteMail(Z)V
    .locals 8
    .parameter "finishView"

    .prologue
    .line 785
    iget-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-eqz v1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v1, :cond_2

    .line 789
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    const-string v2, "deleteMail mMailbox null>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 792
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v1, :cond_0

    .line 793
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    .line 794
    .local v0, selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mGroup:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    .line 795
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/mail/util/SelectedMailMessages;->deleteMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V

    .line 796
    const/4 v0, 0x0

    .line 797
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try delete uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_3
    if-eqz p1, :cond_4

    .line 800
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    goto :goto_0

    .line 804
    :cond_4
    iget v1, p0, Lcom/htc/android/mail/ReadScreen;->mTriggerSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 805
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->goToPreMail()Z

    .line 809
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    goto :goto_0

    .line 807
    :cond_5
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->goToNextMail()Z

    goto :goto_1
.end method

.method private disableMenuItem(Landroid/view/Menu;I)V
    .locals 2
    .parameter "menu"
    .parameter "menuName"

    .prologue
    .line 3248
    const/4 v0, 0x0

    .line 3249
    .local v0, menuItem:Landroid/view/MenuItem;
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3251
    if-eqz v0, :cond_0

    .line 3252
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3254
    :cond_0
    return-void
.end method

.method private doDynamticZoom()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x42c8

    .line 5550
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    if-nez v2, :cond_0

    .line 5570
    :goto_0
    return-void

    .line 5554
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v2}, Lcom/htc/android/mail/HtcWebView;->getScale()F

    move-result v0

    .line 5555
    .local v0, nowScale:F
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v2}, Lcom/htc/android/mail/HtcWebView;->getZoomRatio()F

    move-result v1

    .line 5556
    .local v1, ratio:F
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    .line 5557
    iget v2, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    .line 5558
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    iget v3, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/HtcWebView;->setInitialScale(I)V

    .line 5559
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    iget v3, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F

    invoke-virtual {v2, v3, v5}, Lcom/htc/android/mail/HtcWebView;->setNewZoomScale(FZ)V

    .line 5560
    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keep scale and ratio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5562
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    mul-float v3, v1, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/HtcWebView;->setInitialScale(I)V

    .line 5563
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v2, v1, v5}, Lcom/htc/android/mail/HtcWebView;->setNewZoomScale(FZ)V

    .line 5564
    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "now scale and ratio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5567
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/HtcWebView;->setInitialScale(I)V

    .line 5568
    const-string v2, "ReadScreen"

    const-string v3, "ratio is 1, will not scale"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private downloadHtmlImage(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x1

    .line 4535
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/Request;

    .line 4536
    .local v1, downloading:Lcom/htc/android/mail/Request;
    if-eqz v1, :cond_1

    .line 4539
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v3, v1}, Lcom/htc/android/mail/AbsRequestController;->removeRequest(Lcom/htc/android/mail/Request;)V

    .line 4540
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->stopDownloadHtmlImageBtnAnimation()V

    .line 4563
    :goto_0
    return-void

    .line 4542
    :cond_1
    new-instance v2, Lcom/htc/android/mail/Request;

    invoke-direct {v2}, Lcom/htc/android/mail/Request;-><init>()V

    .line 4543
    .local v2, r:Lcom/htc/android/mail/Request;
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    iput-object v3, v2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    .line 4544
    iput-boolean v9, v2, Lcom/htc/android/mail/Request;->isWifiActiveMode:Z

    .line 4545
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 4546
    const/16 v3, 0x200

    iput v3, v2, Lcom/htc/android/mail/Request;->command:I

    .line 4549
    :goto_1
    iput-boolean v9, v2, Lcom/htc/android/mail/Request;->isStopOnLeave:Z

    .line 4551
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4552
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "Mailbox"

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4553
    const-string v3, "MailMessage"

    new-instance v4, Lcom/htc/android/mail/MailMessage;

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mUid:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4554
    const-string v3, "OnlyRelated"

    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4555
    const-string v3, "globalMail"

    iget-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4556
    iput-object v0, v2, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 4557
    iget-wide v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 4558
    const/16 v3, 0xa

    iput v3, v2, Lcom/htc/android/mail/Request;->messageWhat:I

    .line 4559
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    iput-object v3, v2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    .line 4560
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v3, v2}, Lcom/htc/android/mail/AbsRequestController;->addRequest(Lcom/htc/android/mail/Request;)V

    .line 4561
    :cond_2
    invoke-direct {p0, v2}, Lcom/htc/android/mail/ReadScreen;->startDownloadHtmlImageBtnAnimation(Lcom/htc/android/mail/Request;)V

    goto :goto_0

    .line 4548
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    const/16 v3, 0x6f

    iput v3, v2, Lcom/htc/android/mail/Request;->command:I

    goto :goto_1
.end method

.method private editContactGroup()V
    .locals 4

    .prologue
    .line 7320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7321
    .local v1, selectedIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.htccontacts.pick_groups"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7323
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "account_type"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7324
    const-string v2, "PERSON_ACCOUNT_TYPE"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7325
    const-string v2, "PERSON_ACCOUNT_NAME"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7326
    const-string v2, "SELECTED_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 7327
    const/16 v2, 0x19

    invoke-virtual {p0, v0, v2}, Lcom/htc/android/mail/ReadScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7328
    return-void
.end method

.method private enableCopyText()V
    .locals 4

    .prologue
    .line 7122
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    if-eqz v0, :cond_0

    .line 7123
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v0}, Lcom/htc/android/mail/HtcWebView;->emulateShiftHeld()V

    .line 7124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/htc/android/mail/ReadScreen$48;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReadScreen$48;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7130
    :cond_0
    return-void
.end method

.method private forwardMail()V
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ReadScreen;->forwardMail(Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method private forwardMail(Ljava/lang/String;)V
    .locals 6
    .parameter "receiver"

    .prologue
    const/4 v5, 0x1

    .line 728
    iget-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v1, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 730
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-static {p0, v1, v2, v3}, Lcom/htc/android/mail/MailCommon;->checkForward(Landroid/content/Context;Ljava/lang/ref/WeakReference;J)V

    .line 733
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    const-class v3, Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 734
    .local v0, forward_intent:Landroid/content/Intent;
    const-string v1, "cmd"

    const-string v2, "forward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    const-string v1, "accountID"

    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 736
    const-string v1, "SetOrient"

    const-string v2, "InMail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    const-string v1, "fromViewer"

    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mFromMimeViewer:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 739
    if-eqz p1, :cond_3

    .line 740
    const-string v1, "receiver"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    :cond_3
    iget-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mFromListTab:Z

    if-ne v1, v5, :cond_4

    .line 743
    const-string v1, "fromListTab"

    const-string v2, "fromListTab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->isExchange()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 754
    const-string v1, "id"

    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 755
    const-string v1, "uid"

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const-string v1, "FromSearchSvrMailView"

    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 757
    const-string v1, "meetingView"

    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 761
    iget-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    if-eqz v1, :cond_5

    .line 762
    const-string v1, "cmd"

    const-string v2, "forwardMeeting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const-string v1, "meetingResp"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    :cond_5
    iget-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mNoHistoryEnable:Z

    if-eqz v1, :cond_6

    .line 768
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 771
    :cond_6
    invoke-virtual {p0, v0, v5}, Lcom/htc/android/mail/ReadScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 775
    iput-boolean v5, p0, Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z

    goto/16 :goto_0
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v9, 0x0

    .line 2778
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2779
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2780
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2781
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2782
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2783
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 2784
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2785
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2786
    if-eqz v1, :cond_0

    .line 2788
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2789
    const/4 v1, 0x0

    .line 2791
    :cond_0
    if-eqz v0, :cond_1

    .line 2793
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2794
    const/4 v0, 0x0

    .line 2796
    :cond_1
    return-object v2
.end method

.method private getAttachProgressStr(I)Ljava/lang/String;
    .locals 2
    .parameter "percentage"

    .prologue
    .line 5646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBtnWidth(Lcom/htc/android/mail/widget/HtcPhotoButton;I)I
    .locals 6
    .parameter "btn"
    .parameter "containerMaxWidth"

    .prologue
    .line 2362
    invoke-virtual {p1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getButtonWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 2365
    .local v2, originalWidth:I
    iget v3, p0, Lcom/htc/android/mail/ReadScreen;->sTO_CC_BUTTON_MAX_WIDTH_RATIO:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 2366
    .local v0, maxWidth:I
    iget v3, p0, Lcom/htc/android/mail/ReadScreen;->sTO_CC_BUTTON_MIN_WIDTH_RATIO:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 2368
    .local v1, minWidth:I
    if-ge v2, v1, :cond_0

    .line 2374
    .end local v1           #minWidth:I
    :goto_0
    return v1

    .line 2370
    .restart local v1       #minWidth:I
    :cond_0
    if-le v2, v0, :cond_1

    move v1, v0

    .line 2371
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2374
    goto :goto_0
.end method

.method private getBtnWidth(Lcom/htc/android/mail/widget/HtcPhotoButton;II)I
    .locals 5
    .parameter "btn"
    .parameter "containerMaxWidth"
    .parameter "minWidth"

    .prologue
    .line 2379
    invoke-virtual {p1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getButtonWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 2382
    .local v1, originalWidth:I
    iget v2, p0, Lcom/htc/android/mail/ReadScreen;->sTO_CC_BUTTON_MAX_WIDTH_RATIO:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 2385
    .local v0, maxWidth:I
    if-ge v1, p3, :cond_0

    .line 2391
    .end local p3
    :goto_0
    return p3

    .line 2387
    .restart local p3
    :cond_0
    if-le v1, v0, :cond_1

    move p3, v0

    .line 2388
    goto :goto_0

    :cond_1
    move p3, v1

    .line 2391
    goto :goto_0
.end method

.method public static getCenterCropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bmSrc"
    .parameter "nSize"

    .prologue
    const/4 v6, 0x0

    .line 2750
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2751
    .local v1, bmDst:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2752
    .local v2, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 2753
    .local v5, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 2754
    .local v4, nSrcH:I
    if-eq v5, v4, :cond_0

    if-nez p0, :cond_1

    .line 2756
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6, v6, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2772
    :goto_0
    return-object v1

    .line 2760
    :cond_1
    if-le v5, v4, :cond_2

    const/4 v0, 0x1

    .line 2761
    .local v0, bSrcLandscape:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 2763
    sub-int v7, v5, v4

    div-int/lit8 v3, v7, 0x2

    .line 2764
    .local v3, nOffset:I
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v3, v4

    invoke-direct {v7, v3, v6, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .end local v0           #bSrcLandscape:Z
    .end local v3           #nOffset:I
    :cond_2
    move v0, v6

    .line 2760
    goto :goto_1

    .line 2768
    .restart local v0       #bSrcLandscape:Z
    :cond_3
    sub-int v7, v4, v5

    div-int/lit8 v3, v7, 0x2

    .line 2769
    .restart local v3       #nOffset:I
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v3, v5

    invoke-direct {v7, v6, v3, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static getCenterCropThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bmSrc"

    .prologue
    .line 2803
    sget v0, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    .line 2804
    .local v0, nSize:I
    invoke-static {p0, v0}, Lcom/htc/android/mail/ReadScreen;->getCenterCropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method static getContactCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "columns"
    .parameter "where"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 7408
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5711
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayName(Lcom/htc/android/mail/ReceiverList;)Ljava/lang/String;
    .locals 2
    .parameter "a"

    .prologue
    const/4 v0, 0x0

    .line 2411
    if-nez p1, :cond_1

    .line 2418
    :cond_0
    :goto_0
    return-object v0

    .line 2413
    :cond_1
    iget-object v1, p1, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2415
    :cond_2
    iget-object v0, p1, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    .line 2416
    .local v0, dispName:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2417
    :cond_3
    iget-object v0, p1, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    goto :goto_0
.end method

.method private getGroupList(JLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter "contactId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 7332
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v1, "@@ Enter getGroupList()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7334
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.contacts/contacts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/group_name_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7337
    .local v8, uriString:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 7338
    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ contactID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " uriString: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7339
    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ selected group: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7342
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7345
    .local v6, cc:Landroid/database/Cursor;
    :cond_2
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7346
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ReadScreen"

    const-string v1, "@@ query something"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7347
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 7348
    .local v7, groupName:Ljava/lang/String;
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7349
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7350
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7353
    .end local v7           #groupName:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReadScreen;->closeCursor(Landroid/database/Cursor;)V

    .line 7355
    return-object p3
.end method

.method private getMailAddress(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 9
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ReceiverList;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, receiverlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ReceiverList;>;"
    const/4 v4, -0x1

    .line 2341
    move-object v0, p2

    .line 2343
    .local v0, addrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ReceiverList;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v4

    .line 2357
    :cond_1
    :goto_0
    return v1

    .line 2347
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2348
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 2349
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReceiverList;

    iget-object v3, v3, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    if-eq v3, p1, :cond_1

    .line 2350
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReceiverList;

    iget-object v3, v3, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 2351
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReceiverList;

    iget-object v3, v3, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReceiverList;

    iget-wide v5, v3, Lcom/htc/android/mail/ReceiverList;->contactId:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_1

    .line 2348
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v4

    .line 2357
    goto :goto_0
.end method

.method private getOriginalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "addr"

    .prologue
    .line 2296
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->recipientOrignalAddress:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2297
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->recipientOrignalAddress:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/Mailaddress;

    .line 2298
    .local v1, m:Lcom/htc/android/mail/Mailaddress;
    iget-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2299
    iget-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 2312
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #m:Lcom/htc/android/mail/Mailaddress;
    :goto_0
    return-object v2

    .line 2304
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->recipientOrignalAddress:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 2305
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->recipientOrignalAddress:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/Mailaddress;

    .line 2306
    .restart local v1       #m:Lcom/htc/android/mail/Mailaddress;
    iget-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2307
    iget-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 2312
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #m:Lcom/htc/android/mail/Mailaddress;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getProfileCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "cr"
    .parameter "columns"
    .parameter "where"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 7371
    invoke-static {p0}, Lcom/htc/android/mail/ReadScreen;->getProfileRawContactID(Landroid/content/ContentResolver;)J

    move-result-wide v6

    .line 7372
    .local v6, id:J
    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-gez v0, :cond_0

    .line 7373
    const/4 v0, 0x0

    .line 7385
    :goto_0
    return-object v0

    .line 7376
    :cond_0
    const-string v0, "content://com.android.contacts/profile/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7377
    .local v1, uri:Landroid/net/Uri;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 7378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND mimetype = \'vnd.android.cursor.item/email_v2\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND raw_contact_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 7385
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 7381
    :cond_1
    const-string p2, " mimetype = \'vnd.android.cursor.item/email_v2\'"

    .line 7382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND raw_contact_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method static getProfileRawContactID(Landroid/content/ContentResolver;)J
    .locals 10
    .parameter "cr"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 7389
    const-wide/16 v7, -0x1

    .line 7390
    .local v7, id:J
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7391
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 7392
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7393
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 7395
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7397
    :cond_1
    return-wide v7
.end method

.method private getReicipientBlockWidth(I)I
    .locals 3
    .parameter "orientation"

    .prologue
    .line 7359
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollSize()I
    .locals 2

    .prologue
    .line 7179
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20500a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/android/mail/ReadScreen;->mDefaultScrollSize:I

    .line 7180
    iget v0, p0, Lcom/htc/android/mail/ReadScreen;->mDefaultScrollSize:I

    return v0
.end method

.method private getViewWidth(Landroid/view/View;I)I
    .locals 6
    .parameter "view"
    .parameter "containerMaxWidth"

    .prologue
    .line 2396
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 2399
    .local v2, originalWidth:I
    iget v3, p0, Lcom/htc/android/mail/ReadScreen;->sTO_CC_BUTTON_MAX_WIDTH_RATIO:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 2400
    .local v0, maxWidth:I
    iget v3, p0, Lcom/htc/android/mail/ReadScreen;->sTO_CC_BUTTON_MIN_WIDTH_RATIO:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 2402
    .local v1, minWidth:I
    if-ge v2, v1, :cond_0

    .line 2408
    .end local v1           #minWidth:I
    :goto_0
    return v1

    .line 2404
    .restart local v1       #minWidth:I
    :cond_0
    if-le v2, v0, :cond_1

    move v1, v0

    .line 2405
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2408
    goto :goto_0
.end method

.method private getWebTextSize()V
    .locals 4

    .prologue
    .line 3716
    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-static {v2, v3}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 3718
    .local v0, acc:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 3720
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getFontsize()I

    move-result v1

    .line 3722
    .local v1, fontSizeIndex:I
    packed-switch v1, :pswitch_data_0

    .line 3744
    .end local v1           #fontSizeIndex:I
    :cond_0
    :goto_0
    return-void

    .line 3724
    .restart local v1       #fontSizeIndex:I
    :pswitch_0
    sget v2, Lcom/htc/android/mail/Mail;->EMAIL_SMALLEST:I

    iput v2, p0, Lcom/htc/android/mail/ReadScreen;->mTextSize:I

    goto :goto_0

    .line 3727
    :pswitch_1
    sget v2, Lcom/htc/android/mail/Mail;->EMAIL_SMALLER:I

    iput v2, p0, Lcom/htc/android/mail/ReadScreen;->mTextSize:I

    goto :goto_0

    .line 3730
    :pswitch_2
    sget v2, Lcom/htc/android/mail/Mail;->EMAIL_MEDIUM:I

    iput v2, p0, Lcom/htc/android/mail/ReadScreen;->mTextSize:I

    goto :goto_0

    .line 3733
    :pswitch_3
    sget v2, Lcom/htc/android/mail/Mail;->EMAIL_LARGER:I

    iput v2, p0, Lcom/htc/android/mail/ReadScreen;->mTextSize:I

    goto :goto_0

    .line 3736
    :pswitch_4
    sget v2, Lcom/htc/android/mail/Mail;->EMAIL_LARGEST:I

    iput v2, p0, Lcom/htc/android/mail/ReadScreen;->mTextSize:I

    goto :goto_0

    .line 3722
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private goToNextMail()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 3608
    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mNextMessageId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3609
    const/4 v1, 0x0

    .line 3637
    :goto_0
    return v1

    .line 3612
    :cond_0
    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-eqz v2, :cond_4

    .line 3613
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/searchSvrMessages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mNextMessageId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3617
    .local v0, intent:Landroid/content/Intent;
    :goto_1
    const-string v2, "messageIdsUriStr"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMessageIdsUriStr:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3618
    const-string v2, "where"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3619
    const-string v2, "sortRule"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSortRule:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3620
    const-string v2, "webviewScale"

    iget v3, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 3621
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->WithOutScroll:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3622
    const-string v2, "TriggerSource"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3623
    const-string v2, "activityCallback"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mActivityCallback:Lcom/htc/android/mail/util/ActivityCallback;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3624
    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mFromConversationView:Z

    if-eqz v2, :cond_1

    .line 3625
    const-string v2, "FromConversationView"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3627
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-eqz v2, :cond_2

    .line 3628
    const-string v2, "FromSearchSvrMailView"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3629
    const-string v2, "collectionId"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->searchMailCollectinId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3632
    :cond_2
    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mNoHistoryEnable:Z

    if-eqz v2, :cond_3

    .line 3633
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3635
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen;->startActivity(Landroid/content/Intent;)V

    .line 3636
    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mIsPreNextAction:Z

    goto :goto_0

    .line 3615
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mNextMessageId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method private goToPreMail()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 3576
    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mPreMessageId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3577
    const/4 v1, 0x0

    .line 3604
    :goto_0
    return v1

    .line 3580
    :cond_0
    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-eqz v2, :cond_4

    .line 3581
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/searchSvrMessages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mPreMessageId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3585
    .local v0, intent:Landroid/content/Intent;
    :goto_1
    const-string v2, "messageIdsUriStr"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMessageIdsUriStr:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3586
    const-string v2, "where"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3587
    const-string v2, "sortRule"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSortRule:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3588
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->WithOutScroll:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3589
    const-string v2, "webviewScale"

    iget v3, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 3590
    const-string v2, "TriggerSource"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3591
    const-string v2, "activityCallback"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mActivityCallback:Lcom/htc/android/mail/util/ActivityCallback;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3592
    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mFromConversationView:Z

    if-eqz v2, :cond_1

    .line 3593
    const-string v2, "FromConversationView"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3595
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-eqz v2, :cond_2

    .line 3596
    const-string v2, "FromSearchSvrMailView"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3597
    const-string v2, "collectionId"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->searchMailCollectinId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3599
    :cond_2
    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mNoHistoryEnable:Z

    if-eqz v2, :cond_3

    .line 3600
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3602
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen;->startActivity(Landroid/content/Intent;)V

    .line 3603
    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mIsPreNextAction:Z

    goto :goto_0

    .line 3583
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mPreMessageId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method private hideDownloadHtmlImageButton()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 4204
    const v2, 0x7f09015b

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 4205
    .local v1, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4207
    const v2, 0x7f09015c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4208
    .local v0, downImgBtn:Landroid/widget/Button;
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 4209
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 4210
    return-void
.end method

.method private inflateAttachmentLayout()V
    .locals 2

    .prologue
    .line 5680
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAttachSwitch:Lcom/htc/android/mail/widget/MailAttachmentSwitch;

    .line 5681
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAttachSwitch:Lcom/htc/android/mail/widget/MailAttachmentSwitch;

    if-nez v0, :cond_0

    .line 5682
    const v0, 0x7f090159

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/MailAttachmentSwitch;

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAttachSwitch:Lcom/htc/android/mail/widget/MailAttachmentSwitch;

    .line 5684
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAttachSwitch:Lcom/htc/android/mail/widget/MailAttachmentSwitch;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->expandAttachmentViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5686
    const v0, 0x7f09015a

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAttachBottomDivider:Landroid/widget/LinearLayout;

    .line 5687
    return-void
.end method

.method private isAccountSignIn()Z
    .locals 8

    .prologue
    .line 7309
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 7310
    .local v1, accountManager:Landroid/accounts/AccountManager;
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 7311
    .local v2, accounts:[Landroid/accounts/Account;
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 7312
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mAccountName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7313
    const/4 v6, 0x1

    .line 7315
    .end local v0           #account:Landroid/accounts/Account;
    :goto_1
    return v6

    .line 7311
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7315
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private loadMail(I)V
    .locals 10
    .parameter "tokenId"

    .prologue
    const/16 v3, 0xa

    const/4 v9, 0x0

    .line 6134
    sget v0, Lcom/htc/android/mail/ReadScreen;->mNowTokenId:I

    if-eq p1, v0, :cond_1

    .line 6190
    :cond_0
    :goto_0
    return-void

    .line 6138
    :cond_1
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ReadScreen"

    const-string v1, ">> loadMail"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6140
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showHeader()I

    move-result v8

    .line 6142
    .local v8, result:I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_4

    .line 6143
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result == -1, uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6144
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6145
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen;->setResult(I)V

    .line 6146
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    goto :goto_0

    .line 6151
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/ReadScreen$MessageIds;->isMessageIdsChanged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6152
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->updatePrevoisNextButton()V

    .line 6155
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/ReadScreen;->mIsAirPlaneMode:I

    .line 6156
    const/4 v0, 0x1

    if-ne v8, v0, :cond_8

    .line 6158
    invoke-direct {p0, v9}, Lcom/htc/android/mail/ReadScreen;->showMailBody(Z)Ljava/lang/Thread;

    .line 6159
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showAttachmentSwitch()V

    .line 6160
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showMeetingDetail()V

    .line 6161
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->setMailRead()V

    .line 6185
    :cond_6
    :goto_1
    invoke-static {}, Lcom/htc/android/mail/ReadScreen$MessageIds;->isMessageIdsChanged()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6186
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mLoadPrevNextTask:Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6189
    :cond_7
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->clearNewMailNotification()V

    goto :goto_0

    .line 6162
    :cond_8
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/AbsRequestController;->isNeedToFetch(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6163
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 6164
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/mail/ReadScreen$43;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReadScreen$43;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6169
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v0, v1, v2, v9}, Lcom/htc/android/mail/AbsRequestController;->fetchMessageDone(JI)V

    goto/16 :goto_0

    .line 6173
    :cond_9
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showAttachmentSwitch()V

    .line 6174
    invoke-direct {p0, v9}, Lcom/htc/android/mail/ReadScreen;->showMailBody(Z)Ljava/lang/Thread;

    .line 6175
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showMeetingDetail()V

    .line 6176
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6178
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v0, :cond_6

    .line 6179
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    iget-wide v3, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mUid:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/AbsRequestController;->fetchMessageAgain(JJLjava/lang/String;Lcom/htc/android/mail/Mailbox;Ljava/lang/ref/WeakReference;)V

    goto :goto_1

    .line 6182
    :cond_a
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method private loadMailContent(Ljava/lang/String;)V
    .locals 8
    .parameter "content"

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 6038
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mIsDestroyed:Z

    if-eqz v0, :cond_1

    .line 6065
    :cond_0
    :goto_0
    return-void

    .line 6040
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    if-nez v0, :cond_2

    .line 6041
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->createWebView()V

    .line 6050
    :cond_2
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mShowDownloadHtmlImageButton:Z

    if-eqz v0, :cond_3

    .line 6051
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showDownloadHtmlImageButton()V

    .line 6054
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v0}, Lcom/htc/android/mail/HtcWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 6055
    .local v6, webViewSettings:Landroid/webkit/WebSettings;
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mShowHtmlImage:Z

    invoke-virtual {v6, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 6057
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/HtcWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6058
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mWithOutScroll:Z

    if-nez v0, :cond_4

    .line 6059
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mWithOutScroll:Z

    if-nez v0, :cond_5

    move v0, v7

    :goto_1
    iput-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mWithOutScroll:Z

    .line 6063
    :cond_4
    iput-boolean v7, p0, Lcom/htc/android/mail/ReadScreen;->mWaitForVisibleWebview:Z

    goto :goto_0

    .line 6059
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private loadTag()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 6422
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sMessagesTagsRelationURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v11, "joinTable"

    const-string v12, "tags"

    invoke-virtual {v0, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 6423
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "tags._id"

    aput-object v0, v2, v13

    const-string v0, "tags._tagName"

    aput-object v0, v2, v14

    .line 6424
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "messages_tags_relation._messageId = ?"

    .line 6425
    .local v3, where:Ljava/lang/String;
    new-array v4, v14, [Ljava/lang/String;

    iget-wide v11, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v13

    .line 6426
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v5, "tags._id asc"

    .line 6427
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6428
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 6429
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6430
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 6431
    .local v8, tagId:J
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 6432
    .local v10, tagName:Ljava/lang/String;
    new-instance v7, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    invoke-direct {v7, v8, v9, v10}, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;-><init>(JLjava/lang/String;)V

    .line 6433
    .local v7, tag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6435
    .end local v7           #tag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    .end local v8           #tagId:J
    .end local v10           #tagName:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6437
    :cond_1
    return-void
.end method

.method private markUnreadMail()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 816
    iget-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-eqz v1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v1, :cond_2

    .line 819
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    const-string v2, "markUnreadMail mMailbox null>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 823
    :cond_2
    iget v1, p0, Lcom/htc/android/mail/ReadScreen;->_read:I

    if-nez v1, :cond_3

    .line 824
    iput v8, p0, Lcom/htc/android/mail/ReadScreen;->_read:I

    .line 829
    :goto_1
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    .line 830
    .local v0, selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    iget-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mGroup:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    .line 831
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget v1, p0, Lcom/htc/android/mail/ReadScreen;->_read:I

    if-ne v1, v8, :cond_4

    move v1, v8

    :goto_2
    invoke-virtual {v0, p0, v2, v1}, Lcom/htc/android/mail/util/SelectedMailMessages;->setReadStatus(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;Z)V

    .line 833
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set unread or read Mail<<<:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/ReadScreen;->_read:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 826
    .end local v0           #selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    :cond_3
    iput v9, p0, Lcom/htc/android/mail/ReadScreen;->_read:I

    goto :goto_1

    .restart local v0       #selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    :cond_4
    move v1, v9

    .line 831
    goto :goto_2
.end method

.method private meetingRespEvent(I)V
    .locals 6
    .parameter "respType"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1085
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1086
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iput v5, p0, Lcom/htc/android/mail/ReadScreen;->meetingReplySelected:I

    .line 1088
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 1089
    const v2, 0x7f0b00f1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1106
    :goto_0
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    .line 1107
    .local v1, dialogMsg:[Ljava/lang/String;
    const v2, 0x7f0b01f5

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1108
    const v2, 0x7f0b01f4

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1109
    const/4 v2, 0x2

    const v3, 0x7f0b01f6

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1111
    iget v2, p0, Lcom/htc/android/mail/ReadScreen;->meetingReplySelected:I

    new-instance v3, Lcom/htc/android/mail/ReadScreen$15;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/ReadScreen$15;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1117
    const v2, 0x7f0b0291

    new-instance v3, Lcom/htc/android/mail/ReadScreen$17;

    invoke-direct {v3, p0, p1}, Lcom/htc/android/mail/ReadScreen$17;-><init>(Lcom/htc/android/mail/ReadScreen;I)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b008e

    new-instance v4, Lcom/htc/android/mail/ReadScreen$16;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/ReadScreen$16;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1150
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1151
    .end local v1           #dialogMsg:[Ljava/lang/String;
    :cond_0
    return-void

    .line 1090
    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 1092
    iput v4, p0, Lcom/htc/android/mail/ReadScreen;->meetingReplySelected:I

    .line 1093
    const v2, 0x7f0b00e6

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 1095
    :cond_2
    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 1096
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7e

    if-eq v2, v3, :cond_3

    .line 1097
    const v2, 0x7f0b00e8

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 1100
    :cond_3
    const v2, 0x7f0b00e7

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method private moveMarkMailtoFold2(I)V
    .locals 10
    .parameter "which"

    .prologue
    .line 3257
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveMarkMailtoFold2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3259
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v1, :cond_2

    .line 3260
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ReadScreen"

    const-string v2, "moveMarkMailtoFold2 mMailbox null>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    :cond_1
    :goto_0
    return-void

    .line 3264
    :cond_2
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    .line 3265
    .local v8, account:Lcom/htc/android/mail/Account;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3267
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAdapter:Lcom/htc/android/mail/MoveToAdapter;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/MoveToAdapter;->getToMailbox(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;ILandroid/content/Context;)Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    .line 3268
    .local v9, toMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v9, :cond_1

    .line 3270
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    .line 3271
    .local v0, selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    .line 3272
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-wide v2, v9, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/android/mail/util/SelectedMailMessages;->moveMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;J)V

    .line 3273
    const/4 v0, 0x0

    .line 3275
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b002a

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3276
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    goto :goto_0
.end method

.method private reShowMail()V
    .locals 10

    .prologue
    const v9, 0x7f090141

    .line 2523
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mCursor:Landroid/database/Cursor;

    const-string v8, "_from"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2524
    .local v2, senderName:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mCursor:Landroid/database/Cursor;

    const-string v8, "_subject"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2525
    .local v4, subject:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mCursor:Landroid/database/Cursor;

    const-string v8, "_subjtype"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2526
    .local v1, mSubjtype:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mail/messages/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    .line 2527
    sget-boolean v6, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ReadScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reShowMail>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    :cond_0
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 2531
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2532
    .end local v2           #senderName:Ljava/lang/String;
    .local v3, senderName:Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4           #subject:Ljava/lang/String;
    .local v5, subject:Ljava/lang/String;
    move-object v4, v5

    .end local v5           #subject:Ljava/lang/String;
    .restart local v4       #subject:Ljava/lang/String;
    move-object v2, v3

    .line 2536
    .end local v3           #senderName:Ljava/lang/String;
    .restart local v2       #senderName:Ljava/lang/String;
    :goto_0
    sget-boolean v6, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "ReadScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reShowMail:senderName>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    :cond_1
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/htc/android/mail/MailProvider;->updateCharset(Landroid/net/Uri;Ljava/lang/String;)I

    .line 2542
    :goto_1
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2543
    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2544
    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 2549
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2550
    const v6, 0x7f090150

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2551
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->showMailBody()Ljava/lang/Thread;

    .line 2552
    return-void

    .line 2533
    :catch_0
    move-exception v0

    .line 2534
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 2540
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/htc/android/mail/MailProvider;->updateCharset(Landroid/net/Uri;Ljava/lang/String;)I

    goto :goto_1

    .line 2546
    :cond_3
    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 2533
    .end local v2           #senderName:Ljava/lang/String;
    .restart local v3       #senderName:Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #senderName:Ljava/lang/String;
    .restart local v2       #senderName:Ljava/lang/String;
    goto :goto_3
.end method

.method private reloadAttachment()V
    .locals 2

    .prologue
    .line 4709
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/ReadScreen$40;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReadScreen$40;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4729
    return-void
.end method

.method private removeUnfinishUI()V
    .locals 3

    .prologue
    .line 4309
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    const-string v2, "removeUnfinishUI>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4310
    :cond_0
    iget-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mLoadAllDataDone:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 4311
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4312
    .local v0, v:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 4313
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mShowGetUnfinishUI:Z

    .line 4316
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    .line 4318
    .end local v0           #v:Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method private replyAllMail()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 646
    iget-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    const-class v3, Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 648
    .local v0, reply_intent:Landroid/content/Intent;
    const-string v1, "accountID"

    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 649
    const-string v1, "SetOrient"

    const-string v2, "InMail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    const-string v1, "cmd"

    const-string v2, "replyall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string v1, "fromViewer"

    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mFromMimeViewer:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 652
    iget-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mFromListTab:Z

    if-ne v1, v5, :cond_2

    .line 653
    const-string v1, "fromListTab"

    const-string v2, "fromListTab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 656
    const-string v1, "id"

    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 657
    const-string v1, "uid"

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    const-string v1, "FromSearchSvrMailView"

    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 663
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    if-eq v1, v6, :cond_4

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->replyWithText()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 664
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-static {p0, v1, v2, v3}, Lcom/htc/android/mail/MailCommon;->checkReply(Landroid/content/Context;Ljava/lang/ref/WeakReference;J)V

    .line 667
    :cond_4
    iget-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mNoHistoryEnable:Z

    if-eqz v1, :cond_5

    .line 668
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 671
    :cond_5
    invoke-virtual {p0, v0, v5}, Lcom/htc/android/mail/ReadScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 675
    iput-boolean v5, p0, Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z

    goto :goto_0
.end method

.method private replyMail(I)V
    .locals 8
    .parameter "replyType"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 536
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replyMail>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_0
    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v2, :cond_2

    .line 619
    :cond_1
    :goto_0
    return-void

    .line 538
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    const-class v4, Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 539
    .local v1, replyall_intent:Landroid/content/Intent;
    const-string v2, "cmd"

    const-string v3, "reply"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string v2, "accountID"

    iget-wide v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 541
    const-string v2, "SetOrient"

    const-string v3, "InMail"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v2, "fromViewer"

    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mFromMimeViewer:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 543
    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mFromListTab:Z

    if-ne v2, v6, :cond_3

    .line 544
    const-string v2, "fromListTab"

    const-string v3, "fromListTab"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    :cond_3
    const/4 v0, 0x0

    .line 547
    .local v0, bReplyMeetingMail:Z
    invoke-static {p1}, Lcom/htc/android/mail/meeting/MeetingUtil;->isMeeting(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 548
    const-string v2, "meetingView"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 549
    const/4 v0, 0x0

    .line 555
    :goto_1
    const-string v2, "id"

    iget-wide v3, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 557
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 558
    const-string v2, "uid"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v2, "FromSearchSvrMailView"

    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/htc/android/mail/meeting/MeetingUtil;->isMeeting(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 567
    packed-switch p1, :pswitch_data_0

    .line 595
    :goto_2
    const-string v2, "meetingView"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 599
    :cond_4
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-eq v2, v7, :cond_5

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->replyWithText()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 600
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    iget-wide v3, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-static {p0, v2, v3, v4}, Lcom/htc/android/mail/MailCommon;->checkReply(Landroid/content/Context;Ljava/lang/ref/WeakReference;J)V

    .line 603
    :cond_5
    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mNoHistoryEnable:Z

    if-eqz v2, :cond_6

    .line 604
    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    :cond_6
    if-nez v0, :cond_9

    .line 608
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "ReadScreen"

    const-string v3, "replyMail"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_7
    invoke-virtual {p0, v1, v6}, Lcom/htc/android/mail/ReadScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 617
    :goto_3
    iput-boolean v6, p0, Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z

    goto/16 :goto_0

    .line 551
    :cond_8
    const-string v2, "meetingView"

    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    goto :goto_1

    .line 569
    :pswitch_0
    const-string v2, "cmd"

    const-string v3, "replyMeeting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v2, "meetingResp"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const-string v2, "messageClass"

    const-string v3, "IPM.Schedule.Meeting.Resp.Pos"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 574
    :pswitch_1
    const-string v2, "cmd"

    const-string v3, "replyMeeting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v2, "meetingResp"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string v2, "messageClass"

    const-string v3, "IPM.Schedule.Meeting.Resp.Tent"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 579
    :pswitch_2
    const-string v2, "cmd"

    const-string v3, "replyMeeting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string v2, "meetingResp"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v2, "messageClass"

    const-string v3, "IPM.Schedule.Meeting.Resp.Neg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 584
    :pswitch_3
    const-string v2, "cmd"

    const-string v3, "forwardMeeting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v2, "meetingResp"

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v2, "messageClass"

    const-string v3, "IPM.Schedule.Meeting.MeetingRespForward"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 589
    :pswitch_4
    const-string v2, "cmd"

    const-string v3, "proposeNewTime"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string v2, "meetingResp"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v2, "messageClass"

    const-string v3, "IPM.Schedule.Meeting.proposeNewTime"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 611
    :cond_9
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "ReadScreen"

    const-string v3, "replyMeetingMail"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_a
    const/16 v2, 0xe

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/ReadScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private saveAsTask()V
    .locals 13

    .prologue
    .line 681
    sget-boolean v8, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ReadScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveToTask: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/ReadScreen;->mSubject:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_0
    const-string v6, ""

    .line 684
    .local v6, sender:Ljava/lang/String;
    const-string v4, "MAIL"

    .line 687
    .local v4, fieldName:Ljava/lang/String;
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.htc.task.ACTION_CREATE_TASK"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v5, intent:Landroid/content/Intent;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://mail/messages/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 690
    .local v7, url:Landroid/net/Uri;
    const-string v8, "com.htc.task.TASK_TITLE"

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mSubject:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->mFrom:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->mFrom:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 693
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mFrom:Ljava/lang/String;

    .line 698
    :goto_0
    const-string v8, "com.htc.task.TASK_DESCRIPTION"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "From: %s\nSubject: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/htc/android/mail/ReadScreen;->mSubject:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, body:Ljava/lang/String;
    const-string v8, "com.htc.task.TASK_DESCRIPTION"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    const-string v8, "com.htc.task.IMPORTER"

    const-string v9, "com.htc.android.mail"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 705
    .local v2, data:Landroid/os/Bundle;
    const-string v8, "com.htc.task.ADDED_TITLE"

    invoke-virtual {v2, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v8, "com.htc.task.ADDED_BODY"

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v8, "com.htc.task.ADDED_PINTENT_ACTION"

    const-string v9, "android.htc.mail.READ_MAIL"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v8, "com.htc.task.ADDED_PINTENT_DATA"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 711
    .local v0, allData:Landroid/os/Bundle;
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 712
    const-string v8, "com.htc.task.ADDED_FIELDS_BUNDLE"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 714
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->startActivity(Landroid/content/Intent;)V

    .line 721
    .end local v0           #allData:Landroid/os/Bundle;
    .end local v1           #body:Ljava/lang/String;
    .end local v2           #data:Landroid/os/Bundle;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #url:Landroid/net/Uri;
    :goto_1
    return-void

    .line 695
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v7       #url:Landroid/net/Uri;
    :cond_1
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mAddr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #url:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 717
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 718
    const-string v8, "ReadScreen"

    const-string v9, "Save as task fail"

    invoke-static {v8, v9, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private scrollReadScreenScrollView(I)I
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 5269
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    if-nez v6, :cond_1

    :cond_0
    move v3, v5

    .line 5317
    :goto_0
    return v3

    .line 5272
    :cond_1
    const/4 v3, -0x1

    .line 5273
    .local v3, scrollAction:I
    new-instance v2, Lcom/htc/android/mail/ReadScreen$FocusNode;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/htc/android/mail/ReadScreen$FocusNode;-><init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$1;)V

    .line 5274
    .local v2, nowFocusNode:Lcom/htc/android/mail/ReadScreen$FocusNode;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5280
    :pswitch_0
    const/16 v3, 0x21

    .line 5281
    const/16 v6, 0x21

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/ReadScreen$FocusNode;->setScrollAction(I)V

    .line 5286
    :goto_1
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v6}, Lcom/htc/android/mail/HtcWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 5289
    .local v0, hitFocusNode:Landroid/webkit/WebView$HitTestResult;
    if-eqz v0, :cond_2

    .line 5290
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/ReadScreen$FocusNode;->setText(Ljava/lang/String;)V

    .line 5295
    :cond_2
    const/4 v1, 0x0

    .line 5296
    .local v1, nextFocus:Landroid/view/View;
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mOldFocusNode:Lcom/htc/android/mail/ReadScreen$FocusNode;

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mOldFocusNode:Lcom/htc/android/mail/ReadScreen$FocusNode;

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/ReadScreen$FocusNode;->equals(Lcom/htc/android/mail/ReadScreen$FocusNode;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    invoke-virtual {v2}, Lcom/htc/android/mail/ReadScreen$FocusNode;->getText()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    .line 5298
    :cond_4
    invoke-virtual {v2}, Lcom/htc/android/mail/ReadScreen$FocusNode;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 5299
    iput-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mOldFocusNode:Lcom/htc/android/mail/ReadScreen$FocusNode;

    .line 5302
    :cond_5
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    invoke-virtual {v6, v3}, Lcom/htc/android/mail/ReadScreenScrollView;->arrowScroll(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 5303
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    invoke-virtual {v6, v3}, Lcom/htc/android/mail/ReadScreenScrollView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 5304
    if-eqz v1, :cond_8

    .line 5306
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    .line 5307
    goto :goto_0

    .line 5276
    .end local v0           #hitFocusNode:Landroid/webkit/WebView$HitTestResult;
    .end local v1           #nextFocus:Landroid/view/View;
    :pswitch_1
    const/16 v3, 0x82

    .line 5277
    const/16 v6, 0x82

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/ReadScreen$FocusNode;->setScrollAction(I)V

    goto :goto_1

    .restart local v0       #hitFocusNode:Landroid/webkit/WebView$HitTestResult;
    .restart local v1       #nextFocus:Landroid/view/View;
    :cond_6
    move v3, v5

    .line 5309
    goto :goto_0

    :cond_7
    move v3, v4

    .line 5313
    goto :goto_0

    .line 5316
    :cond_8
    invoke-virtual {v2}, Lcom/htc/android/mail/ReadScreen$FocusNode;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    iput-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mOldFocusNode:Lcom/htc/android/mail/ReadScreen$FocusNode;

    :cond_9
    move v3, v5

    .line 5317
    goto :goto_0

    .line 5274
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setAccountInfo()V
    .locals 2

    .prologue
    .line 7284
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccountName:Ljava/lang/String;

    .line 7285
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProviderGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProviderGroup()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7287
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v1, "add to Gmail>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7288
    :cond_0
    const-string v0, "com.google"

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccountType:Ljava/lang/String;

    .line 7289
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->isAccountSignIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7290
    const-string v0, "com.htc.android.pcsc"

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccountType:Ljava/lang/String;

    .line 7291
    const-string v0, "pcsc"

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccountName:Ljava/lang/String;

    .line 7306
    :cond_1
    :goto_0
    return-void

    .line 7293
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 7294
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ReadScreen"

    const-string v1, "add to Exchange>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7295
    :cond_3
    const-string v0, "com.htc.android.mail.eas"

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccountType:Ljava/lang/String;

    .line 7296
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->isAccountSignIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7297
    const-string v0, "com.htc.android.pcsc"

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccountType:Ljava/lang/String;

    .line 7298
    const-string v0, "pcsc"

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccountName:Ljava/lang/String;

    goto :goto_0

    .line 7302
    :cond_4
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ReadScreen"

    const-string v1, "Not Gmail/EAS account >"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7303
    :cond_5
    const-string v0, "com.htc.android.pcsc"

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccountType:Ljava/lang/String;

    .line 7304
    const-string v0, "pcsc"

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccountName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setApplyMaskBitmapToImageView(Landroid/content/Context;Lcom/htc/widget/QuickContactBadge;I)V
    .locals 3
    .parameter "context"
    .parameter "iv"
    .parameter "nSrcID"

    .prologue
    .line 2822
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2823
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 2825
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2826
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 2828
    invoke-static {p0, p1, v1}, Lcom/htc/android/mail/ReadScreen;->setApplyMaskBitmapToImageView(Landroid/content/Context;Lcom/htc/widget/QuickContactBadge;Landroid/graphics/Bitmap;)V

    .line 2832
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public static setApplyMaskBitmapToImageView(Landroid/content/Context;Lcom/htc/widget/QuickContactBadge;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "context"
    .parameter "iv"
    .parameter "bmSrc"

    .prologue
    .line 2809
    invoke-static {p2}, Lcom/htc/android/mail/ReadScreen;->getCenterCropThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2810
    .local v0, bmCenterCropThumbnail:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20801ac

    invoke-static {v2, v0, v3}, Lcom/htc/android/mail/ReadScreen;->getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2811
    .local v1, bmCenterCropThumbnailWithMask:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v1}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2812
    if-eqz v0, :cond_0

    .line 2814
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2815
    const/4 v0, 0x0

    .line 2817
    :cond_0
    const/4 v1, 0x0

    .line 2818
    return-void
.end method

.method private setFooterBar()V
    .locals 10

    .prologue
    const v9, 0x7f08007a

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 5845
    const v3, 0x7f090149

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 5846
    .local v2, footerBarArea:Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    .line 5848
    .local v1, footerBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;
    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mSingleItem:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-eqz v3, :cond_2

    .line 5850
    :cond_0
    const v3, 0x7f090115

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .end local v1           #footerBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;
    check-cast v1, Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    .line 5853
    .restart local v1       #footerBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->replyEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5854
    invoke-virtual {v1, v7}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->replyAllEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5855
    invoke-virtual {v1, v6}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->forwardEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5857
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b00eb

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 5858
    invoke-virtual {v1, v7}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b00ec

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 5859
    invoke-virtual {v1, v6}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b00ea

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 5862
    invoke-static {p0}, Lcom/htc/android/mail/Mail;->isSmallerFooterFontSize(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5863
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 5864
    .local v0, fontSize:I
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextSize(IF)V

    .line 5865
    invoke-virtual {v1, v7}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextSize(IF)V

    .line 5866
    invoke-virtual {v1, v6}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextSize(IF)V

    .line 5934
    .end local v0           #fontSize:I
    :cond_1
    :goto_0
    return-void

    .line 5869
    :cond_2
    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    if-eqz v3, :cond_4

    .line 5870
    const v3, 0x7f09014b

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .end local v1           #footerBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;
    check-cast v1, Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    .line 5873
    .restart local v1       #footerBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mOnClickMeetingAccept:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5874
    invoke-virtual {v1, v7}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mOnClickMeetingDecline:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5875
    invoke-virtual {v1, v6}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mOnClickMeetingTentative:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5876
    invoke-virtual {v1, v8}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mOnClickMeetingProposeTime:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5878
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b00f1

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 5879
    invoke-virtual {v1, v7}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b00e6

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 5881
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_3

    .line 5882
    invoke-virtual {v1, v6}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b00e8

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 5887
    :goto_1
    invoke-virtual {v1, v8}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b00e9

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 5890
    invoke-static {p0}, Lcom/htc/android/mail/Mail;->isSmallerFooterFontSize(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5891
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 5892
    .restart local v0       #fontSize:I
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextSize(IF)V

    .line 5893
    invoke-virtual {v1, v7}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextSize(IF)V

    .line 5894
    invoke-virtual {v1, v6}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextSize(IF)V

    .line 5895
    invoke-virtual {v1, v8}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextSize(IF)V

    goto/16 :goto_0

    .line 5885
    .end local v0           #fontSize:I
    :cond_3
    invoke-virtual {v1, v6}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b00e7

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    goto :goto_1

    .line 5898
    :cond_4
    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mIsCancelMeetingView:Z

    if-eqz v3, :cond_5

    .line 5899
    const v3, 0x7f09014a

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .end local v1           #footerBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;
    check-cast v1, Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    .line 5902
    .restart local v1       #footerBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b0329

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 5903
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->removeMeetingFromCalendarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5906
    invoke-static {p0}, Lcom/htc/android/mail/Mail;->isSmallerFooterFontSize(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5907
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 5908
    .restart local v0       #fontSize:I
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextSize(IF)V

    goto/16 :goto_0

    .line 5912
    .end local v0           #fontSize:I
    :cond_5
    const v3, 0x7f09014b

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .end local v1           #footerBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;
    check-cast v1, Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    .line 5915
    .restart local v1       #footerBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;
    invoke-virtual {v1, v8}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->deleteEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5916
    invoke-virtual {v1, v8}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b0151

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 5917
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->replyEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5918
    invoke-virtual {v1, v7}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->replyAllEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5919
    invoke-virtual {v1, v6}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->forwardEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5921
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b00eb

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 5922
    invoke-virtual {v1, v7}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b00ec

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 5923
    invoke-virtual {v1, v6}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b00ea

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 5926
    invoke-static {p0}, Lcom/htc/android/mail/Mail;->isSmallerFooterFontSize(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5927
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 5928
    .restart local v0       #fontSize:I
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextSize(IF)V

    .line 5929
    invoke-virtual {v1, v7}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextSize(IF)V

    .line 5930
    invoke-virtual {v1, v6}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextSize(IF)V

    .line 5931
    invoke-virtual {v1, v8}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextSize(IF)V

    goto/16 :goto_0
.end method

.method private setInfoToAttachView(Landroid/view/View;Lcom/htc/android/mail/Attachment;)V
    .locals 12
    .parameter "attView"
    .parameter "attach"

    .prologue
    const/4 v11, 0x0

    .line 6441
    const v9, 0x7f090010

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 6442
    .local v6, filenameTextView:Landroid/widget/TextView;
    const v9, 0x7f090014

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 6443
    .local v7, filesizeTextView:Landroid/widget/TextView;
    const v9, 0x7f090011

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6445
    .local v2, attachSubnameView:Landroid/widget/TextView;
    iget-object v5, p2, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 6446
    .local v5, fileName:Ljava/lang/String;
    iget-wide v3, p2, Lcom/htc/android/mail/Attachment;->dispSize:J

    .line 6448
    .local v3, dispSize:J
    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 6449
    .local v8, index:I
    if-ltz v8, :cond_2

    .line 6450
    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6451
    .local v0, attachMainName:Ljava/lang/String;
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6452
    .local v1, attachSubName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x8

    if-le v9, v10, :cond_0

    .line 6453
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x5

    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6454
    :cond_0
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6455
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6456
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "attachMainName>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6460
    .end local v0           #attachMainName:Ljava/lang/String;
    .end local v1           #attachSubName:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    invoke-static {v9, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6461
    return-void

    .line 6458
    :cond_2
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMailRead()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 5250
    iget-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-eqz v1, :cond_1

    .line 5265
    :cond_0
    :goto_0
    return-void

    .line 5253
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mFromMimeViewer:Z

    if-nez v1, :cond_0

    .line 5256
    iget v1, p0, Lcom/htc/android/mail/ReadScreen;->_read:I

    if-nez v1, :cond_0

    .line 5257
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ReadScreen"

    const-string v2, "setMailRead>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5258
    :cond_2
    iput v8, p0, Lcom/htc/android/mail/ReadScreen;->_read:I

    .line 5260
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    .line 5261
    .local v0, selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    iget-wide v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mGroup:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    .line 5262
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v0, p0, v1, v8}, Lcom/htc/android/mail/util/SelectedMailMessages;->setReadStatus(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;Z)V

    goto :goto_0
.end method

.method private setMediaMountedReceiver()V
    .locals 2

    .prologue
    .line 3654
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3657
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3658
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3659
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3660
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3661
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3662
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3663
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3664
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3665
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mMailBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/mail/ReadScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3666
    return-void
.end method

.method private setTagListView()V
    .locals 6

    .prologue
    const v4, 0x7f090146

    const/4 v5, 0x0

    .line 845
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v3, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3, p0}, Lcom/htc/android/mail/Account;->supportHuxTag(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 850
    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-nez v3, :cond_2

    .line 851
    const v3, 0x7f090145

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 852
    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagListMain:Landroid/widget/LinearLayout;

    .line 853
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagListMain:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 855
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagListMain:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 856
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 858
    .local v2, para:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 861
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 862
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 863
    .local v1, mailTagLabel:Landroid/widget/TextView;
    const v3, 0x7f0b032d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 864
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    const/high16 v4, 0x7f0d

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 866
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 867
    new-instance v3, Lcom/htc/android/mail/ReadScreen$TagListInfo;

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mTagListMain:Landroid/widget/LinearLayout;

    invoke-direct {v3, v4, v1}, Lcom/htc/android/mail/ReadScreen$TagListInfo;-><init>(Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagRecipientInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    .line 868
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/htc/android/mail/ReadScreen;->bringStarredTagToFirst(Ljava/util/ArrayList;)V

    .line 869
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagRecipientInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mTagList:Ljava/util/ArrayList;

    iput-object v4, v3, Lcom/htc/android/mail/ReadScreen$TagListInfo;->mTagList:Ljava/util/ArrayList;

    .line 870
    new-instance v3, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;-><init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$1;)V

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    .line 871
    new-instance v0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagRecipientInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    invoke-direct {v0, v3}, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;-><init>(Lcom/htc/android/mail/ReadScreen$TagListInfo;)V

    .line 872
    .local v0, detailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mTagRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private setToCcButton()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x7f0d

    const/16 v9, 0x11

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1436
    sget-boolean v4, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ReadScreen"

    const-string v5, "setToCcButton()"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mToListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1439
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mCcListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1441
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1443
    .local v3, para:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1445
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientList:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1446
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1447
    .local v2, mailToLabel:Landroid/widget/TextView;
    const v4, 0x7f0b0160

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1448
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1449
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1450
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1452
    new-instance v4, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientList:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mToListViewLayout:Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v6, v2}, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;-><init>(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    .line 1453
    new-instance v0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    invoke-direct {v0, v4}, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;-><init>(Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V

    .line 1454
    .local v0, aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;
    new-instance v4, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    invoke-direct {v4, p0, v11}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;-><init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$1;)V

    iput-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    .line 1455
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    new-array v5, v8, [Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    aput-object v0, v5, v7

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1458
    .end local v0           #aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;
    .end local v2           #mailToLabel:Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientList:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1460
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1461
    .local v1, mailCcLabel:Landroid/widget/TextView;
    const v4, 0x7f0b0161

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1462
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1463
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1464
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1466
    new-instance v4, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientList:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mCcListViewLayout:Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v6, v1}, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;-><init>(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    .line 1467
    new-instance v0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    invoke-direct {v0, v4}, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;-><init>(Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V

    .line 1469
    .restart local v0       #aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;
    new-instance v4, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    invoke-direct {v4, p0, v11}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;-><init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$1;)V

    iput-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    .line 1470
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    new-array v5, v8, [Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    aput-object v0, v5, v7

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1472
    .end local v0           #aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;
    .end local v1           #mailCcLabel:Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private setZoomStatus(D)V
    .locals 4
    .parameter "futureScale"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7163
    sget-object v0, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    if-nez v0, :cond_0

    .line 7176
    :goto_0
    return-void

    .line 7166
    :cond_0
    const-wide/high16 v0, 0x4008

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 7167
    sget-object v0, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/ZoomControl;->setIsZoomInEnabled(Z)V

    .line 7168
    sget-object v0, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/ZoomControl;->setIsZoomOutEnabled(Z)V

    goto :goto_0

    .line 7169
    :cond_1
    const-wide/high16 v0, 0x3fd0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_2

    .line 7170
    sget-object v0, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/ZoomControl;->setIsZoomInEnabled(Z)V

    .line 7171
    sget-object v0, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/ZoomControl;->setIsZoomOutEnabled(Z)V

    goto :goto_0

    .line 7173
    :cond_2
    sget-object v0, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/ZoomControl;->setIsZoomInEnabled(Z)V

    .line 7174
    sget-object v0, Lcom/htc/android/mail/ReadScreen;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/ZoomControl;->setIsZoomOutEnabled(Z)V

    goto :goto_0
.end method

.method private showAttachList(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    const v3, 0x7f090053

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 4158
    if-eqz p1, :cond_2

    .line 4159
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4165
    :goto_0
    const/4 v2, -0x1

    .line 4166
    .local v2, lastIndex:I
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 4167
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 4169
    :cond_0
    sget-boolean v3, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ReadScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showAttachList: lastIndex> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4170
    :cond_1
    if-gez v2, :cond_3

    .line 4191
    :goto_1
    return-void

    .line 4161
    .end local v2           #lastIndex:I
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4174
    .restart local v2       #lastIndex:I
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4175
    .local v1, lastAttView:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4176
    .local v0, firstAttView:Landroid/view/View;
    if-eqz p1, :cond_5

    .line 4179
    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mEmptyHtml:Z

    if-eqz v3, :cond_4

    .line 4180
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAttachBottomDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4185
    :goto_2
    const v3, 0x7f090016

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4186
    const v3, 0x7f090017

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 4182
    :cond_4
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAttachBottomDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 4189
    :cond_5
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAttachBottomDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private showAttachment(Ljava/util/ArrayList;)V
    .locals 36
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6734
    .local p1, attachList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 6898
    :goto_0
    return-void

    .line 6736
    :cond_0
    const/16 v16, 0x0

    .line 6737
    .local v16, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    .line 6738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v16

    .line 6739
    :cond_1
    sget-boolean v32, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v32, :cond_2

    const-string v32, "ReadScreen"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "showAttachment>>>>"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6741
    :cond_2
    const/16 v21, 0x0

    .line 6743
    .local v21, i:I
    const/4 v12, 0x0

    .line 6744
    .local v12, attView:Landroid/view/View;
    const/4 v13, 0x0

    .line 6745
    .local v13, attach:Lcom/htc/android/mail/Attachment;
    const/16 v23, 0x0

    .line 6746
    .local v23, isNeedToAdd:Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 6747
    .local v24, iterator:Ljava/util/Iterator;
    sget v31, Lcom/htc/android/mail/ReadScreen;->mNowTokenId:I

    .line 6748
    .local v31, tokenId:I
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1b

    sget v32, Lcom/htc/android/mail/ReadScreen;->mNowTokenId:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    .line 6751
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_f

    .line 6752
    const/16 v23, 0x0

    .line 6753
    sget-boolean v32, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v32, :cond_3

    const-string v32, "ReadScreen"

    const-string v33, "showAttachment()> use existed button"

    invoke-static/range {v32 .. v33}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6754
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 6755
    const v32, 0x7f09000e

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #attach:Lcom/htc/android/mail/Attachment;
    check-cast v13, Lcom/htc/android/mail/Attachment;

    .line 6757
    .restart local v13       #attach:Lcom/htc/android/mail/Attachment;
    if-nez v13, :cond_e

    .line 6758
    sget-boolean v32, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v32, :cond_4

    const-string v32, "ReadScreen"

    const-string v33, "check attach null>"

    invoke-static/range {v32 .. v33}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6763
    :cond_4
    :goto_2
    add-int/lit8 v21, v21, 0x1

    .line 6788
    :cond_5
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/android/mail/Attachment;

    .line 6789
    .local v17, curAttach:Lcom/htc/android/mail/Attachment;
    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 6790
    .local v10, _mimetype:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 6791
    .local v5, _filename:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 6792
    .local v6, _filepath:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-wide v7, v0, Lcom/htc/android/mail/Attachment;->attachSize:J

    .line 6793
    .local v7, _filesize:J
    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/htc/android/mail/Attachment;->index:Ljava/lang/String;

    .line 6794
    .local v9, _index:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/android/mail/Attachment;->encode:Ljava/lang/String;

    .line 6795
    .local v3, _encode:Ljava/lang/String;
    const/4 v4, 0x0

    .line 6796
    .local v4, _fileReference:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v32

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    .line 6797
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    .line 6802
    :cond_6
    :goto_4
    move-wide/from16 v18, v7

    .line 6804
    .local v18, dispSize:J
    const/16 v22, 0x0

    .line 6805
    .local v22, isExist:Z
    const/4 v15, 0x0

    .line 6807
    .local v15, canBeRead:Z
    if-nez v6, :cond_12

    .line 6808
    sget-boolean v32, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v32, :cond_7

    const-string v32, "ReadScreen"

    const-string v33, "filepath is null"

    invoke-static/range {v32 .. v33}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6816
    :cond_7
    :goto_5
    if-eqz v6, :cond_a

    .line 6817
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6818
    .local v20, file:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v22

    .line 6819
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->canRead()Z

    move-result v15

    .line 6822
    const-wide/16 v28, 0x0

    .line 6823
    .local v28, nEncryptFileSize:J
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v26

    .line 6825
    .local v26, nDecryptFileSize:J
    move-wide/from16 v28, v7

    .line 6827
    const-wide/16 v32, 0x0

    cmp-long v32, v26, v32

    if-nez v32, :cond_13

    const-wide/16 v32, 0x0

    cmp-long v32, v28, v32

    if-lez v32, :cond_13

    .line 6828
    sget-boolean v32, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v32, :cond_8

    const-string v32, "ReadScreen"

    const-string v33, "fix file length 0 issue"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6835
    :cond_8
    :goto_6
    if-eqz v22, :cond_9

    if-nez v15, :cond_9

    .line 6836
    sget-boolean v32, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v32, :cond_9

    const-string v32, "ReadScreen"

    const-string v33, "unbelievable"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6839
    :cond_9
    if-eqz v22, :cond_a

    .line 6840
    move-wide/from16 v18, v26

    .line 6844
    .end local v20           #file:Ljava/io/File;
    .end local v26           #nDecryptFileSize:J
    .end local v28           #nEncryptFileSize:J
    :cond_a
    if-eqz v6, :cond_15

    if-eqz v22, :cond_15

    if-eqz v15, :cond_15

    .line 6845
    sget-object v32, Lcom/htc/android/mail/Attachment$States;->downloaded:Lcom/htc/android/mail/Attachment$States;

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    .line 6846
    const/16 v32, 0x0

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    .line 6856
    :goto_7
    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v32

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    sget-object v32, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v32, :cond_b

    .line 6858
    :try_start_0
    sget-object v32, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v33

    move-object/from16 v0, v32

    move-wide/from16 v1, v33

    invoke-interface {v0, v1, v2, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isAttachDownloading(JLjava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 6859
    sget-object v32, Lcom/htc/android/mail/Attachment$States;->downloading:Lcom/htc/android/mail/Attachment$States;

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6868
    :cond_b
    :goto_8
    iput-object v6, v13, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 6869
    iput-object v5, v13, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 6870
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 6871
    iput-object v9, v13, Lcom/htc/android/mail/Attachment;->index:Ljava/lang/String;

    .line 6872
    iput-object v3, v13, Lcom/htc/android/mail/Attachment;->encode:Ljava/lang/String;

    .line 6873
    iput-wide v7, v13, Lcom/htc/android/mail/Attachment;->attachSize:J

    .line 6874
    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/htc/android/mail/Attachment;->dispSize:J

    .line 6875
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/android/mail/Attachment;->id:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v13, Lcom/htc/android/mail/Attachment;->id:J

    .line 6876
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->localMail:I

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v13, Lcom/htc/android/mail/Attachment;->localMail:I

    .line 6878
    sget-boolean v32, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v32, :cond_c

    const-string v32, "ReadScreen"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "############## id = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-wide v0, v13, Lcom/htc/android/mail/Attachment;->id:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6880
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v32

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    .line 6881
    iput-object v4, v13, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    .line 6882
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/htc/android/mail/Attachment;->globalAttach:Z

    move/from16 v32, v0

    move/from16 v0, v32

    iput-boolean v0, v13, Lcom/htc/android/mail/Attachment;->globalAttach:Z

    .line 6887
    :cond_d
    :goto_9
    iget-object v0, v13, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6889
    if-eqz v23, :cond_1a

    .line 6890
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/android/mail/ReadScreen;->setInfoToAttachView(Landroid/view/View;Lcom/htc/android/mail/Attachment;)V

    .line 6891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/Message;->sendToTarget()V

    .line 6892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x3

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 6760
    .end local v3           #_encode:Ljava/lang/String;
    .end local v4           #_fileReference:Ljava/lang/String;
    .end local v5           #_filename:Ljava/lang/String;
    .end local v6           #_filepath:Ljava/lang/String;
    .end local v7           #_filesize:J
    .end local v9           #_index:Ljava/lang/String;
    .end local v10           #_mimetype:Ljava/lang/String;
    .end local v15           #canBeRead:Z
    .end local v17           #curAttach:Lcom/htc/android/mail/Attachment;
    .end local v18           #dispSize:J
    .end local v22           #isExist:Z
    :cond_e
    sget-boolean v32, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v32, :cond_4

    const-string v32, "ReadScreen"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "attach.localMail 3>"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget v0, v13, Lcom/htc/android/mail/Attachment;->localMail:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6766
    :cond_f
    const/16 v23, 0x1

    .line 6770
    new-instance v13, Lcom/htc/android/mail/Attachment;

    .end local v13           #attach:Lcom/htc/android/mail/Attachment;
    invoke-direct {v13}, Lcom/htc/android/mail/Attachment;-><init>()V

    .line 6772
    .restart local v13       #attach:Lcom/htc/android/mail/Attachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mPartFactory:Landroid/view/LayoutInflater;

    move-object/from16 v32, v0

    const v33, 0x7f030005

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v32 .. v35}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    .line 6773
    .local v25, ll1:Landroid/widget/RelativeLayout;
    move-object/from16 v12, v25

    .line 6776
    const v32, 0x7f09000f

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/widget/QuickContactBadge;

    .line 6777
    .local v11, attBtn:Lcom/htc/widget/QuickContactBadge;
    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Lcom/htc/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6778
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v11, v0}, Lcom/htc/widget/QuickContactBadge;->setClickable(Z)V

    .line 6780
    const v32, 0x7f09000e

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 6781
    .local v14, attachLayoutView:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "list_selector_background"

    const v35, 0x7f020068

    invoke-static/range {v33 .. v35}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6784
    iput-object v14, v13, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    .line 6786
    sget-boolean v32, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v32, :cond_5

    const-string v32, "ReadScreen"

    const-string v33, "container added view in showAttachment()"

    invoke-static/range {v32 .. v33}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 6798
    .end local v11           #attBtn:Lcom/htc/widget/QuickContactBadge;
    .end local v14           #attachLayoutView:Landroid/widget/LinearLayout;
    .end local v25           #ll1:Landroid/widget/RelativeLayout;
    .restart local v3       #_encode:Ljava/lang/String;
    .restart local v4       #_fileReference:Ljava/lang/String;
    .restart local v5       #_filename:Ljava/lang/String;
    .restart local v6       #_filepath:Ljava/lang/String;
    .restart local v7       #_filesize:J
    .restart local v9       #_index:Ljava/lang/String;
    .restart local v10       #_mimetype:Ljava/lang/String;
    .restart local v17       #curAttach:Lcom/htc/android/mail/Attachment;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v32

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v32

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    .line 6799
    :cond_11
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    goto/16 :goto_4

    .line 6811
    .restart local v15       #canBeRead:Z
    .restart local v18       #dispSize:J
    .restart local v22       #isExist:Z
    :cond_12
    sget-boolean v32, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v32, :cond_7

    const-string v32, "ReadScreen"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "filepath:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 6830
    .restart local v20       #file:Ljava/io/File;
    .restart local v26       #nDecryptFileSize:J
    .restart local v28       #nEncryptFileSize:J
    :cond_13
    cmp-long v32, v28, v26

    if-eqz v32, :cond_8

    .line 6831
    sget-boolean v32, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v32, :cond_14

    const-string v32, "ReadScreen"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "not match"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6832
    :cond_14
    if-eqz v22, :cond_8

    move-wide/from16 v7, v26

    goto/16 :goto_6

    .line 6847
    .end local v20           #file:Ljava/io/File;
    .end local v26           #nDecryptFileSize:J
    .end local v28           #nEncryptFileSize:J
    :cond_15
    if-eqz v6, :cond_16

    if-nez v22, :cond_16

    .line 6848
    sget-object v32, Lcom/htc/android/mail/Attachment$States;->missing:Lcom/htc/android/mail/Attachment$States;

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    goto/16 :goto_7

    .line 6849
    :cond_16
    iget-object v0, v13, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    move-object/from16 v32, v0

    if-eqz v32, :cond_17

    .line 6850
    sget-object v32, Lcom/htc/android/mail/Attachment$States;->downloading:Lcom/htc/android/mail/Attachment$States;

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    goto/16 :goto_7

    .line 6852
    :cond_17
    sget-object v32, Lcom/htc/android/mail/Attachment$States;->unDownloaded:Lcom/htc/android/mail/Attachment$States;

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    goto/16 :goto_7

    .line 6861
    :catch_0
    move-exception v30

    .line 6862
    .local v30, re:Landroid/os/RemoteException;
    const-string v32, "ReadScreen"

    const-string v33, "Remote Exception!"

    invoke-static/range {v32 .. v33}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6863
    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_8

    .line 6883
    .end local v30           #re:Landroid/os/RemoteException;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v32

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v32

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    .line 6884
    :cond_19
    iget-object v0, v13, Lcom/htc/android/mail/Attachment;->index:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    goto/16 :goto_9

    .line 6894
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 6897
    .end local v3           #_encode:Ljava/lang/String;
    .end local v4           #_fileReference:Ljava/lang/String;
    .end local v5           #_filename:Ljava/lang/String;
    .end local v6           #_filepath:Ljava/lang/String;
    .end local v7           #_filesize:J
    .end local v9           #_index:Ljava/lang/String;
    .end local v10           #_mimetype:Ljava/lang/String;
    .end local v15           #canBeRead:Z
    .end local v17           #curAttach:Lcom/htc/android/mail/Attachment;
    .end local v18           #dispSize:J
    .end local v22           #isExist:Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0xb

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method private showAttachmentSwitch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6690
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ReadScreen"

    const-string v3, "showAttachmentSwitch>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6691
    :cond_0
    const/4 v1, 0x0

    .line 6692
    .local v1, count:I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "count(_id) as _total"

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->GetNotHtmlCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6693
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 6694
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6695
    const-string v2, "_total"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 6697
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6700
    :cond_2
    if-lez v1, :cond_3

    .line 6701
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 6703
    :cond_3
    return-void
.end method

.method private showDownloadHtmlImageButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4213
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ReadScreen"

    const-string v3, "showDownloadHtmlImageButton> "

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4214
    :cond_0
    const v2, 0x7f09015b

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 4215
    .local v1, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4216
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4217
    const v2, 0x7f09015c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4218
    .local v0, downImgBtn:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 4219
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->downloadHtmlImageActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4221
    .end local v0           #downImgBtn:Landroid/widget/Button;
    :cond_1
    return-void
.end method

.method private showHeader()I
    .locals 28

    .prologue
    .line 6240
    const/16 v24, 0x1

    .line 6241
    .local v24, priority:I
    const/16 v19, -0x1

    .line 6243
    .local v19, isFetchDone:I
    const/4 v15, 0x0

    .line 6245
    .local v15, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    sget-object v4, Lcom/htc/android/mail/ReadScreen;->sProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 6246
    if-eqz v15, :cond_12

    .line 6247
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 6248
    const-string v2, "_account"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 6249
    .local v10, accountId:J
    const-string v2, "_mailboxId"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 6250
    .local v21, mailboxId:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/mail/ReadScreen;->mFromMimeViewer:Z

    if-nez v2, :cond_0

    .line 6252
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    .line 6254
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-static {v2, v3}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    .line 6255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 6256
    :cond_1
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6257
    :cond_2
    const/4 v2, -0x1

    .line 6412
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6413
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 6414
    :goto_0
    const/4 v15, 0x0

    .line 6418
    .end local v10           #accountId:J
    .end local v21           #mailboxId:J
    :cond_3
    :goto_1
    return v2

    .line 6259
    .restart local v10       #accountId:J
    .restart local v21       #mailboxId:J
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/mail/ReadScreen;->mFromMimeViewer:Z

    if-nez v2, :cond_6

    .line 6260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    move-wide/from16 v0, v21

    invoke-virtual {v2, v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 6261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v2, :cond_6

    .line 6262
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "ReadScreen"

    const-string v3, "mailbox null"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6263
    :cond_5
    const/4 v2, -0x1

    .line 6412
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6413
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 6267
    :cond_6
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_16

    .line 6268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->isExchange()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6269
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/server/ExchangeServer;->setBindService(Landroid/content/Context;)V

    .line 6272
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 6273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController;->addWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 6274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/AbsRequestController;->registerWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 6276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mMailCommon:Lcom/htc/android/mail/MailCommon;

    if-nez v2, :cond_14

    .line 6277
    new-instance v2, Lcom/htc/android/mail/MailCommon;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/htc/android/mail/MailCommon;-><init>(Landroid/content/Context;JJLjava/lang/ref/WeakReference;Lcom/htc/android/mail/AbsRequestController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mMailCommon:Lcom/htc/android/mail/MailCommon;

    .line 6283
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mMailCommon:Lcom/htc/android/mail/MailCommon;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailCommon;->setAttachViewGroup(Landroid/view/ViewGroup;)V

    .line 6284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mMailCommon:Lcom/htc/android/mail/MailCommon;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailCommon;->setIsFromSearchSvrView(Z)V

    .line 6290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 6292
    const-string v2, "_read"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/ReadScreen;->_read:I

    .line 6293
    const-string v2, "_uid"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mUid:Ljava/lang/String;

    .line 6294
    const-string v2, "_readtotalsize"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/ReadScreen;->mTotalSize:I

    .line 6295
    const-string v2, "_subjtype"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSubjType:Ljava/lang/String;

    .line 6296
    const-string v2, "_subject"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSubject:Ljava/lang/String;

    .line 6297
    const-string v2, "_group"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->long_press_groupId:Ljava/lang/String;

    .line 6298
    const-string v2, "_from"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mFrom:Ljava/lang/String;

    .line 6299
    const-string v2, "_fromEmail"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mAddr:Ljava/lang/String;

    .line 6300
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFrom>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen;->mFrom:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen;->mAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6302
    :cond_8
    const-string v2, "_local"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/ReadScreen;->localMail:I

    .line 6303
    const-string v2, "_importance"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 6304
    const-string v2, "_flags"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/ReadScreen;->mFlags:I

    .line 6305
    const-string v2, "_date"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/mail/ReadScreen;->mArriveMillis:J

    .line 6306
    const-string v2, "_to"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 6307
    .local v27, toAddr:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen;->mToRecipientList:Ljava/lang/String;

    .line 6308
    const-string v2, "_cc"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 6309
    .local v16, ccText:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen;->mCcRecipientList:Ljava/lang/String;

    .line 6310
    const-string v2, "_done"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 6311
    const-string v2, "_group"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mGroup:Ljava/lang/String;

    .line 6312
    const-string v2, "_messageClassInt"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 6314
    .local v23, msgClassInt:I
    const-string v2, "_charset"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSuggestCharset:Ljava/lang/String;

    .line 6317
    const-string v2, "_startTime"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 6318
    .local v25, startTime:Ljava/lang/String;
    const-string v2, "_endTime"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 6320
    .local v17, endTime:Ljava/lang/String;
    const/4 v13, 0x0

    .line 6321
    .local v13, bConflict:Z
    const/4 v2, 0x6

    move/from16 v0, v23

    if-ne v0, v2, :cond_9

    .line 6322
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ReadScreen;->mSubject:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1, v3}, Lcom/htc/android/mail/CheckCalendar;->isConflict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 6325
    :cond_9
    const-string v2, "_location"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 6326
    .local v20, location:Ljava/lang/String;
    const-string v2, "_allDayEvent"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 6327
    .local v12, allDay:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "1"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6330
    :cond_a
    new-instance v2, Lcom/htc/android/mail/ReadScreen$MeetingDetail;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/htc/android/mail/ReadScreen$MeetingDetail;-><init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mMeetingDetail:Lcom/htc/android/mail/ReadScreen$MeetingDetail;

    .line 6331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mMeetingDetail:Lcom/htc/android/mail/ReadScreen$MeetingDetail;

    move-object/from16 v0, v25

    iput-object v0, v2, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->start:Ljava/lang/String;

    .line 6332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mMeetingDetail:Lcom/htc/android/mail/ReadScreen$MeetingDetail;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->end:Ljava/lang/String;

    .line 6333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mMeetingDetail:Lcom/htc/android/mail/ReadScreen$MeetingDetail;

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->location:Ljava/lang/String;

    .line 6334
    const-string v2, "1"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mMeetingDetail:Lcom/htc/android/mail/ReadScreen$MeetingDetail;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->allDay:Z

    .line 6339
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSubject:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6340
    :cond_c
    const v2, 0x7f0b0203

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSubject:Ljava/lang/String;

    .line 6343
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ReadScreen;->mSubjType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ReadScreen;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 6344
    .local v26, subject:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen;->mComboSubject:Ljava/lang/String;

    .line 6346
    new-instance v18, Lcom/htc/android/mail/ReadScreen$MailHeader;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/ReadScreen$MailHeader;-><init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$1;)V

    .line 6348
    .local v18, header:Lcom/htc/android/mail/ReadScreen$MailHeader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mAddr:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 6349
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mAddr:Ljava/lang/String;

    .line 6351
    :cond_e
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen$MailHeader;->subject:Ljava/lang/String;

    .line 6352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mFrom:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen$MailHeader;->from:Ljava/lang/String;

    .line 6353
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/mail/ReadScreen;->mArriveMillis:J

    move-object/from16 v0, v18

    iput-wide v2, v0, Lcom/htc/android/mail/ReadScreen$MailHeader;->date:J

    .line 6354
    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/android/mail/ReadScreen$MailHeader;->priority:I

    .line 6355
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/ReadScreen;->mFlags:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/android/mail/ReadScreen$MailHeader;->flags:I

    .line 6356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mAddr:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen$MailHeader;->addr:Ljava/lang/String;

    .line 6360
    move-object/from16 v0, v18

    iput-boolean v13, v0, Lcom/htc/android/mail/ReadScreen$MailHeader;->meetingConflict:Z

    .line 6365
    new-instance v2, Lcom/htc/android/mail/ReceiverList;

    invoke-direct {v2}, Lcom/htc/android/mail/ReceiverList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    .line 6366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/htc/android/mail/ReceiverList;->methodId:J

    .line 6367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mFrom:Ljava/lang/String;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mFrom:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_18

    .line 6368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/htc/android/mail/ReceiverList;->haveDisplayName:Z

    .line 6369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ReadScreen;->mAddr:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    .line 6370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mAddr:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/android/mail/ReadScreen$MailHeader;->from:Ljava/lang/String;

    .line 6375
    :goto_3
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_f

    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSenderRecpt>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-object v4, v4, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-boolean v4, v4, Lcom/htc/android/mail/ReceiverList;->haveDisplayName:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6376
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ReadScreen;->mAddr:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    .line 6377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 6379
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_10

    .line 6380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 6384
    :cond_10
    const v2, 0x7f090141

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/android/mail/widget/HtcPhotoButton;

    .line 6385
    .local v14, btn:Lcom/htc/android/mail/widget/HtcPhotoButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    invoke-virtual {v14, v2}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setTag(Ljava/lang/Object;)V

    .line 6386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->onClickAddContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v2}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 6394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 6395
    const/4 v2, 0x6

    move/from16 v0, v23

    if-ne v0, v2, :cond_19

    .line 6396
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    .line 6404
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 6406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/Account;->supportHuxTag(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 6407
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/ReadScreen;->loadTag()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6412
    .end local v10           #accountId:J
    .end local v12           #allDay:Ljava/lang/String;
    .end local v13           #bConflict:Z
    .end local v14           #btn:Lcom/htc/android/mail/widget/HtcPhotoButton;
    .end local v16           #ccText:Ljava/lang/String;
    .end local v17           #endTime:Ljava/lang/String;
    .end local v18           #header:Lcom/htc/android/mail/ReadScreen$MailHeader;
    .end local v20           #location:Ljava/lang/String;
    .end local v21           #mailboxId:J
    .end local v23           #msgClassInt:I
    .end local v25           #startTime:Ljava/lang/String;
    .end local v26           #subject:Ljava/lang/String;
    .end local v27           #toAddr:Ljava/lang/String;
    :cond_12
    if-eqz v15, :cond_13

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_13

    .line 6413
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 6414
    const/4 v15, 0x0

    :cond_13
    move/from16 v2, v19

    .line 6418
    goto/16 :goto_1

    .line 6280
    .restart local v10       #accountId:J
    .restart local v21       #mailboxId:J
    :cond_14
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mMailCommon:Lcom/htc/android/mail/MailCommon;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lcom/htc/android/mail/MailCommon;->setMailCommon(Landroid/content/Context;JJLjava/lang/ref/WeakReference;Lcom/htc/android/mail/AbsRequestController;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 6412
    .end local v10           #accountId:J
    .end local v21           #mailboxId:J
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_15

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_15

    .line 6413
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 6414
    const/4 v15, 0x0

    .line 6412
    :cond_15
    throw v2

    .line 6286
    .restart local v10       #accountId:J
    .restart local v21       #mailboxId:J
    :cond_16
    :try_start_4
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_17

    const-string v2, "ReadScreen"

    const-string v3, "finishing"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6287
    :cond_17
    const/4 v2, -0x1

    .line 6412
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6413
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 6372
    .restart local v12       #allDay:Ljava/lang/String;
    .restart local v13       #bConflict:Z
    .restart local v16       #ccText:Ljava/lang/String;
    .restart local v17       #endTime:Ljava/lang/String;
    .restart local v18       #header:Lcom/htc/android/mail/ReadScreen$MailHeader;
    .restart local v20       #location:Ljava/lang/String;
    .restart local v23       #msgClassInt:I
    .restart local v25       #startTime:Ljava/lang/String;
    .restart local v26       #subject:Ljava/lang/String;
    .restart local v27       #toAddr:Ljava/lang/String;
    :cond_18
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ReadScreen;->mFrom:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    .line 6373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/mail/ReceiverList;->haveDisplayName:Z

    goto/16 :goto_3

    .line 6397
    .restart local v14       #btn:Lcom/htc/android/mail/widget/HtcPhotoButton;
    :cond_19
    const/4 v2, 0x7

    move/from16 v0, v23

    if-ne v0, v2, :cond_1a

    .line 6398
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/ReadScreen;->mIsCancelMeetingView:Z

    .line 6399
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    goto/16 :goto_4

    .line 6401
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4
.end method

.method private showHtmlBody(Landroid/database/Cursor;Ljava/util/ArrayList;I)V
    .locals 22
    .parameter "cursor"
    .parameter
    .parameter "notFechedRelatedInfoCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/RelatedInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3927
    .local p2, relatedinfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/RelatedInfo;>;"
    sget-boolean v18, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v18, :cond_0

    const-string v18, "ReadScreen"

    const-string v19, "Enter showHtmlBody with relatedinfo"

    invoke-static/range {v18 .. v19}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3931
    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 3932
    const-string v18, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/ReadScreen;->mBodyPartID:J

    .line 3933
    const-string v18, "_index"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen;->mBodyIndex:Ljava/lang/String;

    .line 3934
    const-string v18, "_encode"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen;->mBodyEncode:Ljava/lang/String;

    .line 3935
    const-string v18, "_charset"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen;->mBodyCharset:Ljava/lang/String;

    .line 3942
    const-string v18, "_text"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3943
    .local v8, htmlContent:Ljava/lang/String;
    sget-boolean v18, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v18, :cond_1

    const-string v18, "ReadScreen"

    const-string v19, "showHtmlBody POP3 content is here"

    invoke-static/range {v18 .. v19}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3946
    :cond_1
    if-nez v8, :cond_2

    .line 3947
    const-string v8, ""

    .line 3975
    :cond_2
    const/4 v7, 0x0

    .line 3977
    .local v7, easOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    if-eqz v8, :cond_4

    .line 3978
    sget-object v18, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-nez v18, :cond_a

    .line 3979
    sget-boolean v18, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v18, :cond_3

    const-string v18, "ReadScreen"

    const-string v19, "mEASSvc is null"

    invoke-static/range {v18 .. v19}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3980
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/server/ExchangeServer;->setBindService(Landroid/content/Context;)V

    .line 3990
    :cond_4
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_13

    .line 3991
    if-eqz v7, :cond_5

    iget v0, v7, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    move/from16 v18, v0

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 3993
    :cond_5
    if-lez p3, :cond_b

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/ReadScreen;->mWaitForFetchRelatedInfos:Z

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/ReadScreen;->mShowDownloadHtmlImageButton:Z

    .line 3995
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/ReadScreen;->mShowHtmlImage:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 3997
    invoke-static {}, Lcom/htc/android/mail/Mail;->isDefaultLoadImageLink()Z

    move-result v18

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/ReadScreen;->mShowDownloadHtmlImageButton:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 3998
    invoke-static {v8}, Lcom/htc/android/mail/util/ParseMachine;->isImgLinkExistInHtml(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/ReadScreen;->mShowDownloadHtmlImageButton:Z

    .line 4002
    :cond_6
    invoke-static {}, Lcom/htc/android/mail/Mail;->isDefaultLoadImageLink()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 4003
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/ReadScreen;->mShowHtmlImage:Z

    .line 4007
    :cond_7
    if-eqz p2, :cond_13

    .line 4008
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4009
    .local v10, i:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 4010
    .local v15, rsize:I
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v15, :cond_13

    .line 4011
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v10, v0, :cond_c

    move-object v9, v8

    .line 4057
    .end local v8           #htmlContent:Ljava/lang/String;
    .end local v10           #i:I
    .end local v15           #rsize:I
    .local v9, htmlContent:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;

    move-object/from16 v18, v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v18, :cond_12

    .line 4059
    :try_start_1
    new-instance v8, Ljava/lang/String;

    const-string v18, "ISO8859-1"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4060
    .end local v9           #htmlContent:Ljava/lang/String;
    .restart local v8       #htmlContent:Ljava/lang/String;
    :try_start_2
    sget-boolean v18, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v18, :cond_8

    const-string v18, "ReadScreen"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "showHtmlBody:text_body>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    .line 4068
    :cond_8
    :goto_4
    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/ReadScreen;->mEmptyHtml:Z

    .line 4070
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    .line 4071
    const-string v18, "<br>"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 4072
    .local v16, tmpStr:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_9

    .line 4073
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/ReadScreen;->mEmptyHtml:Z

    .line 4095
    .end local v16           #tmpStr:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    const-wide/16 v20, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4104
    .end local v7           #easOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v8           #htmlContent:Ljava/lang/String;
    :goto_5
    return-void

    .line 3983
    .restart local v7       #easOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .restart local v8       #htmlContent:Ljava/lang/String;
    :cond_a
    :try_start_4
    sget-object v18, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v19

    invoke-interface/range {v18 .. v20}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v7

    goto/16 :goto_0

    .line 3984
    :catch_0
    move-exception v6

    .line 3985
    .local v6, e:Ljava/lang/Exception;
    :try_start_5
    const-string v18, "ReadScreen"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setLoadsImagesAutomaticallyEx exceptione: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 4097
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #easOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v8           #htmlContent:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 4098
    .local v6, e:Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    .line 4099
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_5

    .line 3993
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    .restart local v7       #easOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .restart local v8       #htmlContent:Ljava/lang/String;
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4013
    .restart local v10       #i:I
    .restart local v15       #rsize:I
    :cond_c
    :try_start_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/android/mail/RelatedInfo;

    .line 4014
    .local v17, tmpinfo:Lcom/htc/android/mail/RelatedInfo;
    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/RelatedInfo;->getCid()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_11

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/RelatedInfo;->getFilePath()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_11

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/RelatedInfo;->getPartId()J
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_11

    .line 4016
    :try_start_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cid:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/RelatedInfo;->getCid()Ljava/lang/String;

    move-result-object v19

    const-string v20, "<"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    const-string v20, ">"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4017
    .local v5, cidUrl:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cid:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/RelatedInfo;->getCid()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-static/range {v19 .. v20}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "<"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    const-string v20, ">"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "%40"

    const-string v21, "@"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4019
    .local v4, cidEncodeUrl:Ljava/lang/String;
    move-object v3, v5

    .line 4021
    .local v3, cid:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/RelatedInfo;->getPartId()J

    move-result-wide v13

    .line 4024
    .local v13, partid:J
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 4025
    .local v11, index:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_f

    .line 4026
    sget-boolean v18, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v18, :cond_d

    const-string v18, "ReadScreen"

    const-string v19, "encode cid url"

    invoke-static/range {v18 .. v19}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4027
    :cond_d
    move-object v3, v4

    .line 4028
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 4029
    .local v12, index2:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_f

    .line 4010
    .end local v3           #cid:Ljava/lang/String;
    .end local v4           #cidEncodeUrl:Ljava/lang/String;
    .end local v5           #cidUrl:Ljava/lang/String;
    .end local v11           #index:I
    .end local v12           #index2:I
    .end local v13           #partid:J
    :cond_e
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 4033
    .restart local v3       #cid:Ljava/lang/String;
    .restart local v4       #cidEncodeUrl:Ljava/lang/String;
    .restart local v5       #cidUrl:Ljava/lang/String;
    .restart local v11       #index:I
    .restart local v13       #partid:J
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 4034
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mail/searchSvrParts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 4036
    :cond_10
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mail/parts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v8

    goto :goto_6

    .line 4041
    .end local v3           #cid:Ljava/lang/String;
    .end local v4           #cidEncodeUrl:Ljava/lang/String;
    .end local v5           #cidUrl:Ljava/lang/String;
    .end local v11           #index:I
    .end local v13           #partid:J
    :catch_2
    move-exception v6

    .line 4042
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    :try_start_8
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    .line 4100
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    .end local v7           #easOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v8           #htmlContent:Ljava/lang/String;
    .end local v10           #i:I
    .end local v15           #rsize:I
    .end local v17           #tmpinfo:Lcom/htc/android/mail/RelatedInfo;
    :catch_3
    move-exception v6

    .line 4101
    .local v6, e:Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    .line 4102
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_5

    .line 4045
    .end local v6           #e:Ljava/lang/IllegalStateException;
    .restart local v7       #easOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .restart local v8       #htmlContent:Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v15       #rsize:I
    .restart local v17       #tmpinfo:Lcom/htc/android/mail/RelatedInfo;
    :cond_11
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/RelatedInfo;->getCid()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_e

    .line 4046
    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/RelatedInfo;->getFileName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/RelatedInfo;->getFilePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 4061
    .end local v8           #htmlContent:Ljava/lang/String;
    .end local v10           #i:I
    .end local v15           #rsize:I
    .end local v17           #tmpinfo:Lcom/htc/android/mail/RelatedInfo;
    .restart local v9       #htmlContent:Ljava/lang/String;
    :catch_4
    move-exception v6

    move-object v8, v9

    .line 4062
    .end local v9           #htmlContent:Ljava/lang/String;
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    .restart local v8       #htmlContent:Ljava/lang/String;
    :goto_7
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_4

    .line 4061
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v6

    goto :goto_7

    .end local v8           #htmlContent:Ljava/lang/String;
    .restart local v9       #htmlContent:Ljava/lang/String;
    :cond_12
    move-object v8, v9

    .end local v9           #htmlContent:Ljava/lang/String;
    .restart local v8       #htmlContent:Ljava/lang/String;
    goto/16 :goto_4

    :cond_13
    move-object v9, v8

    .end local v8           #htmlContent:Ljava/lang/String;
    .restart local v9       #htmlContent:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method private showLoadingMail()V
    .locals 6

    .prologue
    const v4, 0x7f0b01fe

    const/4 v1, 0x0

    .line 5575
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mIsDestroyed:Z

    if-eqz v0, :cond_1

    .line 5595
    :cond_0
    :goto_0
    return-void

    .line 5577
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    if-nez v0, :cond_0

    .line 5578
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->createWebView()V

    .line 5585
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 5586
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<div align=\"center\" style=\"color: gray\"> <font size =2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font></div>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/HtcWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5590
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<div align=\"center\" style=\"color: gray\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</div>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/HtcWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showMailBody()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 2423
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ReadScreen;->showMailBody(Z)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method private showMailBody(Z)Ljava/lang/Thread;
    .locals 4
    .parameter "separateThread"

    .prologue
    .line 2427
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ReadScreen"

    const-string v3, "showMailBody>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    :cond_0
    new-instance v0, Lcom/htc/android/mail/ReadScreen$20;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$20;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    .line 2509
    .local v0, runnable:Ljava/lang/Runnable;
    if-eqz p1, :cond_1

    .line 2510
    const/4 v1, 0x0

    .line 2511
    .local v1, showMailbodyThread:Ljava/lang/Thread;
    new-instance v1, Ljava/lang/Thread;

    .end local v1           #showMailbodyThread:Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2512
    .restart local v1       #showMailbodyThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2516
    .end local v1           #showMailbodyThread:Ljava/lang/Thread;
    :goto_0
    return-object v1

    .line 2515
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2516
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showMeetingDetail()V
    .locals 3

    .prologue
    .line 6706
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mMeetingDetail:Lcom/htc/android/mail/ReadScreen$MeetingDetail;

    if-eqz v0, :cond_1

    .line 6707
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v1, "showMeetingDetail"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6708
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mMeetingDetail:Lcom/htc/android/mail/ReadScreen$MeetingDetail;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6710
    :cond_1
    return-void
.end method

.method private showMessageTooLargeToast()V
    .locals 3

    .prologue
    .line 5599
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0137

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5600
    return-void
.end method

.method private showRecipientBlock()V
    .locals 5

    .prologue
    const v4, 0x7f090142

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 893
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->isShowRecipientBlock:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/htc/android/mail/ReadScreen;->isShowRecipientBlock:Z

    .line 894
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->isShowRecipientBlock:Z

    if-eqz v1, :cond_3

    .line 895
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mToListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 897
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientList:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientList:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientList:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mCcListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 900
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->setToCcButton()V

    .line 902
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/Account;->supportHuxTag(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->setTagListView()V

    .line 904
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mTagListMain:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 905
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mTagListMain:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 909
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 910
    .local v0, infoSwitchBtn:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    const-string v3, "common_icon_glance_pulldown_up_rest"

    const v4, 0x208093d

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 927
    :goto_1
    return-void

    .end local v0           #infoSwitchBtn:Landroid/widget/ImageView;
    :cond_2
    move v1, v2

    .line 893
    goto :goto_0

    .line 915
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mToListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 916
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mCcListViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 918
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/Account;->supportHuxTag(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mTagListMain:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 919
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mTagListMain:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 922
    :cond_4
    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 923
    .restart local v0       #infoSwitchBtn:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    const-string v3, "common_icon_glance_pulldown_rest"

    const v4, 0x208093b

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private showTextBody(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    const/16 v13, 0xd

    .line 4107
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "ReadScreen"

    const-string v10, "showTextBody>"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4108
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 4111
    .local v3, t1:J
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 4112
    const-string v9, "_id"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/htc/android/mail/ReadScreen;->mBodyPartID:J

    .line 4113
    const-string v9, "_index"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mBodyIndex:Ljava/lang/String;

    .line 4114
    const-string v9, "_encode"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mBodyEncode:Ljava/lang/String;

    .line 4115
    const-string v9, "_charset"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mBodyCharset:Ljava/lang/String;

    .line 4117
    const-string v9, "_text"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4119
    .local v7, text_body:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v9, :cond_2

    .line 4121
    :try_start_1
    new-instance v8, Ljava/lang/String;

    const-string v9, "ISO8859-1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4122
    .end local v7           #text_body:Ljava/lang/String;
    .local v8, text_body:Ljava/lang/String;
    :try_start_2
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showTextBody:text_body>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move-object v7, v8

    .line 4127
    .end local v8           #text_body:Ljava/lang/String;
    .restart local v7       #text_body:Ljava/lang/String;
    :cond_2
    :goto_0
    if-nez v7, :cond_3

    .line 4128
    :try_start_3
    const-string v7, ""

    .line 4131
    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4132
    .local v0, checkContent:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    .line 4133
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/android/mail/ReadScreen;->mEmptyHtml:Z

    .line 4135
    :cond_5
    const-string v9, "<!-- HTC Mail Separation --><!-- HTC Mail Separation -->"

    const-string v10, "\n\n"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "<!-- HTC Mail Separation -->"

    const-string v11, "\n\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 4136
    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 4139
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->isPrimeEnabled()Z

    move-result v2

    .line 4140
    .local v2, isPrime:Z
    if-nez v2, :cond_6

    invoke-static {v7}, Lcom/htc/android/mail/MailCommon;->fnParseHTMLLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4142
    :cond_6
    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v11, 0x8

    invoke-virtual {v10, v11, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4152
    .end local v0           #checkContent:Ljava/lang/String;
    .end local v2           #isPrime:Z
    .end local v7           #text_body:Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v5, v9, v3

    .line 4153
    .local v5, t2:J
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showTextBody<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4154
    :cond_7
    return-void

    .line 4123
    .end local v5           #t2:J
    .restart local v7       #text_body:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4124
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 4143
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local v7           #text_body:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 4144
    .local v1, e:Ljava/lang/OutOfMemoryError;
    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 4145
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 4146
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 4147
    .local v1, e:Ljava/lang/IllegalStateException;
    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 4148
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 4123
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .restart local v8       #text_body:Ljava/lang/String;
    :catch_3
    move-exception v1

    move-object v7, v8

    .end local v8           #text_body:Ljava/lang/String;
    .restart local v7       #text_body:Ljava/lang/String;
    goto :goto_2
.end method

.method private showUnfinished()V
    .locals 15

    .prologue
    .line 4231
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v1, "showUnfinished>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4232
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 4233
    .local v10, t1:J
    const/4 v6, 0x0

    .line 4235
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4236
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnfinished>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4238
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 4240
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ReadScreen"

    const-string v1, "return count 0"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4270
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4272
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4276
    :cond_4
    :goto_1
    return-void

    .line 4243
    :cond_5
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 4245
    const-string v0, "_readtotalsize"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 4246
    .local v14, total:I
    const-string v0, "_readsize"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 4248
    .local v9, read:I
    if-nez v14, :cond_8

    .line 4250
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "ReadScreen"

    const-string v1, "return total 0"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4270
    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4272
    :cond_7
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 4252
    :cond_8
    sub-int v0, v14, v9

    if-lez v0, :cond_a

    .line 4253
    sub-int v0, v14, v9

    :try_start_2
    div-int/lit16 v8, v0, 0x400

    .line 4254
    .local v8, left:I
    if-nez v8, :cond_9

    .line 4255
    const/4 v8, 0x1

    .line 4256
    :cond_9
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->loadingUnfinished:Z

    if-nez v0, :cond_e

    .line 4257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->loadingUnfinished:Z

    .line 4264
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v8, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4270
    .end local v8           #left:I
    :cond_a
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4272
    :cond_b
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .end local v9           #read:I
    .end local v14           #total:I
    :goto_2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v12, v0, v10

    .line 4275
    .local v12, t2:J
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnfinished<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4267
    .end local v12           #t2:J
    :catch_0
    move-exception v7

    .line 4268
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4270
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4272
    :cond_c
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_2

    .line 4270
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d

    .line 4271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4272
    :cond_d
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4270
    throw v0

    .restart local v8       #left:I
    .restart local v9       #read:I
    .restart local v14       #total:I
    :cond_e
    if-eqz v6, :cond_f

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4272
    :cond_f
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private showUnfinishedUI(I)V
    .locals 4
    .parameter "left"

    .prologue
    .line 4279
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnfinishedUI>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4280
    :cond_0
    const v1, 0x7f09015e

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    .line 4281
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLongClickable(Z)V

    .line 4283
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4285
    .local v0, unfinished:Landroid/widget/Button;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0143

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b02a9

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/ReadScreen;->getUnfinishedText:Ljava/lang/String;

    .line 4286
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->getUnfinishedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4287
    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4288
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->stopGetUnfinishedAnimation()V

    .line 4290
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->getUnfinishedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4295
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->mShowGetUnfinishUI:Z

    .line 4299
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getDownloadMessageWhenScroll()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4301
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    invoke-virtual {v1}, Lcom/htc/android/mail/ReadScreenScrollView;->checkGetRemain()V

    .line 4306
    :cond_2
    return-void
.end method

.method private startDownloadHtmlImageBtnAnimation(Lcom/htc/android/mail/Request;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 4505
    const v4, 0x7f09015b

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 4506
    .local v3, layout:Landroid/widget/RelativeLayout;
    const v4, 0x7f09015d

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4508
    .local v2, img:Landroid/widget/ImageView;
    const v4, 0x7f09015c

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 4510
    .local v1, downImgBtn:Landroid/widget/Button;
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 4511
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4512
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4513
    const v4, 0x7f020004

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4514
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 4515
    .local v0, btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 4516
    return-void
.end method

.method private startGetUnfinishedAnimation(Lcom/htc/android/mail/Request;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 4321
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    .line 4322
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    const v4, 0x7f0900b3

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 4324
    .local v2, unfinished:Landroid/widget/Button;
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    const v4, 0x7f0900b4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4325
    .local v1, img:Landroid/widget/ImageView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4326
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 4327
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4328
    const v3, 0x7f020004

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4329
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 4330
    .local v0, btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 4332
    .end local v0           #btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    .end local v1           #img:Landroid/widget/ImageView;
    .end local v2           #unfinished:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private stopDownloadHtmlImageBtnAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4519
    const v4, 0x7f09015b

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 4520
    .local v3, layout:Landroid/widget/RelativeLayout;
    const v4, 0x7f09015d

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4522
    .local v2, img:Landroid/widget/ImageView;
    const v4, 0x7f09015c

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 4524
    .local v1, downImgBtn:Landroid/widget/Button;
    const v4, 0x7f0b0102

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 4525
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 4526
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 4527
    .local v0, btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 4528
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 4529
    const/4 v0, 0x0

    .line 4531
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4532
    return-void
.end method

.method private stopGetUnfinishedAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4335
    sget-boolean v3, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ReadScreen"

    const-string v4, "stopGetUnfinishedAnimation> "

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4336
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 4337
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    const v4, 0x7f0900b3

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 4339
    .local v2, unfinished:Landroid/widget/Button;
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    const v4, 0x7f0900b4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4340
    .local v1, img:Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 4341
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->getUnfinishedText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4342
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 4343
    .local v0, btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_1

    .line 4344
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 4345
    const/4 v0, 0x0

    .line 4347
    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4348
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4349
    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4350
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 4353
    .end local v0           #btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    .end local v1           #img:Landroid/widget/ImageView;
    .end local v2           #unfinished:Landroid/widget/Button;
    :cond_2
    return-void
.end method

.method private updateAllAttachmentButton(I)V
    .locals 3
    .parameter "successKey"

    .prologue
    .line 6901
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAllAttachmentButton> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6902
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/ReadScreen$45;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/mail/ReadScreen$45;-><init>(Lcom/htc/android/mail/ReadScreen;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6920
    return-void
.end method

.method private updateAttachButton(Lcom/htc/android/mail/Attachment;)V
    .locals 2
    .parameter "attach"

    .prologue
    .line 5651
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mMailCommon:Lcom/htc/android/mail/MailCommon;

    if-eqz v0, :cond_0

    .line 5653
    iget-wide v0, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/android/mail/Attachment;->messageId:Ljava/lang/String;

    .line 5654
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mMailCommon:Lcom/htc/android/mail/MailCommon;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/htc/android/mail/MailCommon;->updateAttachButtonIconAction(Landroid/content/Context;Lcom/htc/android/mail/Attachment;)V

    .line 5656
    :cond_0
    return-void
.end method

.method private updateAttachInfo(Lcom/htc/android/mail/Attachment;)V
    .locals 9
    .parameter "attach"

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 7019
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAttachInfo>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7020
    :cond_0
    const/4 v1, 0x0

    .line 7021
    .local v1, UriDb:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 7022
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-nez v0, :cond_5

    .line 7023
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sEASPartsURI:Landroid/net/Uri;

    .line 7028
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p1, Lcom/htc/android/mail/Attachment;->id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND _message="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND _filename<>\'\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND _contenttype<>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7030
    .local v7, selection:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7031
    .local v6, c:Landroid/database/Cursor;
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachCursor>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7032
    :cond_1
    if-eqz v6, :cond_3

    .line 7033
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7034
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/htc/android/mail/Attachment;->id:J

    .line 7035
    const-string v0, "_mimetype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 7036
    const-string v0, "_filename"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 7037
    const-string v0, "_filepath"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 7038
    const-string v0, "_filesize"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/htc/android/mail/Attachment;->attachSize:J

    .line 7039
    const-string v0, "_index"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/android/mail/Attachment;->index:Ljava/lang/String;

    .line 7040
    const-string v0, "_encode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/android/mail/Attachment;->encode:Ljava/lang/String;

    .line 7041
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    if-ne v0, v8, :cond_7

    .line 7042
    const-string v0, "_filereference"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    .line 7043
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    iput-boolean v0, p1, Lcom/htc/android/mail/Attachment;->globalAttach:Z

    .line 7049
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7051
    :cond_3
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachCursor>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7052
    :cond_4
    return-void

    .line 7025
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #selection:Ljava/lang/StringBuilder;
    :cond_5
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 7027
    :cond_6
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 7044
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #selection:Ljava/lang/StringBuilder;
    :cond_7
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 7045
    :cond_8
    iget-object v0, p1, Lcom/htc/android/mail/Attachment;->index:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateAttachView(Lcom/htc/android/mail/Attachment;)V
    .locals 4
    .parameter "attach"

    .prologue
    .line 5609
    if-eqz p1, :cond_0

    .line 5610
    iget-object v1, p1, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    .line 5611
    .local v1, btnView:Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 5612
    check-cast v0, Landroid/widget/LinearLayout;

    .line 5613
    .local v0, attachView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5614
    invoke-direct {p0, v0, p1}, Lcom/htc/android/mail/ReadScreen;->setInfoToAttachView(Landroid/view/View;Lcom/htc/android/mail/Attachment;)V

    .line 5615
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5619
    .end local v0           #attachView:Landroid/view/View;
    .end local v1           #btnView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private updateAttachmentButton(ILcom/htc/android/mail/Attachment;I)V
    .locals 12
    .parameter "tokenId"
    .parameter "attach"
    .parameter "successKey"

    .prologue
    .line 6928
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateAttachmentButton> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/htc/android/mail/Attachment;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6931
    :cond_0
    const/4 v9, -0x1

    if-ne p3, v9, :cond_3

    .line 6933
    const/4 v9, 0x0

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    .line 6934
    iget-object v9, p2, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 6935
    sget-object v9, Lcom/htc/android/mail/Attachment$States;->unDownloaded:Lcom/htc/android/mail/Attachment$States;

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    .line 6944
    :goto_0
    iget-object v9, p2, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    invoke-virtual {v9, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6945
    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 7016
    :goto_1
    return-void

    .line 6937
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v9, p2, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6938
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 6939
    sget-object v9, Lcom/htc/android/mail/Attachment$States;->downloaded:Lcom/htc/android/mail/Attachment$States;

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    goto :goto_0

    .line 6941
    :cond_2
    sget-object v9, Lcom/htc/android/mail/Attachment$States;->missing:Lcom/htc/android/mail/Attachment$States;

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    goto :goto_0

    .line 6949
    .end local v3           #file:Ljava/io/File;
    :cond_3
    invoke-direct {p0, p2}, Lcom/htc/android/mail/ReadScreen;->updateAttachInfo(Lcom/htc/android/mail/Attachment;)V

    .line 6951
    iget-wide v1, p2, Lcom/htc/android/mail/Attachment;->attachSize:J

    .line 6953
    .local v1, dispSize:J
    const/4 v4, 0x0

    .line 6954
    .local v4, isExist:Z
    const/4 v0, 0x0

    .line 6956
    .local v0, canBeRead:Z
    iget-object v9, p2, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    if-nez v9, :cond_a

    .line 6957
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "ReadScreen"

    const-string v10, "filepath is null"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6961
    :cond_4
    :goto_2
    iget-object v9, p2, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 6962
    new-instance v3, Ljava/io/File;

    iget-object v9, p2, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6963
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    .line 6964
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v0

    .line 6967
    const-wide/16 v7, 0x0

    .line 6968
    .local v7, nEncryptFileSize:J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 6970
    .local v5, nDecryptFileSize:J
    iget-wide v9, p2, Lcom/htc/android/mail/Attachment;->attachSize:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 6972
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_b

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_b

    .line 6973
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "ReadScreen"

    const-string v10, "fix file length 0 issue"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6980
    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    .line 6981
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "ReadScreen"

    const-string v10, "unbelievable"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6983
    :cond_6
    if-eqz v4, :cond_7

    .line 6984
    move-wide v1, v5

    .line 6988
    .end local v3           #file:Ljava/io/File;
    .end local v5           #nDecryptFileSize:J
    .end local v7           #nEncryptFileSize:J
    :cond_7
    iget-object v9, p2, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    if-eqz v9, :cond_d

    if-eqz v4, :cond_d

    if-eqz v0, :cond_d

    .line 6989
    const/4 v9, 0x0

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    .line 6990
    sget-object v9, Lcom/htc/android/mail/Attachment$States;->downloaded:Lcom/htc/android/mail/Attachment$States;

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    .line 7001
    :goto_4
    iget-object v9, p2, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    if-nez v9, :cond_8

    .line 7002
    sget-object v9, Lcom/htc/android/mail/Attachment$States;->unDownloaded:Lcom/htc/android/mail/Attachment$States;

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    .line 7003
    const/4 v9, 0x0

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    .line 7006
    :cond_8
    iget-boolean v9, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 7007
    const/4 v9, 0x1

    iput-boolean v9, p2, Lcom/htc/android/mail/Attachment;->globalAttach:Z

    .line 7010
    :cond_9
    iput-wide v1, p2, Lcom/htc/android/mail/Attachment;->dispSize:J

    .line 7012
    iget-object v9, p2, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    invoke-virtual {v9, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7014
    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 6959
    :cond_a
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "filepath:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p2, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6975
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #nDecryptFileSize:J
    .restart local v7       #nEncryptFileSize:J
    :cond_b
    cmp-long v9, v7, v5

    if-eqz v9, :cond_5

    .line 6976
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_c

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not match"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6977
    :cond_c
    if-eqz v4, :cond_5

    iput-wide v5, p2, Lcom/htc/android/mail/Attachment;->attachSize:J

    goto/16 :goto_3

    .line 6991
    .end local v3           #file:Ljava/io/File;
    .end local v5           #nDecryptFileSize:J
    .end local v7           #nEncryptFileSize:J
    :cond_d
    iget-object v9, p2, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    if-eqz v9, :cond_e

    if-nez v4, :cond_e

    .line 6992
    sget-object v9, Lcom/htc/android/mail/Attachment$States;->missing:Lcom/htc/android/mail/Attachment$States;

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    .line 6993
    const/4 v9, 0x0

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    goto/16 :goto_4

    .line 6994
    :cond_e
    iget-object v9, p2, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    if-eqz v9, :cond_f

    .line 6995
    sget-object v9, Lcom/htc/android/mail/Attachment$States;->downloading:Lcom/htc/android/mail/Attachment$States;

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    goto/16 :goto_4

    .line 6997
    :cond_f
    sget-object v9, Lcom/htc/android/mail/Attachment$States;->unDownloaded:Lcom/htc/android/mail/Attachment$States;

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    .line 6998
    const/4 v9, 0x0

    iput-object v9, p2, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    goto/16 :goto_4
.end method

.method private updateAttachmentProgress(Lcom/htc/android/mail/Attachment;I)V
    .locals 7
    .parameter "attach"
    .parameter "percentage"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 5622
    if-eqz p1, :cond_0

    .line 5623
    iget-object v1, p1, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    .line 5624
    .local v1, btnView:Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 5625
    check-cast v0, Landroid/widget/LinearLayout;

    .line 5626
    .local v0, attachView:Landroid/view/View;
    const v4, 0x7f090012

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcProgressBar;

    .line 5627
    .local v2, progressBar:Lcom/htc/widget/HtcProgressBar;
    invoke-virtual {v2}, Lcom/htc/widget/HtcProgressBar;->getMax()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcProgressBar;->setSecondaryProgress(I)V

    .line 5628
    const v4, 0x7f090013

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5629
    .local v3, progressText:Landroid/widget/TextView;
    if-gez p2, :cond_1

    .line 5630
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 5631
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5643
    .end local v0           #attachView:Landroid/view/View;
    .end local v1           #btnView:Landroid/view/View;
    .end local v2           #progressBar:Lcom/htc/widget/HtcProgressBar;
    .end local v3           #progressText:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 5632
    .restart local v0       #attachView:Landroid/view/View;
    .restart local v1       #btnView:Landroid/view/View;
    .restart local v2       #progressBar:Lcom/htc/widget/HtcProgressBar;
    .restart local v3       #progressText:Landroid/widget/TextView;
    :cond_1
    if-nez p2, :cond_2

    .line 5633
    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 5634
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5635
    invoke-virtual {v2, p2}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 5636
    invoke-direct {p0, p2}, Lcom/htc/android/mail/ReadScreen;->getAttachProgressStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5638
    :cond_2
    invoke-virtual {v2, p2}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 5639
    invoke-direct {p0, p2}, Lcom/htc/android/mail/ReadScreen;->getAttachProgressStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateAttachmentProgressDisplay(Lcom/htc/android/mail/Attachment;I)V
    .locals 3
    .parameter "attach"
    .parameter "percentage"

    .prologue
    .line 6923
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6924
    return-void
.end method

.method private updateAttachmentSwitch(I)V
    .locals 6
    .parameter "count"

    .prologue
    const v5, 0x7f090052

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 5691
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAttachmentSwitch->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5692
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAttachSwitch:Lcom/htc/android/mail/widget/MailAttachmentSwitch;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->inflateAttachmentLayout()V

    .line 5694
    :cond_1
    iput p1, p0, Lcom/htc/android/mail/ReadScreen;->attachmentCounts:I

    .line 5697
    if-lez p1, :cond_2

    .line 5698
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAttachSwitch:Lcom/htc/android/mail/widget/MailAttachmentSwitch;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->setVisibility(I)V

    .line 5699
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->updateAttachmentView()V

    .line 5700
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5708
    :goto_0
    return-void

    .line 5702
    :cond_2
    invoke-direct {p0, v3}, Lcom/htc/android/mail/ReadScreen;->showAttachList(Z)V

    .line 5703
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAttachSwitch:Lcom/htc/android/mail/widget/MailAttachmentSwitch;

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->setVisibility(I)V

    .line 5704
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateAttachmentView()V
    .locals 3

    .prologue
    .line 4703
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAttachmentView> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->expandAttachmentView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4704
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAttachSwitch:Lcom/htc/android/mail/widget/MailAttachmentSwitch;

    iget-boolean v1, p0, Lcom/htc/android/mail/ReadScreen;->expandAttachmentView:Z

    iget v2, p0, Lcom/htc/android/mail/ReadScreen;->attachmentCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/widget/MailAttachmentSwitch;->update(ZI)V

    .line 4705
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->expandAttachmentView:Z

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ReadScreen;->showAttachList(Z)V

    .line 4706
    return-void
.end method

.method private updateContactButtonUI(Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V
    .locals 10
    .parameter "receiverListInfo"

    .prologue
    .line 1955
    const/4 v2, 0x0

    .line 1957
    .local v2, count:I
    if-eqz p1, :cond_0

    iget-object v7, p1, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->mainViewContainer:Landroid/view/ViewGroup;

    if-nez v7, :cond_1

    .line 1982
    :cond_0
    return-void

    .line 1961
    :cond_1
    iget-object v7, p1, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->mainViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1962
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1964
    iget-object v7, p1, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->mainViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1966
    .local v1, container:Landroid/view/ViewGroup;
    if-nez v1, :cond_3

    .line 1962
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1969
    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1970
    .local v6, subCount:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 1972
    :try_start_0
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/HtcPhotoButton;

    .line 1974
    .local v0, btn:Lcom/htc/android/mail/widget/HtcPhotoButton;
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v8, 0x12

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1970
    .end local v0           #btn:Lcom/htc/android/mail/widget/HtcPhotoButton;
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1976
    :catch_0
    move-exception v3

    .line 1978
    .local v3, e:Ljava/lang/ClassCastException;
    sget-boolean v7, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "ReadScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "child layout is not instanceOf HtcPhotoButton :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateContactPhoto()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 2837
    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;

    .line 2838
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    if-nez v0, :cond_1

    .line 2839
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v2, "updateContactPhoto mSenderRecpt null>"

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    :cond_0
    :goto_0
    return-void

    .line 2842
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-object v0, v0, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2843
    :cond_2
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v2, "updateContactPhoto mSenderRecpt.addr null"

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2846
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-object v0, v0, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ReadScreen;->checkContactExit(Ljava/lang/String;)Z

    move-result v8

    .line 2847
    .local v8, mContactExist:Z
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateContactPhoto>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-object v3, v3, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    :cond_4
    const/4 v6, 0x0

    .line 2850
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2851
    .local v1, uri:Landroid/net/Uri;
    iput-object v1, p0, Lcom/htc/android/mail/ReadScreen;->senderUri:Landroid/net/Uri;

    .line 2852
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2854
    .local v7, dataUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->senderUri:Landroid/net/Uri;

    .line 2855
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2856
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ReadScreen"

    const-string v2, "updateContactPhoto getContentResolver null>"

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2923
    :cond_5
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2924
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2859
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2860
    const-wide/16 v9, 0x0

    .line 2861
    .local v9, photoId:J
    if-nez v6, :cond_8

    .line 2862
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "ReadScreen"

    const-string v2, "updateContactPhoto c null>"

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2923
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2866
    :cond_8
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2867
    const-string v0, "photo_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2868
    const/4 v0, 0x0

    invoke-static {v9, v10, v0}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;

    .line 2869
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photoId>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    :cond_9
    :goto_2
    new-instance v0, Lcom/htc/android/mail/ReadScreen$22;

    invoke-direct {v0, p0, v8}, Lcom/htc/android/mail/ReadScreen$22;-><init>(Lcom/htc/android/mail/ReadScreen;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2923
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2871
    :cond_a
    :try_start_3
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ReadScreen"

    const-string v2, "first data fail>"

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2923
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #dataUri:Landroid/net/Uri;
    .end local v9           #photoId:J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2924
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2923
    :cond_c
    throw v0
.end method

.method private updateEachContact(Lcom/htc/android/mail/widget/HtcPhotoButton;)V
    .locals 11
    .parameter "btn"

    .prologue
    .line 2254
    const/4 v6, 0x0

    .line 2255
    .local v6, tag:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2256
    .local v1, addr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2257
    .local v4, displayname:Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 2260
    .local v2, contactId:J
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 2262
    if-eqz v6, :cond_0

    instance-of v7, v6, Lcom/htc/android/mail/ReceiverList;

    if-eqz v7, :cond_0

    .line 2263
    move-object v0, v6

    check-cast v0, Lcom/htc/android/mail/ReceiverList;

    move-object v7, v0

    iget-object v1, v7, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    .line 2264
    move-object v0, v6

    check-cast v0, Lcom/htc/android/mail/ReceiverList;

    move-object v7, v0

    iget-object v4, v7, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v8, v6

    .line 2269
    .end local v6           #tag:Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_1

    move-object v7, v8

    .line 2270
    check-cast v7, Lcom/htc/android/mail/ReceiverList;

    iget-wide v2, v7, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 2271
    const-wide/16 v9, 0x0

    cmp-long v7, v2, v9

    if-gez v7, :cond_3

    .line 2272
    const v7, 0x7f020042

    invoke-virtual {p1, v7}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setImageResource(I)V

    .line 2273
    invoke-direct {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getOriginalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2275
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 2276
    invoke-virtual {p1, v4}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    .line 2277
    check-cast v8, Lcom/htc/android/mail/ReceiverList;

    iput-object v4, v8, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    .line 2291
    :cond_1
    :goto_1
    return-void

    .line 2266
    :catch_0
    move-exception v5

    .line 2267
    .local v5, e:Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    move-object v8, v6

    goto :goto_0

    .line 2279
    .end local v5           #e:Ljava/lang/ClassCastException;
    :cond_2
    invoke-virtual {p1, v1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2282
    :cond_3
    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setImageVisibility(I)V

    .line 2284
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 2285
    invoke-virtual {p1, v4}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2287
    :cond_4
    invoke-virtual {p1, v1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateMailAddress(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .parameter "contactid"
    .parameter "address"
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ReceiverList;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2317
    .local p4, receiverlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ReceiverList;>;"
    move-object v0, p4

    .line 2319
    .local v0, addrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ReceiverList;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2337
    :cond_0
    return-void

    .line 2323
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2324
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2325
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReceiverList;

    iget-object v3, v3, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    if-ne v3, p3, :cond_3

    .line 2326
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReceiverList;

    iput-wide p1, v3, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 2327
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReceiverList;

    iput-object p5, v3, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    .line 2324
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2329
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReceiverList;

    iget-object v3, v3, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    if-eqz v3, :cond_2

    if-eqz p3, :cond_2

    .line 2330
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReceiverList;

    iget-object v3, v3, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReceiverList;

    iget-wide v3, v3, Lcom/htc/android/mail/ReceiverList;->contactId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 2331
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReceiverList;

    iput-wide p1, v3, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 2332
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReceiverList;

    iput-object p5, v3, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateMailHeader(Lcom/htc/android/mail/ReadScreen$MailHeader;)V
    .locals 14
    .parameter "header"

    .prologue
    const v13, 0x7f090154

    const/4 v12, 0x2

    const v9, 0x7f090142

    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 5716
    iget-object v6, p1, Lcom/htc/android/mail/ReadScreen$MailHeader;->subject:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 5717
    const v6, 0x7f090150

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p1, Lcom/htc/android/mail/ReadScreen$MailHeader;->subject:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5720
    :cond_0
    iget-object v2, p1, Lcom/htc/android/mail/ReadScreen$MailHeader;->from:Ljava/lang/String;

    .line 5721
    .local v2, from:Ljava/lang/String;
    iget-object v3, p1, Lcom/htc/android/mail/ReadScreen$MailHeader;->addr:Ljava/lang/String;

    .line 5723
    .local v3, fromAddress:Ljava/lang/String;
    const v6, 0x7f090141

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/widget/HtcPhotoButton;

    .line 5724
    .local v5, senderBtn:Lcom/htc/android/mail/widget/HtcPhotoButton;
    invoke-virtual {v5, v10}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setImageVisibility(I)V

    .line 5725
    iget-object v6, p1, Lcom/htc/android/mail/ReadScreen$MailHeader;->addr:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/ReadScreen;->updateSenderContact(Ljava/lang/String;)V

    .line 5726
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen;->mCurrentSender:Lcom/htc/android/mail/ReadScreen$MailHeader;

    .line 5728
    sget-boolean v6, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "ReadScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateMailHeader>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5729
    :cond_1
    if-eqz v2, :cond_a

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 5730
    invoke-virtual {v5, v2}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    .line 5731
    invoke-virtual {v5}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 5732
    invoke-virtual {v5, v11}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setVisibility(I)V

    .line 5745
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->updateDateField()V

    .line 5747
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientList:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientList:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientList:Ljava/lang/String;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientList:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_c

    .line 5748
    :cond_4
    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->showToCCeventS:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5749
    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 5750
    sget-boolean v6, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "ReadScreen"

    const-string v7, "set expand_icon>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5759
    :cond_5
    :goto_1
    const v6, 0x7f090152

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5760
    .local v0, conflictTv:Landroid/widget/TextView;
    iget-boolean v6, p1, Lcom/htc/android/mail/ReadScreen$MailHeader;->meetingConflict:Z

    if-eqz v6, :cond_e

    .line 5761
    const v6, 0x7f0b02da

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 5762
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5768
    :cond_6
    :goto_2
    const v6, 0x7f090153

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 5769
    .local v4, priorityTv:Landroid/widget/TextView;
    iget v6, p1, Lcom/htc/android/mail/ReadScreen$MailHeader;->priority:I

    if-ne v6, v12, :cond_f

    .line 5770
    const/high16 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5771
    const v6, 0x7f0b00f3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 5772
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5781
    :cond_7
    :goto_3
    const v6, 0x7f090155

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 5782
    .local v1, flagBtn:Landroid/widget/ToggleButton;
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    const-string v8, "flag_button"

    const v9, 0x7f02000e

    invoke-static {v7, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5785
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->isExchange()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 5786
    invoke-virtual {p0, v13}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5787
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v1, v11}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 5788
    :cond_8
    iget v6, p1, Lcom/htc/android/mail/ReadScreen$MailHeader;->flags:I

    if-ne v6, v12, :cond_11

    .line 5789
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 5798
    :cond_9
    :goto_4
    return-void

    .line 5735
    .end local v0           #conflictTv:Landroid/widget/TextView;
    .end local v1           #flagBtn:Landroid/widget/ToggleButton;
    .end local v4           #priorityTv:Landroid/widget/TextView;
    :cond_a
    if-eqz v3, :cond_b

    .line 5736
    invoke-virtual {v5, v3}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    .line 5737
    invoke-virtual {v5}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 5738
    invoke-virtual {v5, v11}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 5741
    :cond_b
    invoke-virtual {v5, v10}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 5752
    :cond_c
    sget-boolean v6, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v6, :cond_d

    const-string v6, "ReadScreen"

    const-string v7, "notSet expand_icon>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5753
    :cond_d
    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5754
    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 5764
    .restart local v0       #conflictTv:Landroid/widget/TextView;
    :cond_e
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v10, :cond_6

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 5773
    .restart local v4       #priorityTv:Landroid/widget/TextView;
    :cond_f
    iget v6, p1, Lcom/htc/android/mail/ReadScreen$MailHeader;->priority:I

    if-nez v6, :cond_10

    .line 5774
    const v6, -0xff4517

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5775
    const v6, 0x7f0b00f4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 5776
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 5778
    :cond_10
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v10, :cond_7

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 5791
    .restart local v1       #flagBtn:Landroid/widget/ToggleButton;
    :cond_11
    invoke-virtual {v1, v11}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_4

    .line 5794
    :cond_12
    invoke-virtual {p0, v13}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5795
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v6

    if-eq v6, v10, :cond_9

    invoke-virtual {v1, v10}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_4
.end method

.method private updateMeetingDetail(Lcom/htc/android/mail/ReadScreen$MeetingDetail;)V
    .locals 13
    .parameter "meetingDetail"

    .prologue
    .line 5936
    if-nez p1, :cond_0

    .line 5960
    :goto_0
    return-void

    .line 5939
    :cond_0
    iget-object v10, p1, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->start:Ljava/lang/String;

    invoke-static {v10}, Lcom/htc/android/mail/meeting/MeetingUtil;->splitTime(Ljava/lang/String;)[I

    move-result-object v6

    .line 5940
    .local v6, startIntTime:[I
    iget-object v10, p1, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->end:Ljava/lang/String;

    invoke-static {v10}, Lcom/htc/android/mail/meeting/MeetingUtil;->splitTime(Ljava/lang/String;)[I

    move-result-object v0

    .line 5942
    .local v0, endIntTime:[I
    iget-object v10, p1, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->start:Ljava/lang/String;

    invoke-static {v10}, Lcom/htc/android/mail/meeting/MeetingUtil;->strDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v8

    .line 5943
    .local v8, startTimeLong:J
    iget-object v10, p1, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->end:Ljava/lang/String;

    invoke-static {v10}, Lcom/htc/android/mail/meeting/MeetingUtil;->strDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v2

    .line 5944
    .local v2, endTimeLong:J
    iget-object v10, p1, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->location:Ljava/lang/String;

    if-nez v10, :cond_1

    const-string v4, ""

    .line 5945
    .local v4, location:Ljava/lang/String;
    :goto_1
    iget-object v10, p1, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->start:Ljava/lang/String;

    if-nez v10, :cond_2

    const-string v7, ""

    .line 5946
    .local v7, startTime:Ljava/lang/String;
    :goto_2
    iget-object v10, p1, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->end:Ljava/lang/String;

    if-nez v10, :cond_3

    const-string v1, ""

    .line 5949
    .local v1, endTime:Ljava/lang/String;
    :goto_3
    const v10, 0x7f090157

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewStub;

    invoke-virtual {v10}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    .line 5950
    .local v5, meeting:Landroid/view/View;
    const v10, 0x7f09012e

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5951
    const v10, 0x7f090034

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5952
    const v10, 0x7f09013b

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5953
    const v10, 0x7f090135

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5954
    const v10, 0x7f090138

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5955
    const v10, 0x7f09012f

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5956
    const v10, 0x7f090132

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5957
    const v10, 0x7f090137

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {p0, v8, v9, v12}, Lcom/htc/android/mail/ReadScreen;->MillsToDate(JI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5958
    const v10, 0x7f09013a

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {p0, v2, v3, v12}, Lcom/htc/android/mail/ReadScreen;->MillsToDate(JI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5959
    const v10, 0x7f090158

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 5944
    .end local v1           #endTime:Ljava/lang/String;
    .end local v4           #location:Ljava/lang/String;
    .end local v5           #meeting:Landroid/view/View;
    .end local v7           #startTime:Ljava/lang/String;
    :cond_1
    iget-object v4, p1, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->location:Ljava/lang/String;

    goto/16 :goto_1

    .line 5945
    .restart local v4       #location:Ljava/lang/String;
    :cond_2
    iget-object v7, p1, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->start:Ljava/lang/String;

    goto/16 :goto_2

    .line 5946
    .restart local v7       #startTime:Ljava/lang/String;
    :cond_3
    iget-object v1, p1, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->end:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method private updatePhotoThread()V
    .locals 2

    .prologue
    .line 3011
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/ReadScreen$24;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReadScreen$24;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3020
    return-void
.end method

.method private updatePreNextButton()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5659
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePreNextButton>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mPreMessageId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mNextMessageId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5661
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_2

    .line 5662
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mMenu:Landroid/view/Menu;

    const/16 v3, 0x1a

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 5663
    .local v1, previousItem:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mMenu:Landroid/view/Menu;

    const/16 v3, 0x1b

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 5665
    .local v0, nextItem:Landroid/view/MenuItem;
    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mPreMessageId:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_3

    .line 5666
    if-eqz v1, :cond_1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5671
    :cond_1
    :goto_0
    iget-wide v2, p0, Lcom/htc/android/mail/ReadScreen;->mNextMessageId:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_4

    .line 5672
    if-eqz v0, :cond_2

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5677
    .end local v0           #nextItem:Landroid/view/MenuItem;
    .end local v1           #previousItem:Landroid/view/MenuItem;
    :cond_2
    :goto_1
    return-void

    .line 5668
    .restart local v0       #nextItem:Landroid/view/MenuItem;
    .restart local v1       #previousItem:Landroid/view/MenuItem;
    :cond_3
    if-eqz v1, :cond_1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 5674
    :cond_4
    if-eqz v0, :cond_2

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateProfilePhoto()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 2930
    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;

    .line 2931
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    if-nez v0, :cond_1

    .line 2932
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v2, "updateProfilePhoto mSenderRecpt null>"

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    :cond_0
    :goto_0
    return-void

    .line 2936
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-object v0, v0, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2937
    :cond_2
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v2, "updateProfilePhoto mSenderRecpt.addr null"

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2941
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-object v0, v0, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ReadScreen;->checkContactExit(Ljava/lang/String;)Z

    move-result v8

    .line 2942
    .local v8, mContactExist:Z
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProfilePhoto>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-object v4, v4, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-wide v4, v4, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    :cond_4
    const/4 v6, 0x0

    .line 2946
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-wide v4, v2, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 2947
    .local v7, dataUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->senderUri:Landroid/net/Uri;

    .line 2949
    const-string v0, "content://com.android.contacts/profile/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2950
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimetype = \'vnd.android.cursor.item/photo\' AND raw_contact_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;

    iget-wide v4, v2, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2951
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2952
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ReadScreen"

    const-string v2, "updateProfilePhoto getContentResolver null>"

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3004
    :cond_5
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3005
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2956
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2957
    const-wide/16 v9, 0x0

    .line 2958
    .local v9, photoId:J
    if-nez v6, :cond_8

    .line 2959
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "ReadScreen"

    const-string v2, "updateProfilePhoto c null>"

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2960
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3004
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2963
    :cond_8
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2964
    const-string v0, "photo_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2965
    const/4 v0, 0x0

    invoke-static {v9, v10, v0}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;

    .line 2966
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "photoId>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    :cond_9
    :goto_2
    new-instance v0, Lcom/htc/android/mail/ReadScreen$23;

    invoke-direct {v0, p0, v8}, Lcom/htc/android/mail/ReadScreen$23;-><init>(Lcom/htc/android/mail/ReadScreen;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3004
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2968
    :cond_a
    :try_start_3
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ReadScreen"

    const-string v2, "first data fail>"

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 3004
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #dataUri:Landroid/net/Uri;
    .end local v9           #photoId:J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_c

    .line 3005
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3004
    :cond_c
    throw v0
.end method

.method private updateReceiverContacts(Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V
    .locals 5
    .parameter "recipientInfo"

    .prologue
    .line 1928
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v1, "updateReceiverContacts)"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;-><init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V

    const-string v2, "ReadScreen"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1930
    return-void
.end method

.method private updateScrollViewHeight(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 7056
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    const-string v2, "updateScrollViewHeight>>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7057
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 7058
    const v1, 0x7f090156

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollContainer:Landroid/widget/LinearLayout;

    .line 7059
    :cond_1
    const/4 v0, -0x1

    .line 7060
    .local v0, h:I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 7061
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 7062
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set min5>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7063
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 7069
    :cond_3
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/htc/android/mail/ReadScreen$46;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/ReadScreen$46;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7075
    return-void

    .line 7064
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 7065
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 7066
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set min6>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7067
    :cond_5
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto :goto_0
.end method

.method private updateScrollViewHeightWithGetRemaing(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 7078
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    const-string v2, "updateScrollViewHeightWithGetRemaing>>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7079
    :cond_0
    const/4 v0, -0x1

    .line 7080
    .local v0, h:I
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 7081
    const v1, 0x7f090156

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollContainer:Landroid/widget/LinearLayout;

    .line 7082
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 7083
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 7084
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set min7>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7085
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 7091
    :cond_3
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/htc/android/mail/ReadScreen$47;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/ReadScreen$47;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7097
    return-void

    .line 7086
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 7087
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 7088
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set min8>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7089
    :cond_5
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto :goto_0
.end method

.method private updateSenderContact(Ljava/lang/String;)V
    .locals 5
    .parameter "addr"

    .prologue
    .line 1923
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v1, "updateSenderContact()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;-><init>(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;)V

    const-string v2, "ReadScreen"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1925
    return-void
.end method

.method private updateSenderContactBtnUI(Lcom/htc/android/mail/ReceiverList;)V
    .locals 5
    .parameter "senderRecpt"

    .prologue
    .line 1934
    const v3, 0x7f090141

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/HtcPhotoButton;

    .line 1935
    .local v0, btn:Lcom/htc/android/mail/widget/HtcPhotoButton;
    const-wide/16 v1, -0x1

    .line 1936
    .local v1, contactid:J
    if-eqz p1, :cond_0

    .line 1937
    iget-wide v1, p1, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 1938
    :cond_0
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 1939
    const v3, 0x7f020042

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setImageResource(I)V

    .line 1940
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mCurrentSender:Lcom/htc/android/mail/ReadScreen$MailHeader;

    iget-object v3, v3, Lcom/htc/android/mail/ReadScreen$MailHeader;->from:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1941
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mCurrentSender:Lcom/htc/android/mail/ReadScreen$MailHeader;

    iget-object v3, v3, Lcom/htc/android/mail/ReadScreen$MailHeader;->from:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    .line 1951
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->updatePhotoThread()V

    .line 1952
    return-void

    .line 1943
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mCurrentSender:Lcom/htc/android/mail/ReadScreen$MailHeader;

    iget-object v3, v3, Lcom/htc/android/mail/ReadScreen$MailHeader;->addr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1945
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setImageVisibility(I)V

    .line 1946
    iget-object v3, p1, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1947
    iget-object v3, p1, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1949
    :cond_3
    iget-object v3, p1, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateUIByAccountType(Z)V
    .locals 5
    .parameter "isExchangeSvr"

    .prologue
    .line 4194
    const v1, 0x7f090142

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4195
    .local v0, infoSwitchBtn:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    const-string v3, "common_icon_glance_pulldown_rest"

    const v4, 0x208093b

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4198
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->showToCCeventS:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4200
    const v1, 0x7f090154

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->markStarEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4201
    return-void
.end method


# virtual methods
.method public GetAllRelatedAttachmentCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "projection"

    .prologue
    .line 2593
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->AllRELATEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/ReadScreen;->GetDbCursor(Lcom/htc/android/mail/ReadScreen$CursorType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public GetDbCursor(Lcom/htc/android/mail/ReadScreen$CursorType;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "nCase"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 2560
    const/4 v3, 0x0

    .line 2562
    .local v3, selection:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-ne v0, v7, :cond_1

    .line 2563
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    .line 2568
    .local v1, UriDb:Landroid/net/Uri;
    :goto_0
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->HTML:Lcom/htc/android/mail/ReadScreen$CursorType;

    if-ne v0, p1, :cond_2

    .line 2569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _mimetype=\'text/html\' AND _filename=\'\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2585
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2565
    .end local v1           #UriDb:Landroid/net/Uri;
    :cond_1
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .restart local v1       #UriDb:Landroid/net/Uri;
    goto :goto_0

    .line 2570
    :cond_2
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->NOTHTML:Lcom/htc/android/mail/ReadScreen$CursorType;

    if-ne v0, p1, :cond_3

    .line 2571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _filename<>\'\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _contenttype<>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2572
    :cond_3
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->AllRELATEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

    if-ne v0, p1, :cond_4

    .line 2573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _filename<>\'\' "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _contenttype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2574
    :cond_4
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->RELATEDFETECHEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

    if-ne v0, p1, :cond_5

    .line 2575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _filepath is not null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _contenttype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 2576
    :cond_5
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->RELATEDUNFETECHEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

    if-ne v0, p1, :cond_6

    .line 2577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _filepath is null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _contenttype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _cid<>\'NIL\' AND _cid<>\'\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2578
    new-array p2, v7, [Ljava/lang/String;

    .end local p2
    const/4 v0, 0x0

    const-string v2, "count(_id) as _total"

    aput-object v2, p2, v0

    .restart local p2
    goto/16 :goto_1

    .line 2579
    :cond_6
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->TEXT:Lcom/htc/android/mail/ReadScreen$CursorType;

    if-ne v0, p1, :cond_7

    .line 2580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _mimetype=\'text/plain\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _filename=\'\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 2581
    :cond_7
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->NOTTEXT:Lcom/htc/android/mail/ReadScreen$CursorType;

    if-ne v0, p1, :cond_0

    .line 2582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _filename<>\'\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _contenttype<>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public GetHtmlCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "projection"

    .prologue
    .line 2589
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->HTML:Lcom/htc/android/mail/ReadScreen$CursorType;

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/ReadScreen;->GetDbCursor(Lcom/htc/android/mail/ReadScreen$CursorType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public GetNotHtmlCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "projection"

    .prologue
    .line 2605
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->NOTHTML:Lcom/htc/android/mail/ReadScreen$CursorType;

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/ReadScreen;->GetDbCursor(Lcom/htc/android/mail/ReadScreen$CursorType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public GetNotTextCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "projection"

    .prologue
    .line 2613
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->NOTTEXT:Lcom/htc/android/mail/ReadScreen$CursorType;

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/ReadScreen;->GetDbCursor(Lcom/htc/android/mail/ReadScreen$CursorType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public GetRelatedFetchedAttachmentCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "projection"

    .prologue
    .line 2597
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->RELATEDFETECHEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/ReadScreen;->GetDbCursor(Lcom/htc/android/mail/ReadScreen$CursorType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public GetRelatedUnFetchedAttachmentCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "projection"

    .prologue
    .line 2601
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->RELATEDUNFETECHEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/ReadScreen;->GetDbCursor(Lcom/htc/android/mail/ReadScreen$CursorType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public GetTextCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "projection"

    .prologue
    .line 2609
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->TEXT:Lcom/htc/android/mail/ReadScreen$CursorType;

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/ReadScreen;->GetDbCursor(Lcom/htc/android/mail/ReadScreen$CursorType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method InsertContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "name"
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 1207
    const/4 v7, 0x0

    .line 1209
    .local v7, found:Z
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InsertContact>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    :cond_0
    const-string v3, "data1 like  ? "

    .line 1211
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1212
    .local v6, cCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v8, :cond_1

    .line 1213
    const/4 v7, 0x1

    .line 1214
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1215
    :cond_2
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen;->addContactName:Ljava/lang/String;

    .line 1216
    iput-object p2, p0, Lcom/htc/android/mail/ReadScreen;->addContactAddress:Ljava/lang/String;

    .line 1217
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_3
    if-eqz v7, :cond_4

    .line 1219
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen;->showDialog(I)V

    .line 1222
    :goto_0
    return-void

    .line 1221
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/ReadScreen;->InsertContactProcess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method InsertContactProcess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "name"
    .parameter "address"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1156
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    sget-object v7, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1158
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "email_isprimary"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1159
    if-eqz p1, :cond_0

    .line 1160
    const-string v6, "name"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 1163
    const/16 v5, 0x40

    .line 1164
    .local v5, token:I
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1165
    .local v4, pos:I
    if-lez v4, :cond_1

    .line 1166
    const/4 v6, 0x0

    invoke-virtual {p2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1167
    .local v3, nickName:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    .end local v3           #nickName:Ljava/lang/String;
    .end local v4           #pos:I
    .end local v5           #token:I
    :cond_1
    if-eqz p2, :cond_2

    .line 1171
    const-string v6, "email"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1173
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    .line 1174
    .local v0, account_name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1175
    .local v1, account_type:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProviderGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProviderGroup()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Gmail"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1176
    sget-boolean v6, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "ReadScreen"

    const-string v7, "add to Gmail>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    :cond_3
    const-string v1, "com.google"

    .line 1184
    :cond_4
    :goto_0
    sget-boolean v6, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "ReadScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new contact type>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_5
    const-string v6, "account_type"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    const-string v6, "account_name"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1188
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->startActivity(Landroid/content/Intent;)V

    .line 1189
    iput-object v10, p0, Lcom/htc/android/mail/ReadScreen;->addContactName:Ljava/lang/String;

    .line 1190
    iput-object v10, p0, Lcom/htc/android/mail/ReadScreen;->addContactAddress:Ljava/lang/String;

    .line 1194
    iput-boolean v9, p0, Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z

    .line 1196
    return-void

    .line 1178
    :cond_6
    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    .line 1179
    sget-boolean v6, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "ReadScreen"

    const-string v7, "add to Exchange>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_7
    const-string v1, "com.htc.android.mail.eas"

    goto :goto_0

    .line 1182
    :cond_8
    sget-boolean v6, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "ReadScreen"

    const-string v7, "Not Gmail/EAS account >"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkAvailableToDownload(II)Z
    .locals 12
    .parameter "fs"
    .parameter "sd"

    .prologue
    const/4 v8, 0x0

    .line 4491
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAvailableToDownload>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4492
    :cond_0
    const-string v9, "mail"

    invoke-virtual {p0, v9, v8}, Lcom/htc/android/mail/ReadScreen;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 4493
    .local v5, storageDirectory:Ljava/lang/String;
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4494
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 4495
    .local v0, nAB:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 4496
    .local v2, nBS:J
    mul-long v6, v0, v2

    .line 4497
    .local v6, totalAvailable:J
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "storageDirectory>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",nAB="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",nBS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4498
    :cond_1
    const/4 v9, -0x1

    if-eq p1, v9, :cond_2

    int-to-long v9, p1

    cmp-long v9, v9, v6

    if-lez v9, :cond_2

    .line 4501
    :goto_0
    return v8

    :cond_2
    const/4 v8, 0x1

    goto :goto_0
.end method

.method checkUnfinishedSpace(I)Z
    .locals 3
    .parameter "total"

    .prologue
    .line 4224
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUnfinishedSpace>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4225
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/ReadScreen;->checkAvailableToDownload(II)Z

    move-result v0

    return v0
.end method

.method closeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 1199
    if-nez p1, :cond_0

    .line 1204
    :goto_0
    return-void

    .line 1202
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1203
    const/4 p1, 0x0

    .line 1204
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5322
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mShowRecipientDialog:Z

    .line 5323
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 5324
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    if-eqz v5, :cond_0

    .line 5325
    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    invoke-virtual {v5}, Lcom/htc/android/mail/ReadScreenScrollView;->resetDragFlag()V

    .line 5327
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v5}, Lcom/htc/android/mail/HtcWebView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 5329
    sget-boolean v5, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "ReadScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchKeyEvent>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5330
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 5331
    .local v0, keycode:I
    packed-switch v0, :pswitch_data_0

    .line 5340
    .end local v0           #keycode:I
    .end local v1           #result:Z
    :cond_2
    :goto_0
    return v1

    .line 5334
    .restart local v0       #keycode:I
    .restart local v1       #result:Z
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/htc/android/mail/ReadScreen;->scrollReadScreenScrollView(I)I

    move-result v2

    .line 5335
    .local v2, returnValue:I
    if-ne v2, v3, :cond_3

    move v1, v3

    goto :goto_0

    .line 5336
    :cond_3
    if-nez v2, :cond_2

    move v1, v4

    goto :goto_0

    .line 5331
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getContactId(Ljava/lang/String;)J
    .locals 13
    .parameter "addr"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2123
    const-wide/16 v2, -0x1

    .line 2124
    .local v2, contactId:J
    const-string v6, "data1 LIKE ?"

    .line 2126
    .local v6, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    new-array v9, v10, [Ljava/lang/String;

    aput-object p1, v9, v11

    invoke-static {v7, v8, v6, v9, v12}, Lcom/htc/android/mail/ReadScreen;->getContactCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2127
    .local v1, contactCursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 2129
    .local v5, profileCursor:Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 2130
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    new-array v9, v10, [Ljava/lang/String;

    aput-object p1, v9, v11

    invoke-static {v7, v8, v6, v9, v12}, Lcom/htc/android/mail/ReadScreen;->getProfileCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2132
    if-nez v5, :cond_1

    .line 2133
    sget-boolean v7, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ReadScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContactId cursor null>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    :cond_0
    const-wide/16 v7, -0x1

    .line 2171
    :goto_0
    return-wide v7

    .line 2141
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lt v7, v10, :cond_2

    .line 2142
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2143
    const-string v7, "contact_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2146
    .local v0, _Id:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 2151
    .end local v0           #_Id:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2156
    :cond_3
    if-nez v5, :cond_4

    .line 2157
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    new-array v9, v10, [Ljava/lang/String;

    aput-object p1, v9, v11

    invoke-static {v7, v8, v6, v9, v12}, Lcom/htc/android/mail/ReadScreen;->getProfileCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2159
    :cond_4
    if-eqz v5, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lt v7, v10, :cond_5

    .line 2160
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2161
    const-string v7, "contact_id"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2164
    .restart local v0       #_Id:Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 2169
    .end local v0           #_Id:Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    move-wide v7, v2

    .line 2171
    goto :goto_0

    .line 2147
    .restart local v0       #_Id:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 2148
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v7, "ReadScreen"

    const-string v8, "NumberFormatException occurs in getContactId()"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2165
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    .line 2166
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const-string v7, "ReadScreen"

    const-string v8, "NumberFormatException occurs in getContactId()"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/htc/android/mail/ReceiverList;
    .locals 13
    .parameter "addr"

    .prologue
    .line 2176
    const/4 v2, 0x0

    .line 2177
    .local v2, a:Lcom/htc/android/mail/ReceiverList;
    const-string v8, "data1 LIKE ?"

    .line 2179
    .local v8, where:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 2180
    const/4 v9, 0x0

    .line 2240
    :cond_0
    :goto_0
    return-object v9

    .line 2182
    :cond_1
    const/4 v4, 0x0

    .line 2183
    .local v4, contactCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2185
    .local v7, profileCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x0

    invoke-static {v9, v10, v8, v11, v12}, Lcom/htc/android/mail/ReadScreen;->getContactCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2187
    if-nez v4, :cond_4

    .line 2188
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x0

    invoke-static {v9, v10, v8, v11, v12}, Lcom/htc/android/mail/ReadScreen;->getProfileCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2190
    if-nez v7, :cond_4

    .line 2191
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "ReadScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getContactId cursor null>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2192
    :cond_2
    const/4 v9, 0x0

    .line 2242
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_3

    .line 2243
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2246
    :cond_3
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2247
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2199
    :cond_4
    if-eqz v4, :cond_9

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_9

    .line 2200
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2201
    const-string v9, "_id"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2202
    .local v1, _mId:Ljava/lang/String;
    const-string v9, "contact_id"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2203
    .local v0, _Id:Ljava/lang/String;
    const-string v9, "display_name"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 2205
    .local v6, name:Ljava/lang/String;
    :try_start_2
    new-instance v3, Lcom/htc/android/mail/ReceiverList;

    invoke-direct {v3}, Lcom/htc/android/mail/ReceiverList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2206
    .end local v2           #a:Lcom/htc/android/mail/ReceiverList;
    .local v3, a:Lcom/htc/android/mail/ReceiverList;
    :try_start_3
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/htc/android/mail/ReceiverList;->methodId:J

    .line 2207
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 2208
    iput-object v6, v3, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    .line 2209
    iput-object p1, v3, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2218
    .end local v0           #_Id:Ljava/lang/String;
    .end local v1           #_mId:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :goto_2
    if-nez v7, :cond_5

    .line 2219
    :try_start_4
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x0

    invoke-static {v9, v10, v8, v11, v12}, Lcom/htc/android/mail/ReadScreen;->getProfileCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2221
    :cond_5
    if-eqz v7, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_e

    .line 2222
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2223
    const-string v9, "_id"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2224
    .restart local v1       #_mId:Ljava/lang/String;
    const-string v9, "contact_id"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2225
    .restart local v0       #_Id:Ljava/lang/String;
    const-string v9, "display_name"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v6

    .line 2227
    .restart local v6       #name:Ljava/lang/String;
    if-nez v3, :cond_d

    :try_start_5
    new-instance v2, Lcom/htc/android/mail/ReceiverList;

    invoke-direct {v2}, Lcom/htc/android/mail/ReceiverList;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 2228
    .end local v3           #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v2       #a:Lcom/htc/android/mail/ReceiverList;
    :goto_3
    :try_start_6
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v2, Lcom/htc/android/mail/ReceiverList;->methodId:J

    .line 2229
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v2, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 2230
    iput-object v6, v2, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    .line 2231
    iput-object p1, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2242
    .end local v0           #_Id:Ljava/lang/String;
    .end local v1           #_mId:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_7

    .line 2243
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2246
    :cond_7
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_8

    .line 2247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v9, v2

    .line 2237
    goto/16 :goto_0

    .line 2210
    .restart local v0       #_Id:Ljava/lang/String;
    .restart local v1       #_mId:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 2211
    .local v5, e:Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_7
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_9

    const-string v9, "ReadScreen"

    const-string v10, "get NumberFormatException exception in getContactId()"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #_Id:Ljava/lang/String;
    .end local v1           #_mId:Ljava/lang/String;
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v6           #name:Ljava/lang/String;
    :cond_9
    move-object v3, v2

    .end local v2           #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v3       #a:Lcom/htc/android/mail/ReceiverList;
    goto :goto_2

    .line 2232
    .restart local v0       #_Id:Ljava/lang/String;
    .restart local v1       #_mId:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v2, v3

    .line 2233
    .end local v3           #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v2       #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v5       #e:Ljava/lang/NumberFormatException;
    :goto_6
    sget-boolean v9, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "ReadScreen"

    const-string v10, "get NumberFormatException exception in getContactId()"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 2238
    .end local v0           #_Id:Ljava/lang/String;
    .end local v1           #_mId:Ljava/lang/String;
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v6           #name:Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 2239
    .local v5, e:Ljava/lang/Exception;
    :goto_7
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2240
    const/4 v9, 0x0

    .line 2242
    if-eqz v4, :cond_a

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_a

    .line 2243
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2246
    :cond_a
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_1

    .line 2242
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_b

    .line 2243
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2246
    :cond_b
    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_c

    .line 2247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2242
    :cond_c
    throw v9

    .end local v2           #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v3       #a:Lcom/htc/android/mail/ReceiverList;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v2       #a:Lcom/htc/android/mail/ReceiverList;
    goto :goto_8

    .line 2238
    .end local v2           #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v3       #a:Lcom/htc/android/mail/ReceiverList;
    :catch_3
    move-exception v5

    move-object v2, v3

    .end local v3           #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v2       #a:Lcom/htc/android/mail/ReceiverList;
    goto :goto_7

    .line 2232
    .restart local v0       #_Id:Ljava/lang/String;
    .restart local v1       #_mId:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    :catch_4
    move-exception v5

    goto :goto_6

    .line 2210
    .end local v2           #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v3       #a:Lcom/htc/android/mail/ReceiverList;
    :catch_5
    move-exception v5

    move-object v2, v3

    .end local v3           #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v2       #a:Lcom/htc/android/mail/ReceiverList;
    goto :goto_5

    .end local v2           #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v3       #a:Lcom/htc/android/mail/ReceiverList;
    :cond_d
    move-object v2, v3

    .end local v3           #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v2       #a:Lcom/htc/android/mail/ReceiverList;
    goto/16 :goto_3

    .end local v0           #_Id:Ljava/lang/String;
    .end local v1           #_mId:Ljava/lang/String;
    .end local v2           #a:Lcom/htc/android/mail/ReceiverList;
    .end local v6           #name:Ljava/lang/String;
    .restart local v3       #a:Lcom/htc/android/mail/ReceiverList;
    :cond_e
    move-object v2, v3

    .end local v3           #a:Lcom/htc/android/mail/ReceiverList;
    .restart local v2       #a:Lcom/htc/android/mail/ReceiverList;
    goto :goto_4
.end method

.method markStar()V
    .locals 11

    .prologue
    const v10, 0x7f090155

    const v9, 0x7f02000e

    const/4 v5, 0x2

    const/4 v8, 0x0

    .line 936
    iget-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/android/mail/ReadScreen;->mFromMimeViewer:Z

    if-eqz v4, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    iget v4, p0, Lcom/htc/android/mail/ReadScreen;->mFlags:I

    if-ne v4, v5, :cond_3

    .line 941
    iput v8, p0, Lcom/htc/android/mail/ReadScreen;->mFlags:I

    .line 945
    :goto_1
    new-instance v2, Lcom/htc/android/mail/MailMessage;

    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreen;->mUid:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 946
    .local v2, mailMessage:Lcom/htc/android/mail/MailMessage;
    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-virtual {v2, v4, v5}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 947
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v4, v4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v2, v4, v5}, Lcom/htc/android/mail/MailMessage;->setMailboxId(J)V

    .line 948
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mGroup:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/MailMessage;->setGroup(Ljava/lang/String;)V

    .line 949
    iget v4, p0, Lcom/htc/android/mail/ReadScreen;->mFlags:I

    iput v4, v2, Lcom/htc/android/mail/MailMessage;->flags:I

    .line 950
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 951
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "Mailbox"

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 952
    const-string v4, "MailMessage"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 953
    const-string v4, "oldRead"

    iget v5, p0, Lcom/htc/android/mail/ReadScreen;->_read:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 954
    new-instance v3, Lcom/htc/android/mail/Request;

    invoke-direct {v3}, Lcom/htc/android/mail/Request;-><init>()V

    .line 955
    .local v3, r:Lcom/htc/android/mail/Request;
    const/16 v4, 0x8

    iput v4, v3, Lcom/htc/android/mail/Request;->command:I

    .line 956
    iput-object v0, v3, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 957
    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 958
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v4, v3}, Lcom/htc/android/mail/AbsRequestController;->markStar(Lcom/htc/android/mail/Request;)V

    .line 960
    :cond_2
    iget v4, p0, Lcom/htc/android/mail/ReadScreen;->mFlags:I

    if-nez v4, :cond_4

    .line 961
    invoke-virtual {p0, v10}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 962
    .local v1, flagBtn:Landroid/widget/ToggleButton;
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    const-string v6, "flag_button"

    invoke-static {v5, v6, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    invoke-virtual {v1, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 943
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #flagBtn:Landroid/widget/ToggleButton;
    .end local v2           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v3           #r:Lcom/htc/android/mail/Request;
    :cond_3
    iput v5, p0, Lcom/htc/android/mail/ReadScreen;->mFlags:I

    goto :goto_1

    .line 967
    .restart local v0       #b:Landroid/os/Bundle;
    .restart local v2       #mailMessage:Lcom/htc/android/mail/MailMessage;
    .restart local v3       #r:Lcom/htc/android/mail/Request;
    :cond_4
    invoke-virtual {p0, v10}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 968
    .restart local v1       #flagBtn:Landroid/widget/ToggleButton;
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    const-string v6, "flag_button"

    invoke-static {v5, v6, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 970
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public moveMarkMail2()V
    .locals 5

    .prologue
    .line 3280
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v1, :cond_0

    .line 3293
    :goto_0
    return-void

    .line 3282
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3283
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0b014a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3285
    new-instance v1, Lcom/htc/android/mail/MoveToAdapter;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/htc/android/mail/MoveToAdapter;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAdapter:Lcom/htc/android/mail/MoveToAdapter;

    .line 3286
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAdapter:Lcom/htc/android/mail/MoveToAdapter;

    new-instance v2, Lcom/htc/android/mail/ReadScreen$26;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/ReadScreen$26;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3292
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v1, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3502
    sget-boolean v7, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ReadScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResult:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3511
    :goto_0
    if-eqz p3, :cond_1

    .line 3512
    const-string v7, "forward"

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3513
    .local v0, actionForward:Z
    const-string v7, "textSelection"

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3514
    .local v1, mTextSelectionByLongPress:Z
    const-string v7, "receiver"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3516
    .local v2, receiver:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 3517
    invoke-direct {p0, v2}, Lcom/htc/android/mail/ReadScreen;->forwardMail(Ljava/lang/String;)V

    .line 3527
    .end local v0           #actionForward:Z
    .end local v1           #mTextSelectionByLongPress:Z
    .end local v2           #receiver:Ljava/lang/String;
    :cond_1
    :goto_1
    const/16 v7, 0xe

    if-ne p1, v7, :cond_2

    iget-boolean v7, p0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->isExchange()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    if-ne p2, v7, :cond_2

    .line 3529
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    .line 3531
    :cond_2
    const/4 v7, 0x1

    if-ne p1, v7, :cond_4

    const/4 v7, -0x1

    if-ne p2, v7, :cond_4

    if-eqz p3, :cond_4

    .line 3532
    const-string v7, "fromListTab"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3533
    .local v5, ret:Ljava/lang/String;
    sget-boolean v7, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "ReadScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reply ret>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    :cond_3
    if-eqz v5, :cond_4

    const-string v7, "fromListTab"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3535
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    .line 3537
    .end local v5           #ret:Ljava/lang/String;
    :cond_4
    const/16 v7, 0x19

    if-ne p1, v7, :cond_5

    const/4 v7, -0x1

    if-ne p2, v7, :cond_5

    if-eqz p3, :cond_5

    .line 3538
    const-string v7, "SELECTED_TITLE"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 3539
    .local v6, selectedTitleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->replyName:Ljava/lang/String;

    .line 3540
    .local v4, replyname:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->replyAddr:Ljava/lang/String;

    .line 3541
    .local v3, replyaddr:Ljava/lang/String;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/htc/android/mail/ReadScreen$28;

    invoke-direct {v8, p0, v4, v3, v6}, Lcom/htc/android/mail/ReadScreen$28;-><init>(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 3559
    .end local v3           #replyaddr:Ljava/lang/String;
    .end local v4           #replyname:Ljava/lang/String;
    .end local v6           #selectedTitleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    return-void

    .line 3505
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    goto/16 :goto_0

    .line 3518
    .restart local v0       #actionForward:Z
    .restart local v1       #mTextSelectionByLongPress:Z
    .restart local v2       #receiver:Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    if-eqz v7, :cond_1

    .line 3519
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v7}, Lcom/htc/android/mail/HtcWebView;->emulateShiftHeld()V

    .line 3522
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/ReadScreenScrollView;->setMode(I)V

    goto/16 :goto_1

    .line 3503
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 3130
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3134
    .local v2, id:Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3140
    .local v3, index:I
    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mPlayables:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ReadScreen$PlayData;

    .line 3141
    .local v0, data:Lcom/htc/android/mail/ReadScreen$PlayData;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3143
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mail"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/mail/ReadScreen;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/htc/android/mail/ReadScreen$PlayData;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/htc/android/mail/ReadScreen$PlayData;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3146
    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->startActivity(Landroid/content/Intent;)V

    .line 3147
    .end local v0           #data:Lcom/htc/android/mail/ReadScreen$PlayData;
    .end local v3           #index:I
    .end local v4           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 3135
    :catch_0
    move-exception v1

    .line 3136
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "ReadScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get exception, id  ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 7101
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7103
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    if-eqz v0, :cond_0

    .line 7104
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/mail/HtcWebView;->mCheckFirstHeightChange:Z

    .line 7105
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v0}, Lcom/htc/android/mail/HtcWebView;->resetCacheDrawBitmap()V

    .line 7107
    :cond_0
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mShowGetUnfinishUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7115
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ReadScreen;->getReicipientBlockWidth(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    .line 7117
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->setToCcButton()V

    .line 7118
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->setTagListView()V

    .line 7119
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 7133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 7140
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 7135
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->enableCopyText()V

    goto :goto_0

    .line 7133
    nop

    :pswitch_data_0
    .packed-switch 0x7f0901a9
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f09014d

    const/high16 v7, 0x4000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2626
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2627
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;

    .line 2628
    sget v3, Lcom/htc/android/mail/ReadScreen;->mNowTokenId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/android/mail/ReadScreen;->mNowTokenId:I

    .line 2630
    sget-boolean v3, Lcom/htc/android/mail/Mail;->Hero_Project:Z

    if-nez v3, :cond_7

    .line 2631
    iput v5, p0, Lcom/htc/android/mail/ReadScreen;->mMultiTouchZoomType:I

    .line 2635
    :goto_0
    iput-object p0, p0, Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;

    .line 2636
    iput-boolean v6, p0, Lcom/htc/android/mail/ReadScreen;->mLoadAllDataDone:Z

    .line 2638
    sput-boolean v6, Lcom/htc/android/mail/ReadScreen;->isShowRecipientBlock:Z

    .line 2640
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->localIntent:Landroid/content/Intent;

    if-nez v3, :cond_8

    .line 2641
    sget-boolean v3, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ReadScreen"

    const-string v4, "get new intent>"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2643
    .local v1, it:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->requestWindowFeature(I)Z

    .line 2649
    :goto_1
    sget-boolean v3, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ReadScreen"

    const-string v4, "onCreate>"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    :cond_1
    const-string v3, "meetingView"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    .line 2651
    const-string v3, "MailReadFromAllAccount"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mReadFromAllAccount:Z

    .line 2653
    const-string v3, "fromListTab"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2654
    .local v0, fromList:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, "fromListTab"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2655
    iput-boolean v5, p0, Lcom/htc/android/mail/ReadScreen;->mFromListTab:Z

    .line 2657
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_3

    .line 2658
    iput-boolean v5, p0, Lcom/htc/android/mail/ReadScreen;->mNoHistoryEnable:Z

    .line 2659
    sget-boolean v3, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "ReadScreen"

    const-string v4, "mNoHistoryEnable>true"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2662
    .local v2, mIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2663
    const-string v3, "com.htc.mail.eas.intent.delete_exchg_account"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2664
    const-string v3, "intent.eas.mail.mailbox.empty"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2665
    const-string v3, "com.htc.android.mail.contact_status_changed"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2666
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMailBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/htc/android/mail/ReadScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2667
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->setMediaMountedReceiver()V

    .line 2669
    const-string v3, "FromConversationView"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mFromConversationView:Z

    .line 2670
    const-string v3, "FromSearchSvrMailView"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    .line 2671
    const-string v3, "fromViewer"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mFromMimeViewer:Z

    .line 2672
    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-ne v3, v5, :cond_4

    .line 2673
    const-string v3, "collectionId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->searchMailCollectinId:Ljava/lang/String;

    .line 2674
    sget-boolean v3, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "ReadScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "From search server mail view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->searchMailCollectinId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    :cond_4
    const-string v3, "messageIdsUriStr"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMessageIdsUriStr:Ljava/lang/String;

    .line 2677
    const-string v3, "where"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;

    .line 2678
    const-string v3, "activityCallback"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/util/ActivityCallback;

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mActivityCallback:Lcom/htc/android/mail/util/ActivityCallback;

    .line 2679
    const-string v3, "webviewScale"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F

    .line 2680
    sget-boolean v3, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "ReadScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webviewScale set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    :cond_5
    const-string v3, "sortRule"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSortRule:Ljava/lang/String;

    .line 2683
    const-string v3, "TriggerSource"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/ReadScreen;->mTriggerSource:I

    .line 2684
    const-string v3, "singleItem"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mSingleItem:Z

    .line 2685
    const-string v3, "accountID"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    .line 2686
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    .line 2687
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://mail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2688
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    .line 2745
    :goto_2
    return-void

    .line 2633
    .end local v0           #fromList:Ljava/lang/String;
    .end local v1           #it:Landroid/content/Intent;
    .end local v2           #mIntentFilter:Landroid/content/IntentFilter;
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/android/mail/ReadScreen;->mMultiTouchZoomType:I

    goto/16 :goto_0

    .line 2645
    :cond_8
    sget-boolean v3, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "ReadScreen"

    const-string v4, "get local intent>"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    :cond_9
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->localIntent:Landroid/content/Intent;

    .restart local v1       #it:Landroid/content/Intent;
    goto/16 :goto_1

    .line 2691
    .restart local v0       #fromList:Ljava/lang/String;
    .restart local v2       #mIntentFilter:Landroid/content/IntentFilter;
    :cond_a
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->url:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    .line 2694
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMessageIdsUriStr:Ljava/lang/String;

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2695
    :cond_b
    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-eqz v3, :cond_d

    .line 2696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchSvrMessages._id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND searchSvrMessages._del = -1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;

    .line 2702
    :cond_c
    :goto_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mPartFactory:Landroid/view/LayoutInflater;

    .line 2703
    const v3, 0x7f03003c

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->setContentView(I)V

    .line 2705
    const v3, 0x7f09013f

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSenderLabel:Landroid/widget/TextView;

    .line 2706
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSenderLabel:Landroid/widget/TextView;

    const v4, 0x7f0b015e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2708
    const v3, 0x7f090143

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mToListViewLayout:Landroid/widget/LinearLayout;

    .line 2709
    const v3, 0x7f090144

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mCcListViewLayout:Landroid/widget/LinearLayout;

    .line 2711
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/ReadScreen;->getReicipientBlockWidth(I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    .line 2713
    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    invoke-virtual {v3, v6}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    .line 2715
    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ReadScreenScrollView;

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    .line 2716
    const v3, 0x7f090156

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollContainer:Landroid/widget/LinearLayout;

    .line 2721
    const v3, 0x7f090053

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    .line 2723
    new-instance v3, Lcom/htc/android/mail/ReadScreen$UIHandler;

    sget v4, Lcom/htc/android/mail/ReadScreen;->mNowTokenId:I

    invoke-direct {v3, v4, p0}, Lcom/htc/android/mail/ReadScreen$UIHandler;-><init>(ILcom/htc/android/mail/ReadScreen;)V

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    .line 2724
    new-instance v3, Lcom/htc/android/mail/ReadScreen$RequestHandler;

    sget v4, Lcom/htc/android/mail/ReadScreen;->mNowTokenId:I

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-direct {v3, v4, p0, p0, v5}, Lcom/htc/android/mail/ReadScreen$RequestHandler;-><init>(ILandroid/content/Context;Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/util/MailDialogManager;)V

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mRequestHandler:Lcom/htc/android/mail/ReadScreen$RequestHandler;

    .line 2725
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mRequestHandler:Lcom/htc/android/mail/ReadScreen$RequestHandler;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 2727
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->WithOutScroll:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mWithOutScroll:Z

    .line 2741
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2742
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2743
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "common_app_bkg_top"

    const v5, 0x20807c7

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_2

    .line 2698
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messages._id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND messages._del = -1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const v8, 0x7f0b008e

    const v7, 0x7f0b0291

    const v5, 0x7f0b005a

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 4594
    sparse-switch p1, :sswitch_data_0

    .line 4689
    :goto_0
    return-object v2

    .line 4597
    :sswitch_0
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b01bc

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto :goto_0

    .line 4600
    :sswitch_1
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mSubject:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0138

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->confirmDelMailEvent:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto :goto_0

    .line 4610
    :sswitch_2
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b013c

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto :goto_0

    .line 4614
    :sswitch_3
    invoke-static {p1, p0}, Lcom/htc/android/mail/MailCommon;->getDialog(ILandroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 4616
    :sswitch_4
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b013d

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->cancelAddContactEvent:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->confirmAddContactEvent:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/android/mail/ReadScreen$36;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/ReadScreen$36;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 4631
    :sswitch_5
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4632
    .local v2, dialog:Lcom/htc/app/HtcProgressDialog;
    const v4, 0x7f0b013e

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4633
    const v4, 0x7f0b013f

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4634
    invoke-virtual {v2, v6}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 4635
    invoke-virtual {v2, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 4636
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mDialogListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 4640
    .end local v2           #dialog:Lcom/htc/app/HtcProgressDialog;
    :sswitch_6
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0140

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 4644
    :sswitch_7
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b00f6

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 4649
    :sswitch_8
    const/4 v1, 0x0

    .line 4650
    .local v1, checked_item:I
    iput v1, p0, Lcom/htc/android/mail/ReadScreen;->tmp_charset_select:I

    .line 4651
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 4653
    .local v0, charsets_arr:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 4654
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mCurrent_charset:Ljava/lang/String;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4655
    move v1, v3

    .line 4660
    :cond_0
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b00f5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f06001e

    new-instance v6, Lcom/htc/android/mail/ReadScreen$38;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/ReadScreen$38;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    invoke-virtual {v4, v5, v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/android/mail/ReadScreen$37;

    invoke-direct {v5, p0, v0}, Lcom/htc/android/mail/ReadScreen$37;-><init>(Lcom/htc/android/mail/ReadScreen;[Ljava/lang/String;)V

    invoke-virtual {v4, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 4653
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4685
    .end local v0           #charsets_arr:[Ljava/lang/String;
    .end local v1           #checked_item:I
    .end local v3           #i:I
    :sswitch_9
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b02b6

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 4594
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_6
        0x2 -> :sswitch_4
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x9 -> :sswitch_9
        0xc8 -> :sswitch_3
    .end sparse-switch
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3152
    const/16 v0, 0xf

    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a88

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3153
    const/16 v0, 0x1b

    const v1, 0x7f0b031c

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a3e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3154
    const/16 v0, 0x1a

    const v1, 0x7f0b031b

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a4a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3155
    const/16 v0, 0x12

    const v1, 0x7f0b014a

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3156
    const/16 v0, 0x8

    const v1, 0x7f0b0093

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a9c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3158
    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a61

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3159
    const/4 v0, 0x3

    const v1, 0x7f0b00ec

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a62

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3160
    const/4 v0, 0x2

    const v1, 0x7f0b00ea

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a0c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3161
    const/4 v0, 0x6

    const v1, 0x7f0b0151

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3163
    const/16 v0, 0x11

    const v1, 0x7f0b002b

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080321

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3164
    const/16 v0, 0x1c

    const v1, 0x7f0b009a

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3165
    const/16 v0, 0x13

    const v1, 0x7f0b0050

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080746

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3168
    const/16 v0, 0x14

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3170
    const/16 v0, 0x15

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3172
    const/16 v0, 0x16

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3174
    const/16 v0, 0x17

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3176
    const/16 v0, 0x18

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3178
    const/16 v0, 0x19

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x67

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3181
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen;->mMenu:Landroid/view/Menu;

    .line 3182
    return v4
.end method

.method protected final onDestroy()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3452
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3453
    iput-boolean v5, p0, Lcom/htc/android/mail/ReadScreen;->mIsDestroyed:Z

    .line 3454
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ReadScreen"

    const-string v3, "onDestroy>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-virtual {v2}, Lcom/htc/android/mail/util/MailDialogManager;->dismiss()V

    .line 3456
    :cond_1
    iput-object v4, p0, Lcom/htc/android/mail/ReadScreen;->photoBmp:Landroid/graphics/Bitmap;

    .line 3457
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    if-eqz v2, :cond_3

    .line 3458
    const v2, 0x7f09004f

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3459
    .local v1, webview_container:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 3460
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v2}, Lcom/htc/android/mail/HtcWebView;->clear()V

    .line 3461
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v2}, Lcom/htc/android/mail/HtcWebView;->destroy()V

    .line 3462
    iput-object v4, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    .line 3467
    .end local v1           #webview_container:Landroid/widget/LinearLayout;
    :cond_3
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mBackGroundHandler:Landroid/os/Handler;

    const-string v3, "ReadScreen"

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3469
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    if-eqz v2, :cond_4

    .line 3470
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    invoke-virtual {v2, v5}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->cancel(Z)Z

    .line 3473
    :cond_4
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    if-eqz v2, :cond_5

    .line 3474
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    invoke-virtual {v2, v5}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->cancel(Z)Z

    .line 3477
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mTagRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    if-eqz v2, :cond_6

    .line 3478
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mTagRecipientTask:Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;

    invoke-virtual {v2, v5}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->cancel(Z)Z

    .line 3481
    :cond_6
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mMailBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3483
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v2, :cond_8

    .line 3484
    sget-boolean v2, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "ReadScreen"

    const-string v3, " ** stop request in onDestroy"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3485
    :cond_7
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController;->stopRequest(Ljava/lang/ref/WeakReference;)V

    .line 3486
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/AbsRequestController;->unregisterWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 3489
    :cond_8
    iget-boolean v2, p0, Lcom/htc/android/mail/ReadScreen;->mFromMimeViewer:Z

    if-eqz v2, :cond_9

    .line 3490
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ReadScreen;->setResult(I)V

    .line 3494
    :cond_9
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3495
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 3497
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 3499
    :cond_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 5344
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5354
    :cond_0
    const/16 v1, 0x1d

    if-ne p1, v1, :cond_2

    .line 5355
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->replyAllMail()V

    .line 5379
    :cond_1
    :goto_0
    return v0

    .line 5357
    :cond_2
    const/16 v1, 0x21

    if-ne p1, v1, :cond_3

    .line 5358
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->markUnreadMail()V

    goto :goto_0

    .line 5360
    :cond_3
    const/16 v1, 0x22

    if-ne p1, v1, :cond_4

    .line 5361
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->forwardMail()V

    goto :goto_0

    .line 5364
    :cond_4
    const/16 v1, 0x23

    if-ne p1, v1, :cond_5

    .line 5365
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 5366
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->markStar()V

    goto :goto_0

    .line 5370
    :cond_5
    const/16 v1, 0x29

    if-ne p1, v1, :cond_6

    .line 5371
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->moveMarkMail2()V

    goto :goto_0

    .line 5374
    :cond_6
    const/16 v1, 0x2e

    if-ne p1, v1, :cond_7

    .line 5375
    invoke-direct {p0, v0}, Lcom/htc/android/mail/ReadScreen;->replyMail(I)V

    goto :goto_0

    .line 5379
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7186
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v0}, Lcom/htc/android/mail/HtcWebView;->isEnableQuickSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreenScrollView;->getMode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 7188
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v0}, Lcom/htc/android/mail/HtcWebView;->invalidate()V

    .line 7189
    const/4 v0, 0x1

    .line 7191
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/16 v13, 0x9

    const/4 v12, 0x7

    const/4 v11, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3300
    iget-boolean v7, p0, Lcom/htc/android/mail/ReadScreen;->mReadFromAllAccount:Z

    if-eqz v7, :cond_1

    .line 3301
    const-wide v0, 0x7fffffffffffffffL

    .line 3305
    .local v0, accountId:J
    :goto_0
    iget-wide v7, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v7, :cond_2

    .line 3441
    :cond_0
    :goto_1
    :pswitch_0
    return v6

    .line 3303
    .end local v0           #accountId:J
    :cond_1
    iget-wide v0, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    .restart local v0       #accountId:J
    goto :goto_0

    .line 3306
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_3
    :goto_2
    :pswitch_1
    move v6, v5

    .line 3441
    goto :goto_1

    .line 3308
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->goToPreMail()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    goto :goto_2

    .line 3311
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->goToNextMail()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    goto :goto_2

    .line 3315
    :pswitch_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mail/accounts/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3316
    .local v4, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3317
    .local v3, intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3318
    const-string v5, "_isIMAP4"

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->isIMAP4()Z

    move-result v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3319
    const-string v5, "_isExchange"

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->isExchange()Z

    move-result v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3320
    const-string v5, "provider"

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3321
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3322
    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-eqz v5, :cond_4

    .line 3323
    const-string v5, "mailboxId"

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v3, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3325
    :cond_4
    const-string v5, "GO_TO_TAB"

    const-string v7, "tab_inbox"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3326
    const/16 v5, 0xf

    invoke-virtual {p0, v3, v5}, Lcom/htc/android/mail/ReadScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 3329
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_5
    sget-boolean v5, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "ReadScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MENU_SEE_CONVERSATION id>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen;->long_press_groupId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3330
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mail/accounts/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3331
    .restart local v4       #uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3332
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3333
    const-string v5, "_isIMAP4"

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->isIMAP4()Z

    move-result v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3334
    const-string v5, "provider"

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3335
    const-string v5, "ExpandMailId"

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen;->long_press_groupId:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3336
    const-string v5, "MailTabGroupAccount"

    iget-wide v7, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-virtual {v3, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3337
    const-string v5, "GO_TO_TAB"

    const-string v7, "tab_thread"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3338
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3339
    const/16 v5, 0xf

    invoke-virtual {p0, v3, v5}, Lcom/htc/android/mail/ReadScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 3342
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->composeNew()V

    goto/16 :goto_1

    .line 3345
    :pswitch_7
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->markUnreadMail()V

    goto/16 :goto_1

    .line 3350
    :pswitch_8
    invoke-direct {p0, v6}, Lcom/htc/android/mail/ReadScreen;->replyMail(I)V

    goto/16 :goto_1

    .line 3357
    :pswitch_9
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->forwardMail()V

    goto/16 :goto_1

    .line 3360
    :pswitch_a
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->moveMarkMail2()V

    goto/16 :goto_1

    .line 3363
    :pswitch_b
    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->askBeforeDelete()I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 3364
    invoke-virtual {p0, v11}, Lcom/htc/android/mail/ReadScreen;->showDialog(I)V

    goto/16 :goto_1

    .line 3366
    :cond_6
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->deleteMail()V

    goto/16 :goto_1

    .line 3373
    :pswitch_c
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->replyAllMail()V

    goto/16 :goto_1

    .line 3377
    :pswitch_d
    sget-boolean v7, Lcom/htc/android/mail/ReadScreen;->_showToCC:Z

    if-nez v7, :cond_7

    move v5, v6

    :cond_7
    sput-boolean v5, Lcom/htc/android/mail/ReadScreen;->_showToCC:Z

    goto/16 :goto_1

    .line 3381
    :pswitch_e
    const/4 v6, 0x6

    invoke-direct {p0, v6}, Lcom/htc/android/mail/ReadScreen;->replyMail(I)V

    goto/16 :goto_2

    .line 3384
    :pswitch_f
    iget-boolean v6, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-nez v6, :cond_8

    .line 3385
    invoke-direct {p0, v11}, Lcom/htc/android/mail/ReadScreen;->meetingRespEvent(I)V

    goto/16 :goto_2

    .line 3387
    :cond_8
    invoke-virtual {p0, v13}, Lcom/htc/android/mail/ReadScreen;->showDialog(I)V

    goto/16 :goto_2

    .line 3391
    :pswitch_10
    iget-boolean v6, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-nez v6, :cond_9

    .line 3392
    invoke-direct {p0, v12}, Lcom/htc/android/mail/ReadScreen;->replyMail(I)V

    goto/16 :goto_2

    .line 3394
    :cond_9
    invoke-virtual {p0, v13}, Lcom/htc/android/mail/ReadScreen;->showDialog(I)V

    goto/16 :goto_2

    .line 3398
    :pswitch_11
    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/htc/android/mail/ReadScreen;->replyMail(I)V

    goto/16 :goto_2

    .line 3401
    :pswitch_12
    invoke-virtual {p0, v12}, Lcom/htc/android/mail/ReadScreen;->showDialog(I)V

    goto/16 :goto_2

    .line 3404
    :pswitch_13
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->enableCopyText()V

    goto/16 :goto_2

    .line 3408
    :pswitch_14
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3409
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.westtek.jcp"

    const-string v8, "com.westtek.jcp.JCPRINT"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3410
    const-string v6, "uri"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://mail/messages/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3411
    const/16 v6, 0x13

    invoke-virtual {p0, v3, v6}, Lcom/htc/android/mail/ReadScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 3412
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 3413
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 3418
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_15
    invoke-direct {p0, v6}, Lcom/htc/android/mail/ReadScreen;->replyMail(I)V

    goto/16 :goto_1

    .line 3421
    :pswitch_16
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->replyAllMail()V

    goto/16 :goto_1

    .line 3424
    :pswitch_17
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->forwardMail()V

    goto/16 :goto_1

    .line 3427
    :pswitch_18
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->moveMarkMail2()V

    goto/16 :goto_1

    .line 3430
    :pswitch_19
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->markUnreadMail()V

    goto/16 :goto_1

    .line 3433
    :pswitch_1a
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->markStar()V

    goto/16 :goto_1

    .line 3437
    :pswitch_1b
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->saveAsTask()V

    goto/16 :goto_1

    .line 3306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_1
        :pswitch_4
        :pswitch_13
        :pswitch_5
        :pswitch_a
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_2
        :pswitch_3
        :pswitch_1b
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 3024
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3026
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v0, :cond_1

    .line 3027
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AbsRequestController;->removeWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 3030
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    if-eqz v0, :cond_2

    .line 3031
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v0}, Lcom/htc/android/mail/HtcWebView;->clearMemory()V

    .line 3033
    :cond_2
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .parameter "menu"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/16 v9, 0x1c

    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 3188
    const/16 v3, 0x1a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 3189
    .local v2, previousItem:Landroid/view/MenuItem;
    const/16 v3, 0x1b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 3190
    .local v1, nextItem:Landroid/view/MenuItem;
    iget-wide v3, p0, Lcom/htc/android/mail/ReadScreen;->mPreMessageId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 3191
    if-eqz v2, :cond_0

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3196
    :cond_0
    :goto_0
    iget-wide v3, p0, Lcom/htc/android/mail/ReadScreen;->mNextMessageId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 3197
    if-eqz v1, :cond_1

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3203
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mFromMimeViewer:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mSingleItem:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z

    if-eqz v3, :cond_8

    .line 3204
    :cond_2
    const/16 v3, 0xf

    invoke-direct {p0, p1, v3}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3205
    const/4 v3, 0x6

    invoke-direct {p0, p1, v3}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3206
    invoke-direct {p0, p1, v8}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3207
    invoke-direct {p0, p1, v7}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3208
    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3209
    invoke-direct {p0, p1, v11}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3210
    const/16 v3, 0x12

    invoke-direct {p0, p1, v3}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3211
    const/16 v3, 0x11

    invoke-direct {p0, p1, v3}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3212
    invoke-direct {p0, p1, v9}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3224
    :goto_2
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_3

    .line 3225
    const/16 v3, 0x13

    invoke-direct {p0, p1, v3}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3228
    :cond_3
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3230
    .local v0, item2:Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3231
    iget v3, p0, Lcom/htc/android/mail/ReadScreen;->_read:I

    if-nez v3, :cond_b

    .line 3232
    const v3, 0x7f0b0092

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3233
    const v3, 0x2080a4e

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3240
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isTaskApExist(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3241
    invoke-direct {p0, p1, v9}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3244
    :cond_5
    return v7

    .line 3193
    .end local v0           #item2:Landroid/view/MenuItem;
    :cond_6
    if-eqz v2, :cond_0

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 3199
    :cond_7
    if-eqz v1, :cond_1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 3213
    :cond_8
    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mIsMeetingView:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mIsCancelMeetingView:Z

    if-eqz v3, :cond_a

    .line 3214
    :cond_9
    invoke-direct {p0, p1, v8}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3215
    invoke-direct {p0, p1, v9}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    goto :goto_2

    .line 3217
    :cond_a
    invoke-direct {p0, p1, v7}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3218
    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3219
    invoke-direct {p0, p1, v11}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    .line 3221
    const/4 v3, 0x6

    invoke-direct {p0, p1, v3}, Lcom/htc/android/mail/ReadScreen;->disableMenuItem(Landroid/view/Menu;I)V

    goto :goto_2

    .line 3235
    .restart local v0       #item2:Landroid/view/MenuItem;
    :cond_b
    const v3, 0x7f0b0093

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3236
    const v3, 0x2080a9c

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 3565
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3069
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3070
    sget-boolean v3, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ReadScreen"

    const-string v4, "onResume>"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3086
    .local v1, config:Landroid/content/res/Configuration;
    iput-boolean v6, p0, Lcom/htc/android/mail/ReadScreen;->mShowRecipientDialog:Z

    .line 3087
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mMessageIdsUriStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen;->mSortRule:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/ReadScreen$MessageIds;->checkIsMessageIdsChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3088
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->updateDateField()V

    .line 3091
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v3, :cond_1

    .line 3092
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/AbsRequestController;->addWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 3095
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.eas.mail.priority.high"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3096
    .local v2, syncStateIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ReadScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 3098
    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->mIsFirstQuery:Z

    if-nez v3, :cond_3

    .line 3099
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    new-instance v4, Lcom/htc/android/mail/ReadScreen$25;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/ReadScreen$25;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    invoke-virtual {v3, v4}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3110
    iput-boolean v7, p0, Lcom/htc/android/mail/ReadScreen;->mIsFirstQuery:Z

    .line 3127
    :cond_2
    :goto_0
    return-void

    .line 3113
    :cond_3
    iget-wide v3, p0, Lcom/htc/android/mail/ReadScreen;->mAccountId:J

    invoke-static {v3, v4}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 3114
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 3115
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    goto :goto_0

    .line 3119
    :cond_5
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->updatePhotoThread()V

    .line 3122
    iget-boolean v3, p0, Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z

    if-eqz v3, :cond_2

    .line 3123
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->updateContactThread()V

    .line 3124
    iput-boolean v6, p0, Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z

    goto :goto_0
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 3562
    return-void
.end method

.method protected final onStop()V
    .locals 2

    .prologue
    .line 3568
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 3569
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v1, "onStop>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3571
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreen;->mIsPreNextAction:Z

    if-nez v0, :cond_1

    .line 3572
    sget-object v0, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 3573
    :cond_1
    return-void
.end method

.method scrollSubject()V
    .locals 4

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/mail/ReadScreen$21;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReadScreen$21;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2622
    return-void
.end method

.method public startScrollPageEnd()V
    .locals 3

    .prologue
    .line 4358
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4378
    :cond_0
    :goto_0
    return-void

    .line 4362
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_2

    .line 4363
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    const-string v2, "No need to getRemain"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4367
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4369
    .local v0, unfinished:Landroid/widget/Button;
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ReadScreen"

    const-string v2, "processing getRemain -"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4370
    :cond_3
    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 4371
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen;->getUnfinishedListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4372
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    const-string v2, "No request exist. start getRemain"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4374
    :cond_4
    sget-boolean v1, Lcom/htc/android/mail/ReadScreen;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    const-string v2, "Request already exists"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateContactThread()V
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mToRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ReadScreen;->updateReceiverContacts(Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    if-eqz v0, :cond_1

    .line 1914
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mCcRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ReadScreen;->updateReceiverContacts(Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V

    .line 1917
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mCurrentSender:Lcom/htc/android/mail/ReadScreen$MailHeader;

    if-eqz v0, :cond_2

    .line 1918
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mCurrentSender:Lcom/htc/android/mail/ReadScreen$MailHeader;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$MailHeader;->addr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ReadScreen;->updateSenderContact(Ljava/lang/String;)V

    .line 1920
    :cond_2
    return-void
.end method

.method updateDateField()V
    .locals 9

    .prologue
    const v8, 0x7f090151

    .line 3037
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 3038
    .local v2, is24Format:Z
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    .line 3039
    .local v0, currentFormat:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3040
    const-string v0, "E, MMM d, yyyy h:mm aa"

    .line 3042
    :cond_0
    if-eqz v2, :cond_1

    .line 3043
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kk:mm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3044
    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mArriveMillis:J

    invoke-static {v0, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3045
    .local v1, dateFormat:Ljava/lang/CharSequence;
    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3059
    .end local v1           #dateFormat:Ljava/lang/CharSequence;
    :goto_0
    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mArriveMillis:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 3060
    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3064
    :goto_1
    return-void

    .line 3047
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3048
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh_tw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh_cn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3049
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " aa h:mm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3050
    iget-wide v4, p0, Lcom/htc/android/mail/ReadScreen;->mArriveMillis:J

    invoke-static {v0, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3051
    .restart local v1       #dateFormat:Ljava/lang/CharSequence;
    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3053
    .end local v1           #dateFormat:Ljava/lang/CharSequence;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h:mm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3054
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/htc/android/mail/ReadScreen;->mArriveMillis:J

    invoke-static {v0, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "aa"

    iget-wide v6, p0, Lcom/htc/android/mail/ReadScreen;->mArriveMillis:J

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3056
    .local v1, dateFormat:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3062
    .end local v1           #dateFormat:Ljava/lang/String;
    .end local v3           #locale:Ljava/util/Locale;
    :cond_4
    invoke-virtual {p0, v8}, Lcom/htc/android/mail/ReadScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public updatePrevoisNextButton()V
    .locals 2

    .prologue
    .line 6123
    iget-wide v0, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen$MessageIds;->getPreMessageId(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/ReadScreen;->mPreMessageId:J

    .line 6124
    iget-wide v0, p0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen$MessageIds;->getNextMessageId(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/ReadScreen;->mNextMessageId:J

    .line 6125
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6126
    return-void
.end method
