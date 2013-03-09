.class public Lcom/htc/android/mail/MailCommon;
.super Ljava/lang/Object;
.source "MailCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MailCommon$14;,
        Lcom/htc/android/mail/MailCommon$SupportFileList;,
        Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;,
        Lcom/htc/android/mail/MailCommon$CursorType;,
        Lcom/htc/android/mail/MailCommon$Command;,
        Lcom/htc/android/mail/MailCommon$SaveStorageType;
    }
.end annotation


# static fields
.field public static final ATTACHMENT_GLOBAL_URI_PREFIX:Ljava/lang/String; = "content://com.htc.android.mail.attachmentprovider/searchSvrParts/"

.field public static final ATTACHMENT_URI_PREFIX:Ljava/lang/String; = "content://com.htc.android.mail.attachmentprovider/parts/"

.field private static final AUDIO_MIMETYPE:I = 0x1

.field public static COLOR_DEFAULT_ITEM_READ:I = 0x0

.field public static COLOR_SKT_ITEM_READ:I = 0x0

.field public static final CONTENT_DATADATA_URI:Ljava/lang/String; = "/data/data"

.field public static final CONTENT_SHEMA_URI:Ljava/lang/String; = "content"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DIAGLOG_CONNECTION_FAILED:I = 0xc8

.field public static final DONT_SET_LAST_ACCT_ENTRY:Ljava/lang/String; = "dont_set_last_acct_entry"

.field public static final EX_acceptMeeting:I = 0x4

.field public static final EX_declineMeeting:I = 0x6

.field public static final EX_forwardMeeting:I = 0x8

.field public static final EX_meetingInvitation:I = 0x3

.field public static final EX_meetingResp:I = 0x9

.field public static final EX_proposeNewTime:I = 0x7

.field public static final EX_sendMail:I = 0x0

.field public static final EX_smartForward:I = 0x2

.field public static final EX_smartReply:I = 0x1

.field public static final EX_tentativeAccept:I = 0x5

.field public static final FromListTab:Ljava/lang/String; = "fromListTab"

.field public static final GENERIC_MAX_ATTACHMENT_SIZE:I = 0x1400000

.field public static final GO_TO_TAB:Ljava/lang/String; = "GO_TO_TAB"

.field private static final IMAGE_MIMETYPE:I = 0x3

.field public static final INTENT_TAB_CHANGED:Ljava/lang/String; = "Intent_Tab_Changed"

.field public static final LAST_ACCOUNT_ENTER:Ljava/lang/String; = "LAST_ACCOUNT_ENTER"

.field public static final MAIL_IMPORTANCE_HIGH:I = 0x2

.field public static final MAIL_IMPORTANCE_NORMAL:I = 0x1

.field public static final MAIL_IMPORTANCR_LOW:I = 0x0

.field public static final MAIL_READ_FROM_ALL_ACCOUNT:Ljava/lang/String; = "MailReadFromAllAccount"

.field public static final MAIL_TAB_GROUP_ACCOUNT:Ljava/lang/String; = "MailTabGroupAccount"

.field public static final MAIL_TAB_GROUP_ID:Ljava/lang/String; = "ExpandMailId"

.field public static final MAIL_TAB_RECEIVED:Ljava/lang/String; = "tab_received"

.field public static final MAX_ATTACHMENT_SIZE:I = 0xa00000

.field public static final MAX_DISPLAY_FILE_SUB_NAME_LENGTH:I = 0x8

.field public static final MAX_MAIL_SIZE:I = 0xa00000

.field public static final MEDIA_VOLUME_EXTERNAL_STORAGE:Ljava/lang/String; = "external"

.field public static final MEDIA_VOLUME_PHONE_STORAGE:Ljava/lang/String; = "phoneStorage"

.field public static final MailGlancePreview:Ljava/lang/String; = "MailGlancePreview"

.field private static MailListItemShowSize:Z = false

.field public static final MailList_Delete:I = 0x1

.field public static final MailList_Move:I = 0x2

.field public static final MailList_Normal:I = 0x0

.field public static final NEW_FOLDER_INDEX:Ljava/lang/String; = "NEW_FOLDER_INDEX"

.field public static final NOTIFICATION_REQ_CODE_NEW_MAIL:I = 0x20000000

.field public static final NOTIFICATION_REQ_CODE_SEND_ERROR:I = 0x10000000

.field public static final NOT_BACK_TO_INBOX:Ljava/lang/String; = "NOT_BACK_TO_INBOX"

.field public static final PARTS_GLOBAL_URI_PREFIX:Ljava/lang/String; = "content://mail/searchSvrParts/"

.field public static final PARTS_URI_PREFIX:Ljava/lang/String; = "content://mail/parts/"

.field public static final REQ_ACCOUND_ID:Ljava/lang/String; = "accountId"

.field public static final REQ_MAIL_BOX:Ljava/lang/String; = "mailboxId"

.field public static final REQ_MAIL_TAB_INDEX:Ljava/lang/String; = "tabViewIndex"

.field public static final RESULT_ACCOUND_ID:Ljava/lang/String; = "accountId"

.field public static final SHOW_EXCHANGE_ONLY:Ljava/lang/String; = "show_exchange_only"

.field public static final SHOW_SEPARATE_ACCOUNT_ONLY:Ljava/lang/String; = "show_separate_account_only"

.field public static final TAB_NAME:Ljava/lang/String; = "TAB_NAME"

.field private static final TAG:Ljava/lang/String; = "MailCommon"

.field public static final THREAD_ITEM:I = 0xa

.field public static TimeFormat24:Z = false

.field private static final VIDEO_MIMETYPE:I = 0x2

.field public static account_drawable:[[I = null

.field public static backToGlance:Z = false

.field public static c_read_primary:Landroid/content/res/ColorStateList; = null

.field public static c_read_secondary:Landroid/content/res/ColorStateList; = null

.field public static c_unread_preview:Landroid/content/res/ColorStateList; = null

.field public static c_unread_primary:Landroid/content/res/ColorStateList; = null

.field public static c_unread_secondary:Landroid/content/res/ColorStateList; = null

.field public static cal:Ljava/util/Calendar; = null

.field private static final isNotNormalType:I = 0x0

.field private static m_listParseTag:[Ljava/lang/String; = null

.field public static final m_szExternalStoragePath:Ljava/lang/String; = null

.field private static m_szPhoneDownloadPath:Ljava/lang/String; = null

.field private static m_szPhoneStoragePath:Ljava/lang/String; = null

.field public static final sNoSmartCommand:I = 0x0

.field public static final sProviderEAS:Ljava/lang/String; = "Exchange"

.field public static final sProviderGmail:Ljava/lang/String; = "Gmail"

.field public static final sProviderYahoo:Ljava/lang/String; = "Yahoo"

.field public static final sSmartForward:I = 0xa

.field public static final showNetworkDlgOnce:Ljava/lang/String; = "showNetworkDlgOnce"


# instance fields
.field private final DIAGLOG_ATTACH_MISSING:I

.field private final DIAGLOG_ATTACH_MISSING_DRAFT:I

.field private final DIAGLOG_IMPORT_VCARD:I

.field private final DIAGLOG_INTERNAL_SD_SPACE_NOT_ENOUGH:I

.field private final DIAGLOG_INTERNAL_SPACE_NOT_ENOUGH:I

.field private final DIAGLOG_SDCARD_NOEXIST:I

.field private final DIAGLOG_SDCARD_NOEXIST_FOR_ZIP:I

.field private final DIAGLOG_SDCARD_READONLY:I

.field private final DIAGLOG_SDCARD_SHARED:I

.field private final DIAGLOG_SD_INTERNAL_SPACE_NOT_ENOUGH:I

.field private final DIAGLOG_SD_SPACE_NOT_ENOUGH:I

.field private final DIAGLOG_SPACE_NOT_ENOUGH:I

.field private final SAVE_FILE_COMPLETE:I

.field private final SAVE_FILE_FAILURE:I

.field private final SAVE_ZIP_FILE_FAILURE:I

.field private final SAVE_ZIP_FILE_TOSD_COMPLETE:I

.field private final attachBad:I

.field public attachDownloadActionListener:Landroid/view/View$OnClickListener;

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mBtnView:Landroid/view/View;

.field private mContainer:Landroid/view/ViewGroup;

.field public mContext:Landroid/content/Context;

.field private mCurAttach:Lcom/htc/android/mail/Attachment;

.field private mCurStorageType:Lcom/htc/android/mail/MailCommon$SaveStorageType;

.field private mDeleteContactDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFromSearchSvrMailView:Z

.field private mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageId:J

.field private mRequestController:Lcom/htc/android/mail/AbsRequestController;

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

.field public missAttachListenr:Landroid/view/View$OnClickListener;

.field public showAttachmentMenuDialog:Landroid/view/View$OnClickListener;

.field public stopAttachDownloadListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 122
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    .line 127
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailCommon;->DBG:Z

    .line 168
    sput-boolean v3, Lcom/htc/android/mail/MailCommon;->MailListItemShowSize:Z

    .line 180
    sput-boolean v3, Lcom/htc/android/mail/MailCommon;->TimeFormat24:Z

    .line 207
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v0, v3

    const-string v1, "https://"

    aput-object v1, v0, v4

    const-string v1, "rtsp://"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/android/mail/MailCommon;->m_listParseTag:[Ljava/lang/String;

    .line 216
    sput-object v2, Lcom/htc/android/mail/MailCommon;->m_szPhoneStoragePath:Ljava/lang/String;

    .line 217
    sput-object v2, Lcom/htc/android/mail/MailCommon;->m_szPhoneDownloadPath:Ljava/lang/String;

    .line 218
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailCommon;->m_szExternalStoragePath:Ljava/lang/String;

    .line 247
    sput-object v2, Lcom/htc/android/mail/MailCommon;->c_unread_primary:Landroid/content/res/ColorStateList;

    .line 248
    sput-object v2, Lcom/htc/android/mail/MailCommon;->c_unread_secondary:Landroid/content/res/ColorStateList;

    .line 249
    sput-object v2, Lcom/htc/android/mail/MailCommon;->c_unread_preview:Landroid/content/res/ColorStateList;

    .line 250
    sput-object v2, Lcom/htc/android/mail/MailCommon;->c_read_primary:Landroid/content/res/ColorStateList;

    .line 251
    sput-object v2, Lcom/htc/android/mail/MailCommon;->c_read_secondary:Landroid/content/res/ColorStateList;

    .line 253
    sput v3, Lcom/htc/android/mail/MailCommon;->COLOR_SKT_ITEM_READ:I

    .line 254
    sput v3, Lcom/htc/android/mail/MailCommon;->COLOR_DEFAULT_ITEM_READ:I

    .line 261
    new-array v0, v5, [[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/MailCommon;->account_drawable:[[I

    .line 288
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailCommon;->cal:Ljava/util/Calendar;

    return-void

    .line 261
    nop

    :array_0
    .array-data 0x4
        0x54t 0x0t 0x8t 0x2t
        0x48t 0x0t 0x8t 0x2t
        0x4bt 0x0t 0x8t 0x2t
        0x4ct 0x0t 0x8t 0x2t
        0x4ft 0x0t 0x8t 0x2t
    .end array-data

    :array_1
    .array-data 0x4
        0x5at 0x0t 0x8t 0x2t
        0x53t 0x0t 0x8t 0x2t
        0x49t 0x0t 0x8t 0x2t
        0x4dt 0x0t 0x8t 0x2t
        0x55t 0x0t 0x8t 0x2t
        0x57t 0x0t 0x8t 0x2t
        0x4et 0x0t 0x8t 0x2t
        0x52t 0x0t 0x8t 0x2t
        0x4at 0x0t 0x8t 0x2t
        0x58t 0x0t 0x8t 0x2t
        0x5bt 0x0t 0x8t 0x2t
        0x56t 0x0t 0x8t 0x2t
        0x5ct 0x0t 0x8t 0x2t
        0x59t 0x0t 0x8t 0x2t
        0x50t 0x0t 0x8t 0x2t
        0x51t 0x0t 0x8t 0x2t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;JJLjava/lang/ref/WeakReference;Lcom/htc/android/mail/AbsRequestController;)V
    .locals 5
    .parameter "context"
    .parameter "accountId"
    .parameter "messageId"
    .parameter
    .parameter "tRequestController"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Lcom/htc/android/mail/AbsRequestController;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, tWeakRequestHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 320
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object v2, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    .line 174
    iput-object v2, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    .line 175
    iput-object v2, p0, Lcom/htc/android/mail/MailCommon;->mCurAttach:Lcom/htc/android/mail/Attachment;

    .line 176
    iput-object v2, p0, Lcom/htc/android/mail/MailCommon;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 177
    iput-object v2, p0, Lcom/htc/android/mail/MailCommon;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 178
    iput-object v2, p0, Lcom/htc/android/mail/MailCommon;->mContainer:Landroid/view/ViewGroup;

    .line 179
    iput-boolean v3, p0, Lcom/htc/android/mail/MailCommon;->mFromSearchSvrMailView:Z

    .line 184
    iput v4, p0, Lcom/htc/android/mail/MailCommon;->DIAGLOG_IMPORT_VCARD:I

    .line 186
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->DIAGLOG_SDCARD_NOEXIST:I

    .line 187
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->DIAGLOG_SDCARD_SHARED:I

    .line 188
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->DIAGLOG_SDCARD_READONLY:I

    .line 189
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->DIAGLOG_SPACE_NOT_ENOUGH:I

    .line 190
    const/16 v0, 0xd

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->DIAGLOG_ATTACH_MISSING:I

    .line 192
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->attachBad:I

    .line 193
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->DIAGLOG_ATTACH_MISSING_DRAFT:I

    .line 194
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->DIAGLOG_SDCARD_NOEXIST_FOR_ZIP:I

    .line 195
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->DIAGLOG_SD_SPACE_NOT_ENOUGH:I

    .line 196
    const/16 v0, 0x13

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->DIAGLOG_INTERNAL_SPACE_NOT_ENOUGH:I

    .line 197
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->DIAGLOG_INTERNAL_SD_SPACE_NOT_ENOUGH:I

    .line 198
    const/16 v0, 0x1f5

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->DIAGLOG_SD_INTERNAL_SPACE_NOT_ENOUGH:I

    .line 202
    iput v3, p0, Lcom/htc/android/mail/MailCommon;->SAVE_FILE_COMPLETE:I

    .line 203
    iput v4, p0, Lcom/htc/android/mail/MailCommon;->SAVE_FILE_FAILURE:I

    .line 204
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->SAVE_ZIP_FILE_TOSD_COMPLETE:I

    .line 205
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/mail/MailCommon;->SAVE_ZIP_FILE_FAILURE:I

    .line 256
    iput-object v2, p0, Lcom/htc/android/mail/MailCommon;->mBtnView:Landroid/view/View;

    .line 541
    new-instance v0, Lcom/htc/android/mail/MailCommon$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailCommon$1;-><init>(Lcom/htc/android/mail/MailCommon;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailCommon;->mDeleteContactDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1465
    new-instance v0, Lcom/htc/android/mail/MailCommon$6;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailCommon$6;-><init>(Lcom/htc/android/mail/MailCommon;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailCommon;->showAttachmentMenuDialog:Landroid/view/View$OnClickListener;

    .line 1541
    new-instance v0, Lcom/htc/android/mail/MailCommon$7;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailCommon$7;-><init>(Lcom/htc/android/mail/MailCommon;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailCommon;->attachDownloadActionListener:Landroid/view/View$OnClickListener;

    .line 1590
    new-instance v0, Lcom/htc/android/mail/MailCommon$8;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailCommon$8;-><init>(Lcom/htc/android/mail/MailCommon;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailCommon;->stopAttachDownloadListener:Landroid/view/View$OnClickListener;

    .line 1614
    new-instance v0, Lcom/htc/android/mail/MailCommon$9;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailCommon$9;-><init>(Lcom/htc/android/mail/MailCommon;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailCommon;->missAttachListenr:Landroid/view/View$OnClickListener;

    .line 321
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    .line 322
    invoke-static {p2, p3}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    .line 323
    iput-wide p4, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    .line 324
    iput-object p6, p0, Lcom/htc/android/mail/MailCommon;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 325
    iput-object p7, p0, Lcom/htc/android/mail/MailCommon;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 326
    return-void
.end method

.method public static GotoMailListScreen(Landroid/content/Context;JZ)V
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "refresh"

    .prologue
    const/4 v6, 0x0

    .line 1735
    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GotoMailListScreen>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    :cond_0
    invoke-static {p1, p2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1738
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_1

    .line 1754
    .end local p0
    :goto_0
    return-void

    .line 1741
    .restart local p0
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1742
    .local v2, url:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1743
    .local v1, intent:Landroid/content/Intent;
    const-class v3, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1744
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1745
    const-string v3, "_isIMAP4"

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->isIMAP4()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1746
    const-string v3, "provider"

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1747
    const-string v3, "position"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1748
    const-string v3, "_isExchange"

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->isExchange()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1750
    if-eqz p3, :cond_2

    .line 1751
    const-string v3, "refresh"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1752
    :cond_2
    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GotoMailListScreen<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    :cond_3
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static GotoMailWheelScreen(Landroid/content/Context;JI)V
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "position"

    .prologue
    .line 2435
    sget-boolean v5, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailCommon"

    const-string v6, "GotoMailWheelScreen>"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mail/accounts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2437
    .local v4, url:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2439
    .local v1, intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2446
    invoke-static {p1, p2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2447
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    invoke-static {v5}, Lcom/htc/android/mail/Mail;->isIMAP4(I)Z

    move-result v3

    .line 2448
    .local v3, isIMAP4:Z
    const-string v5, "_isIMAP4"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2449
    const-string v5, "provider"

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2450
    const-string v5, "position"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2452
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    .line 2453
    .local v2, isExchange:Z
    :goto_0
    const-string v5, "_isExchange"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2457
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2458
    return-void

    .line 2452
    .end local v2           #isExchange:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static PlayMedia(Lcom/htc/android/mail/Attachment;Landroid/content/Context;I)V
    .locals 29
    .parameter "attach"
    .parameter "context"
    .parameter "protocol"

    .prologue
    .line 2098
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/android/mail/Attachment;->id:J

    .line 2099
    .local v8, _partId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 2100
    .local v5, _filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 2101
    .local v6, _filepath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 2102
    .local v7, _mimetype:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/Attachment;->attachSize:J

    .line 2104
    .local v3, _fileSize:J
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v26, :cond_0

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PlayMedia:_partId>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    :cond_0
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v26, :cond_1

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_filepath, _filename>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    :cond_1
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v26, :cond_2

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_mimetype, _fileSize>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    :cond_2
    if-eqz v5, :cond_3

    if-nez v6, :cond_4

    .line 2263
    :cond_3
    :goto_0
    return-void

    .line 2112
    :cond_4
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 2114
    .local v23, this_mimeType:Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Lcom/htc/android/mail/MailCommon;->getSubFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2116
    .local v14, extname:Ljava/lang/String;
    const/16 v24, 0x0

    .line 2117
    .local v24, uriFlag:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Attachment;->attachOrgUri:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 2118
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/Attachment;->attachOrgUri:Ljava/lang/String;

    .line 2123
    :cond_5
    const-wide/16 v26, 0x0

    cmp-long v26, v8, v26

    if-nez v26, :cond_f

    .line 2124
    const-string v26, "content"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string v26, "file"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 2125
    :cond_6
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 2126
    .local v22, target:Landroid/net/Uri;
    const/16 v24, 0x1

    .line 2134
    :goto_2
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v26, :cond_7

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "target>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    :cond_7
    if-eqz v24, :cond_10

    .line 2141
    new-instance v21, Lcom/htc/android/mail/MailCommon$SupportFileList;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 2149
    .local v21, sList:Lcom/htc/android/mail/MailCommon$SupportFileList;
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/mail/MailCommon$SupportFileList;->getMimeType()Ljava/lang/String;

    move-result-object v25

    .line 2150
    .local v25, webkit_mimetype:Ljava/lang/String;
    const/16 v21, 0x0

    .line 2153
    if-eqz v14, :cond_8

    const-string v26, "vcs"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_a

    :cond_8
    if-eqz v23, :cond_9

    const-string v26, "text/calendar"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_a

    :cond_9
    if-eqz v23, :cond_13

    const-string v26, "text/x-vcalendar"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 2158
    :cond_a
    const/4 v15, 0x0

    .line 2159
    .local v15, f:Ljava/io/FileInputStream;
    const/16 v18, 0x0

    .line 2160
    .local v18, fileSize:I
    const/16 v20, 0x0

    .line 2162
    .local v20, icsStr:Ljava/lang/String;
    if-eqz v24, :cond_11

    .line 2163
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const-string v28, "r"

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .end local v15           #f:Ljava/io/FileInputStream;
    .local v16, f:Ljava/io/FileInputStream;
    move-object/from16 v15, v16

    .line 2168
    .end local v16           #f:Ljava/io/FileInputStream;
    .restart local v15       #f:Ljava/io/FileInputStream;
    :goto_4
    invoke-virtual {v15}, Ljava/io/FileInputStream;->available()I

    move-result v18

    .line 2169
    move/from16 v0, v18

    new-array v10, v0, [B

    .line 2170
    .local v10, buf:[B
    invoke-virtual {v15, v10}, Ljava/io/FileInputStream;->read([B)I

    .line 2171
    new-instance v20, Ljava/lang/String;

    .end local v20           #icsStr:Ljava/lang/String;
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v18

    invoke-direct {v0, v10, v1, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    .line 2187
    .restart local v20       #icsStr:Ljava/lang/String;
    if-eqz v15, :cond_b

    :try_start_1
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 2192
    :cond_b
    :goto_5
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v26, :cond_c

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "try import iCalendar: Size:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", Context:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    :cond_c
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 2195
    .local v19, icsIntent:Landroid/content/Intent;
    const-string v26, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2196
    const-string v26, "text/x-vcalendar"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2197
    const-string v26, "ics"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2198
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2112
    .end local v10           #buf:[B
    .end local v14           #extname:Ljava/lang/String;
    .end local v15           #f:Ljava/io/FileInputStream;
    .end local v18           #fileSize:I
    .end local v19           #icsIntent:Landroid/content/Intent;
    .end local v20           #icsStr:Ljava/lang/String;
    .end local v21           #sList:Lcom/htc/android/mail/MailCommon$SupportFileList;
    .end local v22           #target:Landroid/net/Uri;
    .end local v23           #this_mimeType:Ljava/lang/String;
    .end local v24           #uriFlag:Z
    .end local v25           #webkit_mimetype:Ljava/lang/String;
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 2128
    .restart local v14       #extname:Ljava/lang/String;
    .restart local v23       #this_mimeType:Ljava/lang/String;
    .restart local v24       #uriFlag:Z
    :cond_e
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2129
    .local v17, file:Ljava/io/File;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v22

    .line 2130
    .restart local v22       #target:Landroid/net/Uri;
    goto/16 :goto_2

    .line 2132
    .end local v17           #file:Ljava/io/File;
    .end local v22           #target:Landroid/net/Uri;
    :cond_f
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/Attachment;->globalAttach:Z

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Lcom/htc/android/mail/MailCommon;->attachmentMailContentUri(JZ)Landroid/net/Uri;

    move-result-object v22

    .restart local v22       #target:Landroid/net/Uri;
    goto/16 :goto_2

    .line 2143
    :cond_10
    new-instance v21, Lcom/htc/android/mail/MailCommon$SupportFileList;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .restart local v21       #sList:Lcom/htc/android/mail/MailCommon$SupportFileList;
    goto/16 :goto_3

    .line 2166
    .restart local v15       #f:Ljava/io/FileInputStream;
    .restart local v18       #fileSize:I
    .restart local v20       #icsStr:Ljava/lang/String;
    .restart local v25       #webkit_mimetype:Ljava/lang/String;
    :cond_11
    :try_start_2
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    .end local v15           #f:Ljava/io/FileInputStream;
    .restart local v16       #f:Ljava/io/FileInputStream;
    move-object/from16 v15, v16

    .end local v16           #f:Ljava/io/FileInputStream;
    .restart local v15       #f:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 2172
    .end local v20           #icsStr:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 2173
    .local v12, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v26, "MailCommon"

    const-string v27, "FileNotFoundException>"

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2187
    if-eqz v15, :cond_3

    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2188
    :catch_1
    move-exception v12

    .line 2189
    .local v12, e:Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2176
    .end local v12           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v13

    .line 2177
    .local v13, ex:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2187
    if-eqz v15, :cond_3

    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 2188
    :catch_3
    move-exception v12

    goto :goto_6

    .line 2179
    .end local v13           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v12

    .line 2180
    .local v12, e:Ljava/lang/OutOfMemoryError;
    :try_start_7
    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "OFM>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    const v26, 0x7f0b0137

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    .line 2182
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    .line 2183
    .local v11, comRun:Ljava/lang/Runtime;
    invoke-virtual {v11}, Ljava/lang/Runtime;->gc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2187
    if-eqz v15, :cond_3

    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 2188
    :catch_5
    move-exception v12

    goto :goto_6

    .line 2186
    .end local v11           #comRun:Ljava/lang/Runtime;
    .end local v12           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v26

    .line 2187
    if-eqz v15, :cond_12

    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 2186
    :cond_12
    :goto_7
    throw v26

    .line 2250
    .end local v15           #f:Ljava/io/FileInputStream;
    .end local v18           #fileSize:I
    :cond_13
    if-nez v25, :cond_14

    move-object/from16 v25, v23

    .line 2251
    :cond_14
    :try_start_a
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/htc/android/mail/MailCommon;->determineMimeType(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2252
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v26, :cond_15

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "MIME>  "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    :cond_15
    if-eqz v14, :cond_16

    const-string v26, "APK"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 2254
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v6, v1}, Lcom/htc/android/mail/MailCommon;->playApkFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 2262
    :goto_8
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v26, :cond_3

    const-string v26, "MailCommon"

    const-string v27, "[ATS][com.htc.android.mail][open_attachment][successful]"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2256
    :cond_16
    :try_start_b
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->createIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_8

    .line 2258
    :catch_6
    move-exception v12

    .line 2259
    .local v12, e:Ljava/lang/Exception;
    const v26, 0x7f0b01a7

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 2188
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v15       #f:Ljava/io/FileInputStream;
    .restart local v18       #fileSize:I
    :catch_7
    move-exception v12

    .line 2189
    .restart local v12       #e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 2188
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v10       #buf:[B
    .restart local v20       #icsStr:Ljava/lang/String;
    :catch_8
    move-exception v12

    .line 2189
    .restart local v12       #e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public static PlayNormalMimeTypeMedia(Landroid/net/Uri;ILandroid/content/Context;)V
    .locals 6
    .parameter "target"
    .parameter "codeNameOfMimeType"
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 2024
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayNormalMimeTypeMedia codeNameOfMimeType>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2026
    .local v1, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 2046
    :goto_0
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2050
    :goto_1
    return-void

    .line 2029
    :pswitch_0
    const-string v2, "oneshot"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2030
    const-string v2, "audio/*"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2033
    :pswitch_1
    const-string v2, "oneshot"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2035
    const-string v2, "landscape"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2036
    const-string v2, "video/*"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2039
    :pswitch_2
    const-string v2, "viewSingleImage"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2040
    const-string v2, "image/*"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2047
    :catch_0
    move-exception v0

    .line 2048
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0b01a7

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2026
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static PlayNormalMimeTypeMedia(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .parameter "target"
    .parameter "MimeType"
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 2060
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayNormalMimeTypeMedia sent MimeType>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2062
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "video/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2063
    const-string v2, "oneshot"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2069
    :cond_1
    :goto_0
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2071
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    :goto_1
    return-void

    .line 2064
    :cond_2
    const-string v2, "audio/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2065
    const-string v2, "oneshot"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 2066
    :cond_3
    const-string v2, "image/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2067
    const-string v2, "viewSingleImage"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 2072
    :catch_0
    move-exception v0

    .line 2073
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0b01a7

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/android/mail/MailCommon;)Lcom/htc/android/mail/Attachment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mCurAttach:Lcom/htc/android/mail/Attachment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/MailCommon;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/MailCommon;Landroid/view/View;JLjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p5}, Lcom/htc/android/mail/MailCommon;->prepareDownloadAttachment(Landroid/view/View;JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/MailCommon;Lcom/htc/android/mail/Attachment;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailCommon;->setCurAttch(Lcom/htc/android/mail/Attachment;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/MailCommon;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/htc/android/mail/MailCommon;->ifProhibitApk()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/MailCommon;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailCommon;->checkIsApkFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/MailCommon;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/MailCommon;ILandroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/MailCommon;->openAttachment(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/android/mail/MailCommon;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailCommon;->stopDownloadOneAttach(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/MailCommon;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/content/ContentResolver;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/MailCommon;->isMailbodyDownloaded(Landroid/content/ContentResolver;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/MailCommon;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mBtnView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/content/ContentResolver;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/MailCommon;->isAttachmentDownloaded(Landroid/content/ContentResolver;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/MailCommon;Landroid/view/View;JLjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p5}, Lcom/htc/android/mail/MailCommon;->downloadAttachment(Landroid/view/View;JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/mail/MailCommon;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailCommon;->downloadAttachmentThread(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/MailCommon;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailCommon;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DBG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/android/mail/MailCommon;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/htc/android/mail/MailCommon;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/htc/android/mail/MailCommon;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static attachmentMailContentUri(JZ)Landroid/net/Uri;
    .locals 5
    .parameter "_partId"
    .parameter "isGlobal"

    .prologue
    .line 2926
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    .line 2930
    :cond_0
    :goto_0
    return-object v0

    .line 2927
    :cond_1
    if-nez p2, :cond_2

    const-string v1, "content://com.htc.android.mail.attachmentprovider/parts/"

    .line 2928
    .local v1, uri:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2929
    .local v0, target:Landroid/net/Uri;
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set target> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2927
    .end local v0           #target:Landroid/net/Uri;
    .end local v1           #uri:Ljava/lang/String;
    :cond_2
    const-string v1, "content://com.htc.android.mail.attachmentprovider/searchSvrParts/"

    goto :goto_1
.end method

.method private bulkInsertContentValues([Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 1
    .parameter "cvs"
    .parameter "uri"

    .prologue
    .line 413
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/htc/android/mail/MailCommon;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 416
    :cond_0
    return-void
.end method

.method public static changeFolder(Landroid/content/Context;Lcom/htc/android/mail/Account;JLjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "mailboxId"
    .parameter "tabName"

    .prologue
    .line 1757
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeFolder>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/accounts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1760
    .local v1, url:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1761
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1762
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1763
    const-string v2, "showNetworkDlgOnce"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1764
    const-string v2, "mailboxId"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1765
    const-string v2, "GO_TO_TAB"

    if-nez p4, :cond_1

    const/4 p4, 0x0

    .end local p4
    :cond_1
    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1767
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-static {p0, v2, v3, p2, p3}, Lcom/htc/android/mail/Util;->writeAccountLastAccessMailboxIdToPref(Landroid/content/Context;JJ)V

    .line 1768
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GotoMailListScreen<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1770
    return-void
.end method

.method public static checkAvailableToDownloadFile(JILandroid/content/Context;)Z
    .locals 12
    .parameter "fs"
    .parameter "sd"
    .parameter "context"

    .prologue
    .line 1097
    sget-boolean v9, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "MailCommon"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAvailableToDownloadFile>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :cond_0
    const/4 v6, 0x0

    .line 1100
    .local v6, storageDirectory:Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    sget v11, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_DEFAULT:I

    invoke-static {p3, p2, v9, v10, v11}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1103
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v1, v9

    .line 1105
    .local v1, nAB:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v3, v9

    .line 1106
    .local v3, nBS:J
    mul-long v7, v1, v3

    .line 1107
    .local v7, totalAvailable:J
    sget-boolean v9, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "MailCommon"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "storageDirectory>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",nAB="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "nBS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :cond_1
    const-wide/16 v9, -0x1

    cmp-long v9, p0, v9

    if-eqz v9, :cond_2

    cmp-long v9, p0, v7

    if-lez v9, :cond_2

    .line 1110
    const/4 v9, 0x0

    .line 1116
    .end local v1           #nAB:J
    .end local v3           #nBS:J
    .end local v5           #stat:Landroid/os/StatFs;
    .end local v7           #totalAvailable:J
    :goto_0
    return v9

    .line 1112
    .restart local v1       #nAB:J
    .restart local v3       #nBS:J
    .restart local v5       #stat:Landroid/os/StatFs;
    .restart local v7       #totalAvailable:J
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 1114
    .end local v1           #nAB:J
    .end local v3           #nBS:J
    .end local v5           #stat:Landroid/os/StatFs;
    .end local v7           #totalAvailable:J
    :catch_0
    move-exception v0

    .line 1115
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1116
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static checkFileExist(ILjava/lang/String;Landroid/content/Context;I)I
    .locals 8
    .parameter "storagePriority"
    .parameter "filename"
    .parameter "context"
    .parameter "attachType"

    .prologue
    const/4 v5, 0x0

    .line 894
    const/4 v2, 0x0

    .line 896
    .local v2, storageRootDir:Ljava/lang/String;
    invoke-static {p2, p0, v5, v5, p3}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 898
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 899
    .local v3, tempFile:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/htc/android/mail/MailCommon;->eraseInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 900
    .local v4, tempFile2:Ljava/lang/String;
    sget-boolean v5, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkFileExist2 temp>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 902
    .local v0, fTemp:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 903
    .local v1, fTemp2:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 904
    :cond_1
    sget-boolean v5, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MailCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkFileExist2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has existed already!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_2
    const/4 v5, 0x0

    .line 907
    :goto_0
    return v5

    :cond_3
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public static checkFileExist(Ljava/io/File;)I
    .locals 4
    .parameter "file"

    .prologue
    .line 882
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 883
    sget-boolean v1, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has existed already!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :cond_0
    const/4 v1, 0x0

    .line 890
    :goto_0
    return v1

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, ioe:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 888
    const/4 v1, 0x1

    goto :goto_0

    .line 890
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static checkForward(Landroid/content/Context;Ljava/lang/ref/WeakReference;J)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 3301
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/MailCommon$12;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/htc/android/mail/MailCommon$12;-><init>(Landroid/content/Context;JLjava/lang/ref/WeakReference;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3327
    return-void
.end method

.method public static checkIfEXaccount(Landroid/content/Context;J)Z
    .locals 10
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1773
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_protocol"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1775
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v0, v8

    .line 1787
    :goto_0
    return v0

    .line 1777
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1778
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailCommon"

    const-string v1, "checkIfEXaccount first fail"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 1780
    goto :goto_0

    .line 1782
    :cond_2
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1783
    .local v6, _protocol:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1784
    const/4 v0, 0x4

    if-ne v6, v0, :cond_3

    move v0, v9

    .line 1785
    goto :goto_0

    :cond_3
    move v0, v8

    .line 1787
    goto :goto_0
.end method

.method private checkIsApkFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 1130
    if-nez p1, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return v2

    .line 1132
    :cond_1
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1133
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 1134
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1135
    .local v0, attachSubName:Ljava/lang/String;
    const-string v3, "apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1136
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static checkIsSupportType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "actionType"
    .parameter "schema"
    .parameter "mimetype"

    .prologue
    const/4 v3, 0x0

    .line 2908
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 2921
    :cond_0
    :goto_0
    return v3

    .line 2909
    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    .line 2911
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2912
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2913
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {p2, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2914
    const/high16 v4, 0x1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2915
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_4

    .line 2916
    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " is support."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 2920
    :cond_4
    sget-boolean v4, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MailCommon"

    const-string v5, " not support."

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkNetwork(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2584
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v9, :cond_1

    .line 2585
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->checkNetworkIncludeWiMax(Landroid/content/Context;)Z

    move-result v7

    .line 2600
    :cond_0
    :goto_0
    return v7

    .line 2588
    :cond_1
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2589
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2590
    .local v2, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 2591
    .local v6, wifi:Landroid/net/NetworkInfo;
    const/16 v9, 0x12

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 2593
    .local v3, usbNet:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_5

    :cond_2
    move v1, v8

    .line 2594
    .local v1, mOn:Z
    :goto_1
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 2595
    .local v5, wOn:Z
    if-nez v3, :cond_6

    move v4, v7

    .line 2596
    .local v4, usbOn:Z
    :goto_2
    sget-boolean v9, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "MailCommon"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mobile connection:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", wifi connection:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", usb connection:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    :cond_3
    if-eq v5, v8, :cond_4

    if-eq v1, v8, :cond_4

    if-ne v4, v8, :cond_0

    :cond_4
    move v7, v8

    .line 2600
    goto :goto_0

    .end local v1           #mOn:Z
    .end local v4           #usbOn:Z
    .end local v5           #wOn:Z
    :cond_5
    move v1, v7

    .line 2593
    goto :goto_1

    .line 2595
    .restart local v1       #mOn:Z
    .restart local v5       #wOn:Z
    :cond_6
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    goto :goto_2
.end method

.method public static checkNetworkIncludeWiMax(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 2605
    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2606
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2607
    .local v2, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 2608
    .local v6, wifi:Landroid/net/NetworkInfo;
    const/16 v11, 0x12

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 2609
    .local v3, usbNet:Landroid/net/NetworkInfo;
    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 2611
    .local v7, wimax:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .local v1, mOn:Z
    const/4 v5, 0x0

    .local v5, wOn:Z
    const/4 v8, 0x0

    .local v8, wimaxOn:Z
    const/4 v4, 0x0

    .line 2612
    .local v4, usbOn:Z
    if-eqz v2, :cond_1

    .line 2613
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v11, v12, :cond_6

    :cond_0
    move v1, v10

    .line 2615
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 2616
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 2618
    :cond_2
    if-eqz v7, :cond_3

    .line 2619
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    .line 2621
    :cond_3
    if-eqz v3, :cond_4

    .line 2622
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    .line 2625
    :cond_4
    sget-boolean v11, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v11, :cond_5

    const-string v11, "MailCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mobile connection:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", wifi connection:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", wimax connection:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", usb connection:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    :cond_5
    if-eq v5, v10, :cond_7

    if-eq v1, v10, :cond_7

    if-eq v8, v10, :cond_7

    if-eq v4, v10, :cond_7

    .line 2629
    :goto_1
    return v9

    :cond_6
    move v1, v9

    .line 2613
    goto :goto_0

    :cond_7
    move v9, v10

    .line 2629
    goto :goto_1
.end method

.method public static checkReply(Landroid/content/Context;Ljava/lang/ref/WeakReference;J)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 3282
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/MailCommon$11;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/htc/android/mail/MailCommon$11;-><init>(Landroid/content/Context;JLjava/lang/ref/WeakReference;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3298
    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 508
    :cond_1
    const/4 p1, 0x0

    .line 509
    goto :goto_0
.end method

.method public static final combineMessageId(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter "seperator"
    .parameter "escape"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/MailMessage;>;"
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 3092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3093
    .local v0, fetchStr:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 3094
    const-string v4, ""

    .line 3120
    :goto_0
    return-object v4

    .line 3097
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 3098
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/MailMessage;

    iget-wide v2, v4, Lcom/htc/android/mail/MailMessage;->id:J

    .line 3099
    .local v2, value:J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_1

    .line 3100
    if-eqz p2, :cond_3

    .line 3101
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/MailMessage;

    iget-wide v4, v4, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    .end local v2           #value:J
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 3109
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/MailMessage;

    iget-wide v2, v4, Lcom/htc/android/mail/MailMessage;->id:J

    .line 3110
    .restart local v2       #value:J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    .line 3111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3112
    if-eqz p2, :cond_4

    .line 3113
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/MailMessage;

    iget-wide v4, v4, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3103
    .end local v1           #i:I
    :cond_3
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3115
    .restart local v1       #i:I
    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/MailMessage;

    iget-wide v4, v4, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3120
    .end local v2           #value:J
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 32
    .parameter "htmlStr"

    .prologue
    .line 3626
    if-nez p0, :cond_0

    .line 3627
    const-string v28, ""

    .line 3843
    :goto_0
    return-object v28

    .line 3628
    :cond_0
    const-string v9, "UTF-8"

    .line 3631
    .local v9, encoding:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 3636
    .local v12, htmlBytes:[B
    :goto_1
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 3637
    .local v23, rtnBytes:[B
    sget-boolean v28, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v28, :cond_1

    const-string v28, "MailCommon"

    const-string v29, "converHTMLtoPlainText start..."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 3640
    .local v26, start:J
    const/16 v20, 0xc

    .line 3641
    .local v20, maxLines:I
    const/16 v19, 0x258

    .line 3642
    .local v19, maxCharacters:I
    const/16 v18, 0x0

    .line 3643
    .local v18, line_count:I
    const/4 v5, 0x0

    .line 3644
    .local v5, char_count:I
    const/16 v21, 0x0

    .line 3645
    .local v21, old_byte:B
    const/16 v24, 0x0

    .line 3646
    .local v24, rtnBytes_idx:I
    const/4 v15, 0x0

    .line 3647
    .local v15, isTagFound:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v13, v0, :cond_2c

    .line 3648
    aget-byte v7, v12, v13

    .line 3649
    .local v7, cur_byte:B
    const/16 v28, 0x3c

    move/from16 v0, v28

    if-ne v7, v0, :cond_14

    .line 3651
    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 3652
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x53

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :cond_2
    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x54

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :cond_3
    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x79

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x59

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :cond_4
    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x4c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :cond_5
    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x65

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x45

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 3655
    :cond_6
    add-int/lit8 v16, v13, 0x6

    .local v16, j:I
    :goto_3
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    .line 3656
    add-int/lit8 v28, v16, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    .line 3657
    aget-byte v28, v12, v16

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    aget-byte v28, v12, v16

    const/16 v29, 0x53

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_7
    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x54

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_8
    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x79

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x59

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_9
    add-int/lit8 v28, v16, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    add-int/lit8 v28, v16, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x4c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_a
    add-int/lit8 v28, v16, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x65

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    add-int/lit8 v28, v16, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x45

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_b
    add-int/lit8 v28, v16, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 3660
    const/16 v7, 0x20

    .line 3661
    add-int/lit8 v13, v16, 0x5

    .line 3671
    .end local v16           #j:I
    :cond_c
    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 3672
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x21

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 3673
    add-int/lit8 v16, v13, 0x4

    .restart local v16       #j:I
    :goto_4
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    .line 3674
    add-int/lit8 v28, v16, 0x2

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 3675
    aget-byte v28, v12, v16

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 3676
    const/16 v7, 0x20

    .line 3677
    add-int/lit8 v13, v16, 0x2

    .line 3688
    .end local v16           #j:I
    :cond_d
    add-int/lit8 v28, v13, 0x1

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_14

    .line 3689
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x20

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_14

    .line 3690
    const/4 v15, 0x0

    .line 3691
    add-int/lit8 v16, v13, 0x1

    .restart local v16       #j:I
    :goto_5
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    .line 3692
    aget-byte v28, v12, v16

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 3693
    const/16 v7, 0x20

    .line 3694
    move/from16 v13, v16

    .line 3695
    const/4 v15, 0x1

    .line 3708
    :cond_e
    if-eqz v15, :cond_14

    .line 3647
    .end local v16           #j:I
    :cond_f
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 3632
    .end local v5           #char_count:I
    .end local v7           #cur_byte:B
    .end local v12           #htmlBytes:[B
    .end local v13           #i:I
    .end local v15           #isTagFound:Z
    .end local v18           #line_count:I
    .end local v19           #maxCharacters:I
    .end local v20           #maxLines:I
    .end local v21           #old_byte:B
    .end local v23           #rtnBytes:[B
    .end local v24           #rtnBytes_idx:I
    .end local v26           #start:J
    :catch_0
    move-exception v8

    .line 3633
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    const/4 v9, 0x0

    .line 3634
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .restart local v12       #htmlBytes:[B
    goto/16 :goto_1

    .line 3655
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #char_count:I
    .restart local v7       #cur_byte:B
    .restart local v13       #i:I
    .restart local v15       #isTagFound:Z
    .restart local v16       #j:I
    .restart local v18       #line_count:I
    .restart local v19       #maxCharacters:I
    .restart local v20       #maxLines:I
    .restart local v21       #old_byte:B
    .restart local v23       #rtnBytes:[B
    .restart local v24       #rtnBytes_idx:I
    .restart local v26       #start:J
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 3673
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 3699
    :cond_12
    aget-byte v28, v12, v16

    const/16 v29, 0x3c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_e

    .line 3703
    array-length v0, v12

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 3704
    const/16 v7, 0x20

    .line 3705
    array-length v13, v12

    .line 3691
    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 3716
    .end local v16           #j:I
    :cond_14
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_22

    add-int/lit8 v28, v13, 0x7

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_22

    .line 3717
    const/4 v6, 0x0

    .line 3718
    .local v6, chars_found:I
    const/16 v17, 0x2

    .local v17, k:I
    :goto_7
    const/16 v28, 0x7

    move/from16 v0, v17

    move/from16 v1, v28

    if-gt v0, v1, :cond_15

    .line 3719
    add-int v28, v13, v17

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_19

    .line 3720
    add-int/lit8 v6, v17, -0x2

    .line 3725
    :cond_15
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x23

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    if-lez v6, :cond_22

    .line 3727
    const/4 v14, 0x0

    .line 3728
    .local v14, intValue:I
    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x78

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_16

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x58

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 3729
    :cond_16
    const/16 v17, 0x1

    :goto_8
    move/from16 v0, v17

    if-gt v0, v6, :cond_1e

    .line 3730
    add-int v28, v13, v17

    add-int/lit8 v28, v28, 0x1

    aget-byte v4, v12, v28

    .line 3731
    .local v4, b:B
    const/16 v28, 0x30

    move/from16 v0, v28

    if-lt v4, v0, :cond_1a

    const/16 v28, 0x39

    move/from16 v0, v28

    if-gt v4, v0, :cond_1a

    .line 3732
    add-int/lit8 v28, v4, -0x30

    add-int v14, v14, v28

    .line 3737
    :cond_17
    :goto_9
    move/from16 v0, v17

    if-ge v0, v6, :cond_18

    .line 3738
    mul-int/lit8 v14, v14, 0x10

    .line 3729
    :cond_18
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 3718
    .end local v4           #b:B
    .end local v14           #intValue:I
    :cond_19
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 3733
    .restart local v4       #b:B
    .restart local v14       #intValue:I
    :cond_1a
    const/16 v28, 0x41

    move/from16 v0, v28

    if-lt v4, v0, :cond_1b

    const/16 v28, 0x46

    move/from16 v0, v28

    if-gt v4, v0, :cond_1b

    .line 3734
    add-int/lit8 v28, v4, -0x41

    add-int/lit8 v28, v28, 0xa

    add-int v14, v14, v28

    goto :goto_9

    .line 3735
    :cond_1b
    const/16 v28, 0x61

    move/from16 v0, v28

    if-lt v4, v0, :cond_17

    const/16 v28, 0x66

    move/from16 v0, v28

    if-gt v4, v0, :cond_17

    .line 3736
    add-int/lit8 v28, v4, -0x61

    add-int/lit8 v28, v28, 0xa

    add-int v14, v14, v28

    goto :goto_9

    .line 3741
    .end local v4           #b:B
    :cond_1c
    const/16 v17, 0x1

    :goto_a
    move/from16 v0, v17

    if-gt v0, v6, :cond_1e

    .line 3742
    add-int v28, v13, v17

    add-int/lit8 v28, v28, 0x1

    aget-byte v28, v12, v28

    add-int/lit8 v28, v28, -0x30

    add-int v14, v14, v28

    .line 3743
    move/from16 v0, v17

    if-ge v0, v6, :cond_1d

    .line 3744
    mul-int/lit8 v14, v14, 0xa

    .line 3741
    :cond_1d
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 3748
    :cond_1e
    if-nez v9, :cond_1f

    .line 3750
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .local v25, rtnBytes_idx:I
    shr-int/lit8 v28, v14, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 3751
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 3752
    add-int/lit8 v5, v5, 0x2

    .line 3771
    :goto_b
    add-int/lit8 v28, v6, 0x2

    add-int v13, v13, v28

    .line 3772
    goto/16 :goto_6

    .line 3756
    :cond_1f
    const/16 v28, 0x7e

    move/from16 v0, v28

    if-ge v14, v0, :cond_20

    .line 3757
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x7f

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 3758
    add-int/lit8 v5, v5, 0x1

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto :goto_b

    .line 3759
    :cond_20
    const/16 v28, 0x80

    move/from16 v0, v28

    if-lt v14, v0, :cond_21

    const/16 v28, 0x7ff

    move/from16 v0, v28

    if-gt v14, v0, :cond_21

    .line 3760
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0x7c0

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x6

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0xc0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 3761
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x3f

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 3762
    add-int/lit8 v5, v5, 0x2

    goto :goto_b

    .line 3764
    :cond_21
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    const v28, 0xf000

    and-int v28, v28, v14

    shr-int/lit8 v28, v28, 0xc

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0xe0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 3765
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0xfc0

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x6

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 3766
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x3f

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 3767
    add-int/lit8 v5, v5, 0x3

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto/16 :goto_b

    .line 3777
    .end local v6           #chars_found:I
    .end local v14           #intValue:I
    .end local v17           #k:I
    :cond_22
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_23

    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_23

    .line 3778
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x6e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x62

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x70

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    .line 3779
    const/16 v7, 0x20

    .line 3780
    add-int/lit8 v13, v13, 0x5

    .line 3784
    :cond_23
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_24

    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_24

    .line 3785
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x71

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x75

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x6f

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    .line 3786
    const/16 v7, 0x22

    .line 3787
    add-int/lit8 v13, v13, 0x5

    .line 3791
    :cond_24
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_25

    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_25

    .line 3792
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    .line 3793
    const/16 v7, 0x3c

    .line 3794
    add-int/lit8 v13, v13, 0x3

    .line 3798
    :cond_25
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_26

    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_26

    .line 3799
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x67

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    .line 3800
    const/16 v7, 0x3e

    .line 3801
    add-int/lit8 v13, v13, 0x3

    .line 3805
    :cond_26
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_27

    add-int/lit8 v28, v13, 0x4

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_27

    .line 3806
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x61

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x6d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x70

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    .line 3807
    const/16 v7, 0x26

    .line 3808
    add-int/lit8 v13, v13, 0x4

    .line 3812
    :cond_27
    const/16 v28, 0xa

    move/from16 v0, v28

    if-ne v7, v0, :cond_28

    .line 3813
    add-int/lit8 v18, v18, 0x1

    .line 3816
    :cond_28
    const/16 v28, 0x9

    move/from16 v0, v28

    if-eq v7, v0, :cond_29

    const/16 v28, 0xd

    move/from16 v0, v28

    if-ne v7, v0, :cond_2a

    .line 3817
    :cond_29
    const/16 v7, 0x20

    .line 3820
    :cond_2a
    const/16 v28, 0x20

    move/from16 v0, v28

    if-ne v7, v0, :cond_2b

    .line 3821
    const/16 v28, 0xa

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_f

    .line 3825
    :cond_2b
    move/from16 v21, v7

    .line 3826
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    aput-byte v7, v23, v24

    .line 3827
    add-int/lit8 v5, v5, 0x1

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto/16 :goto_6

    .line 3831
    .end local v7           #cur_byte:B
    :cond_2c
    if-eqz v9, :cond_2e

    .line 3833
    :try_start_1
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3840
    .local v22, rtn:Ljava/lang/String;
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3842
    .local v10, end:J
    sget-boolean v28, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v28, :cond_2d

    const-string v28, "MailCommon"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "converHTMLtoPlainText end...time used: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sub-long v30, v10, v26

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " milliseconds"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    :cond_2d
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_0

    .line 3834
    .end local v10           #end:J
    .end local v22           #rtn:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 3835
    .restart local v8       #e:Ljava/io/UnsupportedEncodingException;
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 3836
    .restart local v22       #rtn:Ljava/lang/String;
    goto :goto_c

    .line 3838
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .end local v22           #rtn:Ljava/lang/String;
    :cond_2e
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .restart local v22       #rtn:Ljava/lang/String;
    goto :goto_c
.end method

.method public static createIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "data"
    .parameter "mimeType"

    .prologue
    const/4 v2, 0x1

    .line 2942
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2943
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2944
    const-string v1, "oneshot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2946
    const-string v1, "landscape"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2947
    const-string p1, "video/*"

    .line 2954
    :cond_0
    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2955
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2956
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2957
    return-object v0

    .line 2948
    :cond_1
    const-string v1, "audio/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2949
    const-string v1, "oneshot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2950
    const-string p1, "audio/*"

    goto :goto_0

    .line 2951
    :cond_2
    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2952
    const-string v1, "viewSingleImage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static decryptContent([BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "byteKey"
    .parameter "value"

    .prologue
    .line 4186
    if-nez p0, :cond_1

    .line 4200
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 4188
    .restart local p1
    :cond_1
    if-eqz p1, :cond_0

    .line 4192
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, p0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 4193
    .local v4, spec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 4194
    .local v1, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 4195
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 4196
    .local v0, byteValue:[B
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 4197
    .local v2, decryptData:[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v5

    goto :goto_0

    .line 4198
    .end local v0           #byteValue:[B
    .end local v1           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #decryptData:[B
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v3

    .line 4199
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static determineMimeType(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mime"
    .parameter "context"
    .parameter "_filepath"

    .prologue
    .line 1970
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 p0, 0x0

    .line 1986
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 1971
    .restart local p0
    :cond_2
    const-string v2, "audio/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "video/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1975
    :cond_3
    new-instance v0, Lcom/htc/android/mail/MediaInfo;

    invoke-direct {v0, p1}, Lcom/htc/android/mail/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 1976
    .local v0, Info:Lcom/htc/android/mail/MediaInfo;
    invoke-virtual {v0, p2}, Lcom/htc/android/mail/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v1

    .line 1977
    .local v1, filetype:I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_4

    .line 1978
    const-string p0, "audio/*"

    .line 1979
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailCommon"

    const-string v3, "MediaScanner> audio"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1981
    :cond_4
    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    .line 1982
    const-string p0, "video/*"

    .line 1983
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailCommon"

    const-string v3, "MediaScanner> video"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private downloadAttachment(Landroid/view/View;JLjava/lang/String;I)V
    .locals 29
    .parameter "view"
    .parameter "mailBoxId"
    .parameter "mUid"
    .parameter "mTotalSize"

    .prologue
    .line 1193
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v26, :cond_0

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "downloadAttachment>>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :cond_0
    if-nez p1, :cond_2

    .line 1197
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v26, :cond_1

    const-string v26, "MailCommon"

    const-string v27, "view null>"

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    :cond_1
    :goto_0
    return-void

    .line 1200
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/Attachment;

    .line 1201
    .local v8, attach:Lcom/htc/android/mail/Attachment;
    if-nez v8, :cond_3

    .line 1202
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v26, :cond_1

    const-string v26, "MailCommon"

    const-string v27, "attach null>"

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1206
    :cond_3
    iget-object v11, v8, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 1207
    .local v11, attachmentFilename:Ljava/lang/String;
    iget v9, v8, Lcom/htc/android/mail/Attachment;->attachType:I

    .line 1208
    .local v9, attachType:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailCommon;->ifProhibitApk()Z

    move-result v26

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/android/mail/MailCommon;->checkIsApkFile(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1209
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v26, :cond_4

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "return apk file>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    :cond_4
    new-instance v17, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1211
    .local v17, dlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v26, 0x7f0b002c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1212
    const v26, 0x7f0b002d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1213
    const v26, 0x7f0b0291

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1214
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 1218
    .end local v17           #dlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 1220
    const/16 v26, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V

    goto/16 :goto_0

    .line 1227
    :cond_6
    iget-object v12, v8, Lcom/htc/android/mail/Attachment;->index:Ljava/lang/String;

    .line 1228
    .local v12, attachmentIndex:Ljava/lang/String;
    iget-object v10, v8, Lcom/htc/android/mail/Attachment;->encode:Ljava/lang/String;

    .line 1229
    .local v10, attachmentEncode:Ljava/lang/String;
    iget-wide v0, v8, Lcom/htc/android/mail/Attachment;->attachSize:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    .line 1230
    .local v19, filesize:Ljava/lang/String;
    iget-object v6, v8, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 1231
    .local v6, att_mimetype:Ljava/lang/String;
    iget-boolean v0, v8, Lcom/htc/android/mail/Attachment;->globalAttach:Z

    move/from16 v21, v0

    .line 1233
    .local v21, globalAttach:Z
    const/4 v7, 0x0

    .line 1235
    .local v7, att_reference:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    .line 1236
    iget-object v7, v8, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    .line 1243
    :cond_7
    :goto_1
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 1252
    .local v20, fs:I
    :goto_2
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v26, :cond_8

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mail part thread start>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    :cond_8
    new-instance v25, Lcom/htc/android/mail/Request;

    invoke-direct/range {v25 .. v25}, Lcom/htc/android/mail/Request;-><init>()V

    .line 1257
    .local v25, r:Lcom/htc/android/mail/Request;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    .line 1258
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/htc/android/mail/Request;->isWifiActiveMode:Z

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 1261
    const/16 v26, 0x1fe

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/htc/android/mail/Request;->command:I

    .line 1266
    :goto_3
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/htc/android/mail/Request;->isStopOnLeave:Z

    .line 1274
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v26, :cond_9

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mailBoxId>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    :cond_9
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v26, :cond_a

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mUid>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :cond_a
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v26, :cond_b

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mTotalSize>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v23

    .line 1278
    .local v23, mMailbox:Lcom/htc/android/mail/Mailbox;
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v26, :cond_c

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mMailbox>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x6

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 1283
    :cond_d
    sget-object v26, Lcom/htc/android/mail/Attachment$States;->downloading:Lcom/htc/android/mail/Attachment$States;

    move-object/from16 v0, v26

    iput-object v0, v8, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    .line 1284
    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    .line 1285
    move-object/from16 v0, v25

    iput-object v0, v8, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    .line 1286
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v8, Lcom/htc/android/mail/Attachment;->messageId:Ljava/lang/String;

    .line 1287
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1288
    move-object/from16 v0, v25

    iput-object v8, v0, Lcom/htc/android/mail/Request;->returnObject:Ljava/lang/Object;

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Lcom/htc/android/mail/MailCommon;->updateAttachButtonIconAction(Landroid/content/Context;Lcom/htc/android/mail/Attachment;)V

    .line 1292
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1293
    .local v14, bundle:Landroid/os/Bundle;
    const-string v26, "Mailbox"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1294
    const-string v26, "UID"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v26, "MSGID"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v14, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1296
    const-string v26, "BodyID"

    const-wide/16 v27, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v14, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1297
    const-string v26, "Index"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const-string v26, "ENCODE"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-string v26, "CharsetOrFileName"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v26, "MimeType"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v26, "SaveAsFile"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1302
    const-string v26, "attachType"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 1304
    const-string v26, "fileRef"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const-string v26, "globalMail"

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1310
    :cond_e
    :goto_4
    move-object/from16 v0, v25

    iput-object v14, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 1311
    const/16 v26, 0x6

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/htc/android/mail/Request;->messageWhat:I

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 1315
    move-object/from16 v0, v25

    iput-object v7, v0, Lcom/htc/android/mail/Request;->filereference:Ljava/lang/String;

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AbsRequestController;->addRequest(Lcom/htc/android/mail/Request;)V

    .line 1319
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v26, :cond_f

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "add request: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x6

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1323
    :cond_10
    new-instance v24, Landroid/os/Message;

    invoke-direct/range {v24 .. v24}, Landroid/os/Message;-><init>()V

    .line 1324
    .local v24, msg:Landroid/os/Message;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 1325
    .local v13, b:Landroid/os/Bundle;
    const-string v26, "accountId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v27

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1326
    const-string v26, "filereference"

    iget-object v0, v8, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController;->broadcastAttachmentDownloadStart(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V

    goto/16 :goto_0

    .line 1237
    .end local v13           #b:Landroid/os/Bundle;
    .end local v14           #bundle:Landroid/os/Bundle;
    .end local v20           #fs:I
    .end local v23           #mMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v24           #msg:Landroid/os/Message;
    .end local v25           #r:Lcom/htc/android/mail/Request;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x6

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 1238
    :cond_12
    iget-object v7, v8, Lcom/htc/android/mail/Attachment;->index:Ljava/lang/String;

    goto/16 :goto_1

    .line 1244
    :catch_0
    move-exception v18

    .line 1245
    .local v18, e:Ljava/lang/NumberFormatException;
    const-string v26, "MailCommon"

    const-string v27, "NumberFormatException occurs in parseInt(filesize)"

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/16 v20, 0x0

    .restart local v20       #fs:I
    goto/16 :goto_2

    .line 1262
    .end local v18           #e:Ljava/lang/NumberFormatException;
    .restart local v25       #r:Lcom/htc/android/mail/Request;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x6

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 1263
    :cond_14
    const/16 v26, 0x67

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/htc/android/mail/Request;->command:I

    goto/16 :goto_3

    .line 1265
    :cond_15
    const/16 v26, 0xca

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/htc/android/mail/Request;->command:I

    goto/16 :goto_3

    .line 1306
    .restart local v14       #bundle:Landroid/os/Bundle;
    .restart local v23       #mMailbox:Lcom/htc/android/mail/Mailbox;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x6

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 1307
    :cond_17
    const-string v26, "fileRef"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1334
    .end local v14           #bundle:Landroid/os/Bundle;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1a

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    .line 1336
    .local v15, count:I
    sget-boolean v26, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v26, :cond_19

    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "pop3 attach count> "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    :cond_19
    const/16 v22, 0x0

    .local v22, i:I
    :goto_5
    move/from16 v0, v22

    if-ge v0, v15, :cond_1a

    .line 1339
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1340
    .local v5, attView:Landroid/view/View;
    const v26, 0x7f09000f

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/htc/widget/QuickContactBadge;

    move-object/from16 v0, v26

    check-cast v0, Lcom/htc/widget/QuickContactBadge;

    move-object v4, v0

    .line 1341
    .local v4, attBtn:Lcom/htc/widget/QuickContactBadge;
    const v26, 0x7f09000e

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/android/mail/Attachment;

    move-object/from16 v0, v26

    check-cast v0, Lcom/htc/android/mail/Attachment;

    move-object/from16 v16, v0

    .line 1342
    .local v16, curAttach:Lcom/htc/android/mail/Attachment;
    sget-object v26, Lcom/htc/android/mail/Attachment$States;->downloading:Lcom/htc/android/mail/Attachment$States;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    .line 1343
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    .line 1344
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/android/mail/Attachment;->messageId:Ljava/lang/String;

    .line 1345
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/htc/widget/QuickContactBadge;->setTag(Ljava/lang/Object;)V

    .line 1346
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/htc/android/mail/Request;->returnObject:Ljava/lang/Object;

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailCommon;->updateAttachButtonIconAction(Landroid/content/Context;Lcom/htc/android/mail/Attachment;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1337
    .end local v4           #attBtn:Lcom/htc/widget/QuickContactBadge;
    .end local v5           #attView:Landroid/view/View;
    .end local v16           #curAttach:Lcom/htc/android/mail/Attachment;
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 1348
    :catch_1
    move-exception v18

    .line 1349
    .local v18, e:Ljava/lang/NullPointerException;
    const-string v26, "MailCommon"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "null pointer exception occur> "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1356
    .end local v15           #count:I
    .end local v18           #e:Ljava/lang/NullPointerException;
    .end local v22           #i:I
    :cond_1a
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1357
    .restart local v14       #bundle:Landroid/os/Bundle;
    const-string v26, "UIDL"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const-string v26, "TotalSize"

    move-object/from16 v0, v26

    move/from16 v1, p5

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1359
    const-string v26, "Mailbox"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1360
    move-object/from16 v0, v25

    iput-object v14, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 1361
    const/16 v26, 0x6

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/htc/android/mail/Request;->messageWhat:I

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 1365
    move-object/from16 v0, v25

    iput-object v7, v0, Lcom/htc/android/mail/Request;->filereference:Ljava/lang/String;

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AbsRequestController;->addRequest(Lcom/htc/android/mail/Request;)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v26

    const/16 v27, 0x6

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1372
    :cond_1b
    new-instance v24, Landroid/os/Message;

    invoke-direct/range {v24 .. v24}, Landroid/os/Message;-><init>()V

    .line 1373
    .restart local v24       #msg:Landroid/os/Message;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 1374
    .restart local v13       #b:Landroid/os/Bundle;
    const-string v26, "accountId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v27

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1375
    const-string v26, "filereference"

    iget-object v0, v8, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController;->broadcastAttachmentDownloadStart(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V

    goto/16 :goto_0
.end method

.method private downloadAttachmentThread(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1145
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/MailCommon$5;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/mail/MailCommon$5;-><init>(Lcom/htc/android/mail/MailCommon;Landroid/view/View;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1190
    return-void
.end method

.method public static editSettingById(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1718
    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "editSettingById>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1720
    .local v2, edit_uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-class v4, Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-direct {v1, v3, v2, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1722
    .local v1, edit_intent:Landroid/content/Intent;
    invoke-static {p1, p2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1723
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_0

    .line 1724
    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "editSettingById null>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    .end local p0
    :goto_0
    return-void

    .line 1727
    .restart local p0
    :cond_0
    const-string v3, "provider"

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static encryptContent([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "byteKey"
    .parameter "value"

    .prologue
    .line 4167
    if-nez p0, :cond_1

    .line 4181
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 4169
    .restart local p1
    :cond_1
    if-eqz p1, :cond_0

    .line 4173
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, p0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 4174
    .local v4, spec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 4175
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 4176
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 4177
    .local v3, encryptData:[B
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, encryValue:Ljava/lang/String;
    move-object p1, v2

    .line 4178
    goto :goto_0

    .line 4179
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #encryValue:Ljava/lang/String;
    .end local v3           #encryptData:[B
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 4180
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static eraseInvalidChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "name"

    .prologue
    .line 831
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 872
    :cond_0
    :goto_0
    return-object v3

    .line 832
    :cond_1
    sget-boolean v5, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MailCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check file name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 836
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 837
    .local v1, nameArray:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 838
    aget-char v2, v1, v0

    .line 840
    .local v2, nameChar:C
    sparse-switch v2, :sswitch_data_0

    .line 867
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 857
    :sswitch_0
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 870
    .end local v2           #nameChar:C
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 871
    .local v3, reName:Ljava/lang/String;
    sget-boolean v5, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replace name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 840
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method public static fitBody(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "text"
    .parameter "size"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2641
    .local v0, body:Ljava/lang/StringBuilder;
    if-gez p1, :cond_0

    .line 2642
    const/16 p1, 0x64

    .line 2644
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2645
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2646
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2647
    .local v1, htmlBody:[Ljava/lang/String;
    array-length v3, v1

    if-le v3, v5, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p1, :cond_3

    aget-object v3, v1, v5

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2649
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2651
    .end local v1           #htmlBody:[Ljava/lang/String;
    .end local p0
    :cond_2
    :goto_1
    return-object p0

    .line 2647
    .restart local v1       #htmlBody:[Ljava/lang/String;
    .restart local p0
    :cond_3
    aget-object v3, v1, v5

    goto :goto_0

    .line 2651
    .end local v1           #htmlBody:[Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p1, :cond_2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static fnFindLastTagPos(Ljava/lang/String;I)I
    .locals 4
    .parameter "strMailContent"
    .parameter "nStartIndex"

    .prologue
    .line 2656
    const/4 v2, -0x1

    .line 2657
    .local v2, nTagPos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/htc/android/mail/MailCommon;->m_listParseTag:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 2658
    sget-object v3, Lcom/htc/android/mail/MailCommon;->m_listParseTag:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 2659
    .local v1, nRet:I
    if-le v1, v2, :cond_0

    .line 2660
    move v2, v1

    .line 2657
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2664
    .end local v1           #nRet:I
    :cond_1
    return v2
.end method

.method public static fnParseHTMLLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "strMailContent"

    .prologue
    .line 2668
    move-object v6, p0

    .line 2669
    .local v6, strParseMailContent:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2670
    .local v5, strLowCaseContent:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2672
    .local v2, nMailContentLength:I
    if-gtz v2, :cond_0

    move-object v7, v6

    .line 2759
    .end local v6           #strParseMailContent:Ljava/lang/String;
    .local v7, strParseMailContent:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 2675
    .end local v7           #strParseMailContent:Ljava/lang/String;
    .restart local v6       #strParseMailContent:Ljava/lang/String;
    :cond_0
    move v1, v2

    .line 2678
    .local v1, nFindStart:I
    :goto_1
    invoke-static {v5, v1}, Lcom/htc/android/mail/MailCommon;->fnFindLastTagPos(Ljava/lang/String;I)I

    move-result v3

    .line 2679
    .local v3, nTagPos:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_b

    .line 2681
    const/4 v0, 0x0

    .line 2682
    .local v0, i:I
    const-string v9, "http://"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int v0, v3, v9

    :goto_2
    if-ge v0, v1, :cond_2

    .line 2684
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x80

    if-gt v9, v10, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-le v9, v10, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2f

    if-eq v9, v10, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3c

    if-eq v9, v10, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3e

    if-eq v9, v10, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x26

    if-ne v9, v10, :cond_a

    .line 2688
    :cond_1
    add-int/lit8 v9, v0, 0x3

    if-ge v9, v1, :cond_6

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x26

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x67

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v0, 0x2

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x74

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v0, 0x3

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_6

    .line 2728
    :cond_2
    :goto_3
    if-lt v0, v2, :cond_3

    .line 2729
    move v0, v2

    .line 2734
    :cond_3
    const/4 v9, 0x2

    if-le v0, v9, :cond_4

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_4

    .line 2735
    add-int/lit8 v9, v0, -0x2

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-lt v9, v10, :cond_4

    add-int/lit8 v9, v0, -0x2

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x39

    if-gt v9, v10, :cond_4

    .line 2736
    add-int/lit8 v0, v0, -0x1

    .line 2739
    :cond_4
    invoke-virtual {v6, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2740
    .local v4, strLink:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<a href=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/htc/android/mail/MailCommon;->lowercaseBeforeColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</a>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2742
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2743
    .local v8, strTemp:Ljava/lang/String;
    if-ge v0, v2, :cond_5

    .line 2744
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2746
    :cond_5
    move-object v6, v8

    .line 2748
    if-eqz v3, :cond_b

    .line 2749
    add-int/lit8 v1, v3, -0x1

    .line 2750
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 2757
    goto/16 :goto_1

    .line 2693
    .end local v4           #strLink:Ljava/lang/String;
    .end local v8           #strTemp:Ljava/lang/String;
    :cond_6
    add-int/lit8 v9, v0, 0x2

    if-ge v9, v1, :cond_7

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_7

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_2

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3c

    if-eq v9, v10, :cond_2

    .line 2704
    :cond_7
    add-int/lit8 v9, v0, 0x5

    if-ge v9, v1, :cond_9

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x26

    if-ne v9, v10, :cond_9

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x61

    if-ne v9, v10, :cond_9

    add-int/lit8 v9, v0, 0x2

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x6d

    if-ne v9, v10, :cond_9

    add-int/lit8 v9, v0, 0x3

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x70

    if-ne v9, v10, :cond_9

    add-int/lit8 v9, v0, 0x4

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_9

    .line 2707
    add-int/lit8 v0, v0, 0x4

    .line 2682
    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 2716
    :cond_9
    add-int/lit8 v9, v0, 0x2

    if-ge v9, v1, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_2

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2f

    if-eq v9, v10, :cond_2

    goto :goto_4

    .line 2723
    :cond_a
    add-int/lit8 v9, v0, 0x1

    if-ge v9, v1, :cond_8

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x29

    if-ne v9, v10, :cond_8

    .line 2724
    add-int/lit8 v0, v0, 0x1

    .line 2725
    goto/16 :goto_3

    .end local v0           #i:I
    :cond_b
    move-object v7, v6

    .line 2759
    .end local v6           #strParseMailContent:Ljava/lang/String;
    .restart local v7       #strParseMailContent:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "begin"
    .parameter "end"
    .parameter "flags"

    .prologue
    .line 3164
    if-nez p0, :cond_0

    .line 3165
    const-string v6, ""

    .line 3193
    :goto_0
    return-object v6

    .line 3167
    :cond_0
    const/4 v1, 0x1

    .line 3168
    .local v1, FORMAT_SHOW_TIME:I
    and-int/lit8 v8, p5, 0x1

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    .line 3169
    .local v3, showTime:Z
    :goto_1
    const-string v6, ""

    .line 3171
    .local v6, strReturn:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 3173
    cmp-long v8, p1, p3

    if-nez v8, :cond_2

    .line 3174
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3168
    .end local v3           #showTime:Z
    .end local v6           #strReturn:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 3176
    .restart local v3       #showTime:Z
    .restart local v6       #strReturn:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3177
    .local v4, strBegin:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3178
    .local v5, strEnd:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3179
    goto :goto_0

    .line 3181
    .end local v4           #strBegin:Ljava/lang/String;
    .end local v5           #strEnd:Ljava/lang/String;
    :cond_3
    const-string v0, "EE, MMM d, yyyy"

    .line 3182
    .local v0, DEFAULT_DATE_FORMAT:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "date_format"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3184
    .local v7, system_date_format:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3185
    move-object v7, v0

    .line 3187
    :cond_4
    invoke-static {v7, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3188
    .local v2, dateFormat:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3189
    move-object v2, v0

    .line 3191
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "time"
    .parameter "flags"

    .prologue
    .line 3197
    if-nez p0, :cond_0

    .line 3198
    const-string v0, ""

    .line 3200
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/MailCommon;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatMailContentUri(JZ)Landroid/net/Uri;
    .locals 5
    .parameter "_partId"
    .parameter "isGlobal"

    .prologue
    .line 2934
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    .line 2938
    :cond_0
    :goto_0
    return-object v0

    .line 2935
    :cond_1
    if-nez p2, :cond_2

    const-string v1, "content://mail/parts/"

    .line 2936
    .local v1, uri:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2937
    .local v0, target:Landroid/net/Uri;
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set target> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2935
    .end local v0           #target:Landroid/net/Uri;
    .end local v1           #uri:Ljava/lang/String;
    :cond_2
    const-string v1, "content://mail/searchSvrParts/"

    goto :goto_1
.end method

.method public static genRequestCode(II)I
    .locals 2
    .parameter "requestType"
    .parameter "accountId"

    .prologue
    const/high16 v1, 0x2000

    const/high16 v0, 0x1000

    .line 4254
    if-ne p0, v0, :cond_0

    .line 4255
    or-int/2addr v0, p1

    .line 4259
    :goto_0
    return v0

    .line 4256
    :cond_0
    if-ne p0, v1, :cond_1

    .line 4257
    or-int v0, v1, p1

    goto :goto_0

    .line 4259
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAccountDescByIndex(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "index"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 2398
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_desc"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2399
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 2400
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountDescByIndex null>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    :cond_0
    :goto_0
    return-object v3

    .line 2403
    :cond_1
    const/4 v7, 0x0

    .line 2404
    .local v7, desc:Ljava/lang/String;
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2405
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2406
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    .line 2407
    goto :goto_0
.end method

.method public static getContactOfAdddress(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11
    .parameter "context"
    .parameter "addr"

    .prologue
    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 2514
    if-nez p1, :cond_1

    .line 2515
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailCommon"

    const-string v1, "getContactOfAdddress addr = null. Denny Please Fix it"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    :cond_0
    :goto_0
    return v9

    .line 2519
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "person"

    aput-object v3, v2, v10

    const-string v3, "contact_methods.data = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2522
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 2524
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContactOfAdddress null>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2527
    :cond_2
    const/4 v9, -0x1

    .line 2528
    .local v9, peopleId:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2530
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2533
    .local v6, _peopleId:Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2539
    .end local v6           #_peopleId:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2535
    .restart local v6       #_peopleId:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 2536
    .local v8, e:Ljava/lang/NumberFormatException;
    const-string v0, "MailCommon"

    const-string v1, "getContactOfAdddress NumberFormatException"

    invoke-static {v0, v1, v8}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDefaultCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3879
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v0, :pswitch_data_0

    .line 3884
    const-string v0, "utf-8"

    :goto_0
    return-object v0

    .line 3881
    :pswitch_0
    const-string v0, "Shift_JIS"

    goto :goto_0

    .line 3879
    nop

    :pswitch_data_0
    .packed-switch 0xd1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 2850
    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailCommon"

    const-string v4, "getDefaultSignature>"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    :cond_0
    const-string v2, ""

    .line 2852
    .local v2, sig:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2853
    .local v0, cust_signature:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2854
    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " sig>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->isIMSIChanged(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2858
    invoke-static {p0}, Lcom/htc/android/mail/Util;->clearSignaturePref(Landroid/content/Context;)V

    .line 2859
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->loadCustSignature(Landroid/content/Context;)V

    .line 2862
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2863
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/android/mail/Util;->getSignatureByLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2891
    if-eqz v0, :cond_3

    .line 2894
    .end local v0           #cust_signature:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #cust_signature:Ljava/lang/String;
    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public static getDialog(ILandroid/app/Activity;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "act"

    .prologue
    const/4 v0, 0x0

    .line 670
    packed-switch p0, :pswitch_data_0

    .line 690
    :goto_0
    return-object v0

    .line 675
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01c2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01c1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0167

    new-instance v3, Lcom/htc/android/mail/MailCommon$3;

    invoke-direct {v3, p1}, Lcom/htc/android/mail/MailCommon$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 670
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public static getDisplayMailLabelForId(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "_mId"
    .parameter "type"
    .parameter "_label"

    .prologue
    .line 3125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3, p4}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getEncryptKey(Landroid/content/Context;)[B
    .locals 10
    .parameter "c"

    .prologue
    .line 4137
    const/4 v0, 0x0

    .line 4138
    .local v0, byteKey:[B
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "yKey"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4139
    .local v6, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4140
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4141
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .line 4142
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4143
    .local v3, fis:Ljava/io/FileInputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 4144
    sget-boolean v8, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MailCommon"

    const-string v9, "read y Key."

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 4162
    .end local v0           #byteKey:[B
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #path:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 4147
    .restart local v0       #byteKey:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v6       #path:Ljava/lang/String;
    :cond_1
    const-string v8, "AES"

    invoke-static {v8}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v5

    .line 4148
    .local v5, key:Ljavax/crypto/KeyGenerator;
    const/16 v8, 0x80

    invoke-virtual {v5, v8}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 4149
    invoke-virtual {v5}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 4150
    .local v7, secKey:Ljavax/crypto/SecretKey;
    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 4152
    sget-boolean v8, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "MailCommon"

    const-string v9, "Gen y Key."

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4153
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4154
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4155
    .local v4, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 4156
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 4157
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4160
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #key:Ljavax/crypto/KeyGenerator;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #secKey:Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v1

    .line 4161
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExcludeFolders(Lcom/htc/android/mail/Account;)[I
    .locals 1
    .parameter "mAccount"

    .prologue
    .line 2634
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public static getFileSizeStr(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "fileSize"

    .prologue
    .line 1705
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilenameWithoutSub(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"

    .prologue
    .line 1804
    if-nez p0, :cond_1

    .line 1805
    const-string p0, ""

    .line 1812
    .end local p0
    .local v0, location:I
    :cond_0
    :goto_0
    return-object p0

    .line 1807
    .end local v0           #location:I
    .restart local p0
    :cond_1
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1808
    .restart local v0       #location:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1811
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, subfilename:Ljava/lang/String;
    move-object p0, v1

    .line 1812
    goto :goto_0
.end method

.method public static getImportanceValue(Ljava/lang/String;)I
    .locals 2
    .parameter "importance"

    .prologue
    const/4 v0, 0x1

    .line 3330
    if-nez p0, :cond_1

    .line 3339
    :cond_0
    :goto_0
    return v0

    .line 3334
    :cond_1
    const-string v1, "high"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3335
    const/4 v0, 0x2

    goto :goto_0

    .line 3336
    :cond_2
    const-string v1, "low"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3337
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIndicatorFontSize(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    const/16 v3, 0x64

    .line 2504
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2505
    .local v0, fontSizeArray:[I
    if-lt p1, v3, :cond_0

    .line 2506
    const/4 v1, 0x2

    aget v1, v0, v1

    .line 2509
    :goto_0
    return v1

    .line 2507
    :cond_0
    if-ge p1, v3, :cond_1

    const/16 v1, 0xa

    if-lt p1, v1, :cond_1

    .line 2508
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_0

    .line 2509
    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0
.end method

.method public static getIsThisCID(Ljava/lang/String;)Z
    .locals 1
    .parameter "verifyCID"

    .prologue
    .line 4301
    const-string v0, "ro.cid"

    invoke-static {v0}, Lcom/htc/android/mail/MailCommon;->getSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getLongSequence([J)Ljava/lang/String;
    .locals 6
    .parameter "ids"

    .prologue
    .line 3373
    if-nez p0, :cond_0

    const-string v4, ""

    .line 3387
    :goto_0
    return-object v4

    .line 3374
    :cond_0
    array-length v4, p0

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_0

    .line 3376
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3378
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    aget-wide v2, p0, v4

    .line 3380
    .local v2, value:J
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3382
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 3383
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3384
    aget-wide v4, p0, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3382
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3387
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getMailListItemShowSize()Z
    .locals 1

    .prologue
    .line 295
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->MailListItemShowSize:Z

    return v0
.end method

.method public static getMailListItemStyle(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3860
    sget-object v1, Lcom/htc/android/mail/MailCommon;->c_unread_primary:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 3876
    :goto_0
    return-void

    .line 3865
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3866
    .local v0, xpp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/htc/android/mail/MailCommon;->c_unread_primary:Landroid/content/res/ColorStateList;

    .line 3867
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3868
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/htc/android/mail/MailCommon;->c_unread_secondary:Landroid/content/res/ColorStateList;

    .line 3869
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3870
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/htc/android/mail/MailCommon;->c_unread_preview:Landroid/content/res/ColorStateList;

    .line 3871
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3872
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/htc/android/mail/MailCommon;->c_read_primary:Landroid/content/res/ColorStateList;

    .line 3873
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3874
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/htc/android/mail/MailCommon;->c_read_secondary:Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3875
    .end local v0           #xpp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getMailboxId()I
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 549
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailCommon"

    const-string v5, "getMailboxId>"

    invoke-static {v0, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_0
    const/4 v6, -0x1

    .line 551
    .local v6, mailBoxId:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_mailboxId"

    aput-object v5, v2, v0

    .line 552
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v9, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    .line 554
    .local v1, uri:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/htc/android/mail/MailCommon;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 555
    .local v8, messagesTable:Landroid/database/Cursor;
    if-nez v8, :cond_1

    move v7, v6

    .line 563
    .end local v6           #mailBoxId:I
    .local v7, mailBoxId:I
    :goto_0
    return v7

    .line 558
    .end local v7           #mailBoxId:I
    .restart local v6       #mailBoxId:I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    const-string v0, "_mailboxId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 561
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 562
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailBoxId>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v7, v6

    .line 563
    .end local v6           #mailBoxId:I
    .restart local v7       #mailBoxId:I
    goto :goto_0
.end method

.method public static getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "mailbox"
    .parameter "type"

    .prologue
    .line 3223
    invoke-static {p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v1

    .line 3224
    .local v1, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {v1, p0, p2}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v2

    .line 3225
    .local v2, accounts:[Lcom/htc/android/mail/Account;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 3226
    .local v9, sb:Ljava/lang/StringBuffer;
    const-wide/16 v7, -0x1

    .line 3227
    .local v7, mailboxId:J
    const/4 v5, 0x0

    .line 3228
    .local v5, iterMailbox:Lcom/htc/android/mail/Mailbox;
    move-object v3, v2

    .local v3, arr$:[Lcom/htc/android/mail/Account;
    array-length v6, v3

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v0, v3, v4

    .line 3229
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v10

    if-nez v10, :cond_1

    .line 3228
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3230
    :cond_1
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/htc/android/mail/Mailboxs;->getMailboxByUndecodeNameAndShortName(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    .line 3231
    if-eqz v5, :cond_0

    .line 3232
    iget-wide v7, v5, Lcom/htc/android/mail/Mailbox;->id:J

    .line 3233
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 3234
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3236
    :cond_2
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3238
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public static getMessageAccount(Landroid/content/Context;J)J
    .locals 10
    .parameter "context"
    .parameter "messageId"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 2481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_account"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2483
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 2484
    const-wide/16 v6, -0x1

    .line 2489
    :goto_0
    return-wide v6

    .line 2485
    :cond_0
    const-wide/16 v6, -0x1

    .line 2486
    .local v6, acId:J
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2487
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2488
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getMessageBoxId(Landroid/content/Context;J)J
    .locals 10
    .parameter "context"
    .parameter "messageId"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 2492
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_mailboxId"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2494
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 2495
    const-wide/16 v6, -0x1

    .line 2500
    :goto_0
    return-wide v6

    .line 2496
    :cond_0
    const-wide/16 v6, -0x1

    .line 2497
    .local v6, boxId:J
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2498
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2499
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getMessagesUri(JJ)Landroid/net/Uri;
    .locals 2
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 3916
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mailbox"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMessagesUri(JJLjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "filter"

    .prologue
    .line 3922
    if-eqz p4, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/htc/android/mail/MailCommon;->getMessagesUri(JJ)Landroid/net/Uri;

    move-result-object v0

    .line 3924
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mailbox"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOriginFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "suggestname"

    .prologue
    .line 911
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->getFilenameWithoutSub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 912
    .local v2, oldFilename:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->getSubFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, fileExtension:Ljava/lang/String;
    const-string v3, ""

    .line 914
    .local v3, originName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 915
    .local v1, lenth:I
    const/4 v4, -0x1

    .line 917
    .local v4, value:I
    add-int/lit8 v5, v1, -0x2

    :try_start_0
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 920
    :goto_0
    sget-boolean v5, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check originfilename="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, -0x3

    add-int/lit8 v8, v1, -0x2

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :cond_0
    add-int/lit8 v5, v1, -0x3

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 922
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    add-int/lit8 v7, v1, -0x3

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 926
    :goto_1
    sget-boolean v5, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "originfilename="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :cond_1
    return-object v3

    .line 924
    :cond_2
    move-object v3, p0

    goto :goto_1

    .line 918
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getPartMessageUri(JJ)Landroid/net/Uri;
    .locals 2
    .parameter "partId"
    .parameter "mailboxId"

    .prologue
    .line 3931
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getSequence(Ljava/util/List;Z)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "escape"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3344
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    if-nez p0, :cond_0

    const-string v4, ""

    .line 3369
    :goto_0
    return-object v4

    .line 3345
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 3346
    .local v2, size:I
    if-nez v2, :cond_1

    const-string v4, ""

    goto :goto_0

    .line 3348
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3350
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 3351
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 3352
    if-eqz p1, :cond_3

    .line 3353
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3359
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_6

    .line 3360
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 3359
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3355
    .end local v0           #i:I
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3361
    .restart local v0       #i:I
    :cond_4
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3362
    if-eqz p1, :cond_5

    .line 3363
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3365
    :cond_5
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3369
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getSequence([Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 4
    .parameter "objs"
    .parameter "escape"

    .prologue
    .line 3391
    if-nez p0, :cond_0

    const-string v3, ""

    .line 3415
    :goto_0
    return-object v3

    .line 3392
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    .line 3394
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3396
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    aget-object v2, p0, v3

    .line 3397
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 3398
    if-eqz p1, :cond_3

    .line 3399
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3405
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_6

    .line 3406
    aget-object v3, p0, v0

    if-nez v3, :cond_4

    .line 3405
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3401
    .end local v0           #i:I
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3407
    .restart local v0       #i:I
    :cond_4
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3408
    if-eqz p1, :cond_5

    .line 3409
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3411
    :cond_5
    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3415
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getSimReady(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 4285
    const/4 v0, 0x5

    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->getSimState(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSimState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 4276
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4277
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    return v1
.end method

.method public static getSingleAccountId(Landroid/content/Context;)J
    .locals 14
    .parameter "context"

    .prologue
    const-wide/16 v10, -0x1

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 2412
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "count(_id)"

    aput-object v4, v2, v13

    const-string v4, "_id"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2414
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 2415
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailCommon"

    const-string v1, "getSingleAccountId null>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-wide v6, v10

    .line 2429
    :cond_1
    :goto_0
    return-wide v6

    .line 2418
    :cond_2
    const-wide/16 v6, -0x1

    .line 2419
    .local v6, accountId:J
    const/4 v9, 0x0

    .line 2420
    .local v9, count:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2421
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2422
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v6, v0

    .line 2423
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MailCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSingleAccountId<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2426
    if-le v9, v12, :cond_1

    move-wide v6, v10

    .line 2427
    goto :goto_0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSubFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    .line 1791
    if-nez p0, :cond_0

    .line 1792
    const-string v2, ""

    .line 1799
    :goto_0
    return-object v2

    .line 1794
    :cond_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1795
    .local v0, location:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1796
    const/4 v2, 0x0

    goto :goto_0

    .line 1798
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1799
    .local v1, subfilename:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static declared-synchronized getSuggestDate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 968
    const-class v3, Lcom/htc/android/mail/MailCommon;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 969
    .local v0, time:J
    sget-object v2, Lcom/htc/android/mail/MailCommon;->cal:Ljava/util/Calendar;

    if-nez v2, :cond_0

    .line 970
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, Lcom/htc/android/mail/MailCommon;->cal:Ljava/util/Calendar;

    .line 972
    :cond_0
    sget-object v2, Lcom/htc/android/mail/MailCommon;->cal:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 974
    const-string v2, "-yyyyMMdd-kkmmss"

    sget-object v4, Lcom/htc/android/mail/MailCommon;->cal:Ljava/util/Calendar;

    invoke-static {v2, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 968
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getSuggestFileName(ILjava/lang/String;Landroid/content/Context;I)Ljava/lang/String;
    .locals 12
    .parameter "enableSDsave"
    .parameter "filename"
    .parameter "context"
    .parameter "attachType"

    .prologue
    const/4 v9, 0x0

    .line 935
    const/4 v7, 0x0

    .line 936
    .local v7, storageRootDir:Ljava/lang/String;
    invoke-static {p2, p0, v9, v9, p3}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 938
    invoke-static {p1}, Lcom/htc/android/mail/MailCommon;->getFilenameWithoutSub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 939
    .local v6, oldFilename:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/android/mail/MailCommon;->getSubFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, fileExtension:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/htc/android/mail/MailCommon;->getSuggestDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 941
    .local v3, newFilename:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 943
    .local v4, newFilenameWithExt:Ljava/lang/String;
    sget-boolean v9, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "MailCommon"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get suggest name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ext:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 946
    .local v0, fTemp:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 947
    sget-boolean v9, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "MailCommon"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new suggest name(date style):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .end local v4           #newFilenameWithExt:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v4

    .line 951
    .restart local v4       #newFilenameWithExt:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    const/16 v9, 0x64

    if-ge v2, v9, :cond_6

    .line 952
    const/16 v9, 0xa

    if-ge v2, v9, :cond_4

    .line 953
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 957
    .local v5, noneRepeatFilename:Ljava/lang/String;
    :goto_2
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 958
    .local v8, temp:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    .line 959
    sget-boolean v9, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "MailCommon"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new suggest name(number style):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v4, v5

    .line 960
    goto :goto_0

    .line 955
    .end local v5           #noneRepeatFilename:Ljava/lang/String;
    .end local v8           #temp:Ljava/io/File;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #noneRepeatFilename:Ljava/lang/String;
    goto :goto_2

    .line 951
    .restart local v8       #temp:Ljava/io/File;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 963
    .end local v5           #noneRepeatFilename:Ljava/lang/String;
    .end local v8           #temp:Ljava/io/File;
    :cond_6
    sget-boolean v9, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "MailCommon"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new suggest name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v4, p1

    .line 964
    goto/16 :goto_0
.end method

.method public static getSummariesUri(JJ)Landroid/net/Uri;
    .locals 2
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 3901
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mailbox"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getSummariesUri(JJLjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "filter"

    .prologue
    .line 3907
    if-eqz p4, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v0

    .line 3909
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mailbox"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSystemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "propName"

    .prologue
    .line 4293
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 337
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUnreadNumber(Landroid/content/Context;JJ)I
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 4005
    invoke-static {p1, p2, p3, p4}, Lcom/htc/android/mail/MailCommon;->getMessagesUri(JJ)Landroid/net/Uri;

    move-result-object v1

    .line 4006
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "messages._read = 0"

    .line 4007
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "count(messages._id)"

    aput-object v5, v2, v8

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4008
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 4009
    .local v7, unreadNumber:I
    if-eqz v6, :cond_1

    .line 4010
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4011
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4013
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4015
    :cond_1
    return v7
.end method

.method public static getUnreadNumber(Landroid/content/Context;JJJ)I
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "firstMessageId"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 4019
    invoke-static {p1, p2, p3, p4}, Lcom/htc/android/mail/MailCommon;->getMessagesUri(JJ)Landroid/net/Uri;

    move-result-object v1

    .line 4020
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messages._read = 0 AND messages._id >= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4021
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "count(messages._id)"

    aput-object v5, v2, v8

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4022
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 4023
    .local v7, unreadNumber:I
    if-eqz v6, :cond_1

    .line 4024
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4025
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4027
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4029
    :cond_1
    return v7
.end method

.method public static getUnreadNumberFromNotification(Landroid/content/Context;J)I
    .locals 9
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 4033
    const/4 v7, 0x0

    .line 4034
    .local v7, unreadNumber:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "sum(_number)"

    aput-object v0, v2, v8

    .line 4035
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "_type = 1"

    .line 4036
    .local v3, where:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _accountid IN (SELECT _id from accounts) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4037
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 4038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _accountid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4040
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4041
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 4042
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4043
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4045
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4047
    :cond_2
    return v7
.end method

.method public static getYesIDAccountInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 4313
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 4324
    .local v0, accountName:[Ljava/lang/String;
    return-object v0
.end method

.method private ifProhibitApk()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1121
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x59

    if-ne v1, v2, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return v0

    .line 1123
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x78

    if-eq v1, v2, :cond_0

    .line 1125
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static importVCard(Landroid/content/Context;Lcom/htc/android/mail/Attachment;)I
    .locals 14
    .parameter "context"
    .parameter "attach"

    .prologue
    .line 428
    iget-object v0, p1, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 429
    .local v0, _filename:Ljava/lang/String;
    iget-object v1, p1, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 431
    .local v1, _filepath:Ljava/lang/String;
    sget-boolean v10, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "MailCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parts ID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p1, Lcom/htc/android/mail/Attachment;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    sget-boolean v10, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "MailCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_filename>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_1
    sget-boolean v10, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v10, :cond_2

    const-string v10, "MailCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_filepath>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_2
    if-nez v1, :cond_3

    const/16 v10, 0xc8

    .line 500
    :goto_0
    return v10

    .line 437
    :cond_3
    const/4 v2, 0x0

    .line 438
    .local v2, buf:[B
    const/4 v8, 0x0

    .line 440
    .local v8, fileSize:I
    const-string v10, "content"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 441
    const/4 v6, 0x0

    .line 444
    .local v6, f:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    const/16 v11, 0x400

    invoke-direct {v7, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 445
    .end local v6           #f:Ljava/io/BufferedInputStream;
    .local v7, f:Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->available()I

    move-result v8

    .line 446
    const v10, 0x32000

    if-le v8, v10, :cond_4

    .line 447
    const v8, 0x32000

    .line 449
    :cond_4
    new-array v2, v8, [B

    .line 450
    invoke-virtual {v7, v2}, Ljava/io/BufferedInputStream;->read([B)I

    .line 451
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_8

    .line 490
    .end local v7           #f:Ljava/io/BufferedInputStream;
    :cond_5
    :goto_1
    sget-boolean v10, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string v10, "MailCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "try import vCard: Size:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_6
    sget-boolean v10, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v10, :cond_7

    const-string v10, "MailCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "try import vCard: buf:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_7
    array-length v10, v2

    if-nez v10, :cond_a

    const/16 v10, 0xc8

    goto :goto_0

    .line 452
    .restart local v6       #f:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v5

    .line 453
    .local v5, ex:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 454
    const/16 v10, 0xc8

    goto/16 :goto_0

    .line 455
    .end local v5           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 456
    .local v4, e:Ljava/lang/OutOfMemoryError;
    :goto_3
    const-string v10, "MailCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OFM>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const v10, 0x7f0b0137

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 458
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 459
    .local v3, comRun:Ljava/lang/Runtime;
    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 460
    const/16 v10, 0xc8

    goto/16 :goto_0

    .line 462
    .end local v3           #comRun:Ljava/lang/Runtime;
    .end local v4           #e:Ljava/lang/OutOfMemoryError;
    .end local v6           #f:Ljava/io/BufferedInputStream;
    :cond_8
    if-eqz v1, :cond_5

    .line 463
    const/4 v6, 0x0

    .line 466
    .local v6, f:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    .line 467
    .end local v6           #f:Ljava/io/FileInputStream;
    .local v7, f:Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .line 468
    const v10, 0x32000

    if-le v8, v10, :cond_9

    .line 469
    const v8, 0x32000

    .line 471
    :cond_9
    new-array v2, v8, [B

    .line 472
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 473
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 474
    :catch_2
    move-exception v4

    move-object v6, v7

    .line 475
    .end local v7           #f:Ljava/io/FileInputStream;
    .local v4, e:Ljava/io/FileNotFoundException;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :goto_4
    const-string v10, "MailCommon"

    const-string v11, "FileNotFoundException>"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 477
    const/16 v10, 0xc8

    goto/16 :goto_0

    .line 478
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 479
    .restart local v5       #ex:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 480
    const/16 v10, 0xc8

    goto/16 :goto_0

    .line 481
    .end local v5           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 482
    .local v4, e:Ljava/lang/OutOfMemoryError;
    :goto_6
    const-string v10, "MailCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OFM>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const v10, 0x7f0b0137

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 484
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 485
    .restart local v3       #comRun:Ljava/lang/Runtime;
    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 486
    const/16 v10, 0xc8

    goto/16 :goto_0

    .line 495
    .end local v3           #comRun:Ljava/lang/Runtime;
    .end local v4           #e:Ljava/lang/OutOfMemoryError;
    .end local v6           #f:Ljava/io/FileInputStream;
    :cond_a
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 496
    .local v9, intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.IMPORT_VCARD_SELECT_FIELDS"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v10, "result"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 500
    const/16 v10, 0xc8

    goto/16 :goto_0

    .line 481
    .end local v9           #intent:Landroid/content/Intent;
    .restart local v7       #f:Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    goto :goto_6

    .line 478
    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    move-object v6, v7

    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    goto :goto_5

    .line 474
    :catch_7
    move-exception v4

    goto :goto_4

    .line 455
    .end local v6           #f:Ljava/io/FileInputStream;
    .local v7, f:Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v4

    move-object v6, v7

    .end local v7           #f:Ljava/io/BufferedInputStream;
    .local v6, f:Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .line 452
    .end local v6           #f:Ljava/io/BufferedInputStream;
    .restart local v7       #f:Ljava/io/BufferedInputStream;
    :catch_9
    move-exception v5

    move-object v6, v7

    .end local v7           #f:Ljava/io/BufferedInputStream;
    .restart local v6       #f:Ljava/io/BufferedInputStream;
    goto/16 :goto_2
.end method

.method public static initTheme(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 2474
    return-void
.end method

.method private insertContentValues(Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "cv"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 404
    iget-object v1, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-object v0

    .line 406
    :cond_1
    if-eqz p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs invokeVoidMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .parameter "className"
    .parameter "methodName"
    .parameter "receiver"
    .parameter "args"

    .prologue
    .line 2779
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2780
    .local v2, loader:Ljava/lang/ClassLoader;
    const/4 v5, 0x0

    .line 2782
    .local v5, rtn:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2783
    .local v1, htcWeb:Ljava/lang/Class;
    invoke-virtual {v1, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2784
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 2785
    .local v4, obj:[Ljava/lang/Object;
    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v5

    .line 2799
    .end local v1           #htcWeb:Ljava/lang/Class;
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #obj:[Ljava/lang/Object;
    .end local v5           #rtn:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 2786
    .restart local v5       #rtn:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 2787
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "MailCommon"

    const-string v7, "invokeMethod:NullPointerException"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2788
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2789
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v6, "MailCommon"

    const-string v7, "invokeMethod:IllegalAccessException"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2790
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 2791
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "MailCommon"

    const-string v7, "invokeMethod:IllegalArgumentException"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2792
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 2793
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v6, "MailCommon"

    const-string v7, "invokeMethod:InvocationTargetException"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2794
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 2795
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v6, "MailCommon"

    const-string v7, "invokeMethod:ClassNotFoundException"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2796
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v0

    .line 2797
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v6, "MailCommon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invokeMethod:NoSuchMethodException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isAttachmentDownloaded(Landroid/content/ContentResolver;J)Z
    .locals 11
    .parameter "cr"
    .parameter "messageId"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3262
    const/4 v7, 0x0

    .line 3264
    .local v7, isDownloaded:Z
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_message = \'%d\' AND _filename <> \'\' AND _filepath is null"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v9

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3265
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "count(*) as total"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3266
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3267
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3268
    const-string v0, "total"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3269
    .local v8, totoal:I
    if-nez v8, :cond_0

    .line 3270
    const/4 v7, 0x1

    .line 3276
    .end local v8           #totoal:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3278
    :cond_1
    return v7

    .line 3274
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isDataStorageFull(Landroid/content/Context;J)Z
    .locals 8
    .parameter "c"
    .parameter "requireSize"

    .prologue
    .line 3889
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3890
    .local v0, FileStats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v1, v5

    .line 3891
    .local v1, blkSize:J
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    mul-long v3, v5, v1

    .line 3892
    .local v3, freeMem:J
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data partition free size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    :cond_0
    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    .line 3895
    const/4 v5, 0x1

    .line 3897
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isIMSIChanged(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 2828
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2829
    .local v2, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2830
    .local v0, IMSI:Ljava/lang/String;
    sget-boolean v4, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MailCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "now imsi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    :cond_0
    invoke-static {p0}, Lcom/htc/android/mail/Util;->getIMSIFromPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2834
    .local v1, lastIMSI:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2836
    invoke-static {p0, v0}, Lcom/htc/android/mail/Util;->writeIMSIToPref(Landroid/content/Context;Ljava/lang/String;)V

    .line 2837
    sget-boolean v4, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "MailCommon"

    const-string v5, "IMSI Changed"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    :cond_2
    :goto_0
    return v3

    .line 2839
    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2840
    invoke-static {p0, v0}, Lcom/htc/android/mail/Util;->writeIMSIToPref(Landroid/content/Context;Ljava/lang/String;)V

    .line 2841
    sget-boolean v4, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "MailCommon"

    const-string v5, "IMSI Changed"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2844
    :cond_5
    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "MailCommon"

    const-string v4, "IMSI not Changed"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isInPeakTime(Landroid/content/Context;Lcom/htc/android/mail/Account;)Z
    .locals 10
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4058
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 4059
    .local v1, dtNow:Ljava/util/Date;
    new-instance v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->getPeakDays(Landroid/content/Context;)I

    move-result v8

    invoke-direct {v0, v8}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>(I)V

    .line 4060
    .local v0, daysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->getPeakTimeStart(Landroid/content/Context;)I

    move-result v5

    .line 4061
    .local v5, peakStart:I
    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->getPeakTimeEnd(Landroid/content/Context;)I

    move-result v4

    .line 4062
    .local v4, peakEnd:I
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v9

    add-int v2, v8, v9

    .line 4064
    .local v2, minuteNow:I
    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v8

    if-nez v8, :cond_1

    .line 4065
    const/4 v3, 0x6

    .line 4069
    .local v3, nowDay:I
    :goto_0
    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->isSet(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 4086
    :cond_0
    :goto_1
    return v6

    .line 4067
    .end local v3           #nowDay:I
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .restart local v3       #nowDay:I
    goto :goto_0

    .line 4073
    :cond_2
    if-eq v5, v4, :cond_0

    .line 4076
    if-ge v5, v4, :cond_3

    .line 4077
    if-gt v5, v2, :cond_0

    if-gt v2, v4, :cond_0

    move v6, v7

    .line 4078
    goto :goto_1

    .line 4083
    :cond_3
    if-ge v2, v5, :cond_4

    if-gt v2, v4, :cond_0

    :cond_4
    move v6, v7

    .line 4084
    goto :goto_1
.end method

.method private static isMailbodyDownloaded(Landroid/content/ContentResolver;J)Z
    .locals 10
    .parameter "cr"
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 3242
    const/4 v7, 0x0

    .line 3243
    .local v7, isDownloaded:Z
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3244
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_readtotalsize"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "_readsize"

    aput-object v4, v2, v0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3245
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3246
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3247
    const-string v0, "_readtotalsize"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 3248
    .local v9, total:I
    const-string v0, "_readsize"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3249
    .local v8, read:I
    if-lt v8, v9, :cond_0

    .line 3250
    const/4 v7, 0x1

    .line 3256
    .end local v8           #read:I
    .end local v9           #total:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3258
    :cond_1
    return v7

    .line 3254
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isPrimeEnabled()Z
    .locals 2

    .prologue
    .line 4305
    const-string v0, "ro.da1.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static loadCustSignature(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 2803
    new-instance v7, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct {v7}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    .line 2804
    .local v7, mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    invoke-virtual {v7, p0}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 2806
    .local v1, cusBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 2807
    const-string v10, "mail_signature_localization"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2808
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 2809
    const-string v4, "plenty_set"

    .line 2810
    .local v4, key_plenty:Ljava/lang/String;
    const-string v3, ""

    .line 2811
    .local v3, key_now:Ljava/lang/String;
    const-string v5, "locale"

    .line 2813
    .local v5, locale_key:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 2814
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2815
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 2816
    .local v8, plentyBundle:Landroid/os/Bundle;
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2817
    .local v6, locale_string:Ljava/lang/String;
    const-string v10, "signature"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2818
    .local v9, signature:Ljava/lang/String;
    sget-boolean v10, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "MailCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cust_MailSigLocale: locale:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", signature:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2819
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v9, :cond_1

    .line 2820
    invoke-static {p0, v6, v9}, Lcom/htc/android/mail/Util;->writeSignatureToPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2813
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2825
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #i:I
    .end local v3           #key_now:Ljava/lang/String;
    .end local v4           #key_plenty:Ljava/lang/String;
    .end local v5           #locale_key:Ljava/lang/String;
    .end local v6           #locale_string:Ljava/lang/String;
    .end local v8           #plentyBundle:Landroid/os/Bundle;
    .end local v9           #signature:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static loadHuxCommonSettings(Landroid/content/ContentValues;Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 14
    .parameter "values"
    .parameter "context"

    .prologue
    .line 3567
    new-instance v4, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct {v4}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    .line 3568
    .local v4, mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    invoke-virtual {v4, p1}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 3569
    .local v1, cusBundle:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 3571
    .local v3, isLoaded:Z
    if-eqz v1, :cond_e

    .line 3572
    const-string v11, "hux_common_setting"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3573
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v11

    if-lez v11, :cond_e

    .line 3574
    const-string v11, "plenty_set1"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 3575
    .local v8, settingBundle:Landroid/os/Bundle;
    if-eqz v8, :cond_e

    .line 3576
    sget-boolean v11, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "MailCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "found hux customize setting bundle>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3578
    :cond_0
    const-string v11, "fetchMailDays"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3579
    .local v2, fetchMailDays:Ljava/lang/String;
    sget-boolean v11, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "MailCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cust_MailHuxCommon: cust_poll_fetchMailDays>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3580
    :cond_1
    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/android/mail/MailProvider;->huxFetchMailDays:Ljava/lang/String;

    .line 3581
    :cond_2
    const-string v11, "peakDays"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3582
    .local v5, peakDays:Ljava/lang/String;
    sget-boolean v11, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "MailCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cust_MailHuxCommon: cust_peakDays>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    :cond_3
    if-nez v5, :cond_4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->huxPeakDays:Ljava/lang/String;

    .line 3584
    :cond_4
    const-string v11, "syncSchedulePeakOn"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3585
    .local v10, syncSchedulePeakOn:Ljava/lang/String;
    sget-boolean v11, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v11, :cond_5

    const-string v11, "MailCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cust_MailHuxCommon: cust_syncSchedulePeakOn>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3586
    :cond_5
    if-nez v10, :cond_6

    sget-object v10, Lcom/htc/android/mail/MailProvider;->huxSyncSchedulePeakOn:Ljava/lang/String;

    .line 3587
    :cond_6
    const-string v11, "syncSchedulePeakOff"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3588
    .local v9, syncSchedulePeakOff:Ljava/lang/String;
    sget-boolean v11, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v11, :cond_7

    const-string v11, "MailCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cust_MailHuxCommon: cust_syncSchedulePeakOff>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    :cond_7
    if-nez v9, :cond_8

    sget-object v9, Lcom/htc/android/mail/MailProvider;->huxSyncSchedulePeakOff:Ljava/lang/String;

    .line 3590
    :cond_8
    const-string v11, "peakTimeStart"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3591
    .local v7, peakTimeStart:Ljava/lang/String;
    sget-boolean v11, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v11, :cond_9

    const-string v11, "MailCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cust_MailHuxCommon: cust_peakTimeStart>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3592
    :cond_9
    if-nez v7, :cond_a

    sget-object v7, Lcom/htc/android/mail/MailProvider;->huxPeakTimeStart:Ljava/lang/String;

    .line 3593
    :cond_a
    const-string v11, "peakTimeEnd"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3594
    .local v6, peakTimeEnd:Ljava/lang/String;
    sget-boolean v11, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v11, :cond_b

    const-string v11, "MailCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cust_MailHuxCommon: cust_peakTimeEnd>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    :cond_b
    if-nez v6, :cond_c

    sget-object v6, Lcom/htc/android/mail/MailProvider;->huxPeakTimeEnd:Ljava/lang/String;

    .line 3598
    :cond_c
    const-string v11, "_fetchMailType"

    sget-object v12, Lcom/htc/android/mail/MailProvider;->huxFetchMailType:Ljava/lang/String;

    invoke-virtual {p0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3599
    const-string v11, "_fetchMailDays"

    invoke-virtual {p0, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3600
    const-string v11, "_peakdays"

    invoke-virtual {p0, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3601
    const-string v11, "_peakonfrequency"

    invoke-virtual {p0, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3602
    const-string v11, "_peakofffrequency"

    invoke-virtual {p0, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3603
    const-string v11, "_peaktimestart"

    invoke-virtual {p0, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    const-string v11, "_peaktimeend"

    invoke-virtual {p0, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3606
    sget-boolean v11, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v11, :cond_d

    const-string v11, "MailCommon"

    const-string v12, "load hux common setting from customization done"

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    :cond_d
    const/4 v3, 0x1

    .line 3612
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #fetchMailDays:Ljava/lang/String;
    .end local v5           #peakDays:Ljava/lang/String;
    .end local v6           #peakTimeEnd:Ljava/lang/String;
    .end local v7           #peakTimeStart:Ljava/lang/String;
    .end local v8           #settingBundle:Landroid/os/Bundle;
    .end local v9           #syncSchedulePeakOff:Ljava/lang/String;
    .end local v10           #syncSchedulePeakOn:Ljava/lang/String;
    :cond_e
    if-nez v3, :cond_f

    .line 3614
    const-string v11, "_fetchMailType"

    sget-object v12, Lcom/htc/android/mail/MailProvider;->huxFetchMailType:Ljava/lang/String;

    invoke-virtual {p0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3615
    const-string v11, "_fetchMailDays"

    sget-object v12, Lcom/htc/android/mail/MailProvider;->huxFetchMailDays:Ljava/lang/String;

    invoke-virtual {p0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3616
    const-string v11, "_peakdays"

    sget-object v12, Lcom/htc/android/mail/MailProvider;->huxPeakDays:Ljava/lang/String;

    invoke-virtual {p0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3617
    const-string v11, "_peakonfrequency"

    sget-object v12, Lcom/htc/android/mail/MailProvider;->huxSyncSchedulePeakOn:Ljava/lang/String;

    invoke-virtual {p0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3618
    const-string v11, "_peakofffrequency"

    sget-object v12, Lcom/htc/android/mail/MailProvider;->huxSyncSchedulePeakOff:Ljava/lang/String;

    invoke-virtual {p0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3619
    const-string v11, "_peaktimestart"

    sget-object v12, Lcom/htc/android/mail/MailProvider;->huxPeakTimeStart:Ljava/lang/String;

    invoke-virtual {p0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3620
    const-string v11, "_peaktimeend"

    sget-object v12, Lcom/htc/android/mail/MailProvider;->huxPeakTimeEnd:Ljava/lang/String;

    invoke-virtual {p0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3622
    :cond_f
    return-object p0
.end method

.method public static loadMailCommonSettings(Landroid/content/ContentValues;Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 34
    .parameter "values"
    .parameter "context"

    .prologue
    .line 3420
    new-instance v15, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct {v15}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    .line 3421
    .local v15, mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v6

    .line 3422
    .local v6, cusBundle:Landroid/os/Bundle;
    const/4 v14, 0x0

    .line 3424
    .local v14, isLoaded:Z
    if-eqz v6, :cond_30

    .line 3425
    const-string v31, "mail_common_setting"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 3426
    .local v5, bundle:Landroid/os/Bundle;
    if-eqz v5, :cond_30

    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v31

    if-lez v31, :cond_30

    .line 3427
    const-string v31, "plenty_set1"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 3428
    .local v23, settingBundle:Landroid/os/Bundle;
    if-eqz v23, :cond_30

    .line 3429
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_0

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "found customize setting bundle>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3430
    :cond_0
    const-string v31, "useSignature"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3431
    .local v29, useSignature:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_1

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_useSignature>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3432
    :cond_1
    if-nez v29, :cond_2

    sget-object v29, Lcom/htc/android/mail/MailProvider;->useSignature:Ljava/lang/String;

    .line 3433
    :cond_2
    const-string v31, "sizelimit"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3434
    .local v24, sizelimit:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_3

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_sizelimit>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3435
    :cond_3
    if-nez v24, :cond_4

    sget-object v24, Lcom/htc/android/mail/MailProvider;->sizelimit:Ljava/lang/String;

    .line 3436
    :cond_4
    const-string v31, "poll_frequency_number"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3437
    .local v19, poll_frequency_number:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_5

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_poll_frequency_number>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3438
    :cond_5
    if-nez v19, :cond_6

    sget-object v19, Lcom/htc/android/mail/MailProvider;->poll_frequency_number:Ljava/lang/String;

    .line 3439
    :cond_6
    const-string v31, "fetchMailType"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3440
    .local v13, fetchMailType:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_7

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_poll_fetchMailType>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3441
    :cond_7
    if-nez v13, :cond_8

    sget-object v13, Lcom/htc/android/mail/MailProvider;->fetchMailType:Ljava/lang/String;

    .line 3442
    :cond_8
    const-string v31, "fetchMailDays"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3443
    .local v11, fetchMailDays:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_9

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_poll_fetchMailDays>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    :cond_9
    if-nez v11, :cond_a

    sget-object v11, Lcom/htc/android/mail/MailProvider;->fetchMailDays:Ljava/lang/String;

    .line 3445
    :cond_a
    const-string v31, "fetchMailNum"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3446
    .local v12, fetchMailNum:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_b

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_poll_fetchMailNum>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    :cond_b
    if-nez v12, :cond_c

    sget-object v12, Lcom/htc/android/mail/MailProvider;->fetchMailNum:Ljava/lang/String;

    .line 3448
    :cond_c
    const-string v31, "deleteFromServer"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3449
    .local v7, deleteFromServer:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_d

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_poll_deleteFromServer>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3450
    :cond_d
    if-nez v7, :cond_e

    sget-object v7, Lcom/htc/android/mail/MailProvider;->deleteFromServer:Ljava/lang/String;

    .line 3451
    :cond_e
    const-string v31, "alwaysBccMyself"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3452
    .local v3, alwaysBccMyself:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_f

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_alwaysBccMyself>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    :cond_f
    if-nez v3, :cond_10

    sget-object v3, Lcom/htc/android/mail/MailProvider;->alwaysBccMyself:Ljava/lang/String;

    .line 3454
    :cond_10
    const-string v31, "askBeforeDelete"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3455
    .local v4, askBeforeDelete:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_11

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_askBeforeDelete>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3456
    :cond_11
    if-nez v4, :cond_12

    sget-object v4, Lcom/htc/android/mail/MailProvider;->askBeforeDelete:Ljava/lang/String;

    .line 3457
    :cond_12
    const-string v31, "enableSDsave"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3458
    .local v10, enableSDsave:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_13

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_enableSDsave>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    :cond_13
    if-nez v10, :cond_14

    sget-object v10, Lcom/htc/android/mail/MailProvider;->enableSDsave:Ljava/lang/String;

    .line 3460
    :cond_14
    const-string v31, "emailnotifications"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3461
    .local v9, emailnotifications:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_15

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_emailnotifications>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    :cond_15
    if-nez v9, :cond_16

    sget-object v9, Lcom/htc/android/mail/MailProvider;->emailNotifications:Ljava/lang/String;

    .line 3463
    :cond_16
    const-string v31, "vibrate"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3464
    .local v30, vibrate:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_17

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_vibrate>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3465
    :cond_17
    if-nez v30, :cond_18

    sget-object v30, Lcom/htc/android/mail/MailProvider;->vibrate:Ljava/lang/String;

    .line 3466
    :cond_18
    const-string v31, "sound"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3467
    .local v25, sound:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_19

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_sound>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    :cond_19
    if-nez v25, :cond_1a

    sget-object v25, Lcom/htc/android/mail/MailProvider;->sound:Ljava/lang/String;

    .line 3469
    :cond_1a
    const-string v31, "replyWithText"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3470
    .local v22, replyWithText:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_1b

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_replyWithText>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3471
    :cond_1b
    if-nez v22, :cond_1c

    sget-object v22, Lcom/htc/android/mail/MailProvider;->replyWithText:Ljava/lang/String;

    .line 3472
    :cond_1c
    const-string v31, "refreshMailWhenOpenFolder"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3473
    .local v21, refreshMailWhenOpenFolder:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_1d

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_refreshMailWhenOpenFolder>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3474
    :cond_1d
    if-nez v21, :cond_1e

    sget-object v21, Lcom/htc/android/mail/MailProvider;->refreshMailWhenOpenFolder:Ljava/lang/String;

    .line 3476
    :cond_1e
    const-string v31, "peakDays"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3477
    .local v16, peakDays:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_1f

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_peakDays>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3478
    :cond_1f
    if-nez v16, :cond_20

    sget-object v16, Lcom/htc/android/mail/MailProvider;->peakDays:Ljava/lang/String;

    .line 3479
    :cond_20
    const-string v31, "syncSchedulePeakOn"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3480
    .local v27, syncSchedulePeakOn:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_21

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_syncSchedulePeakOn>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3481
    :cond_21
    if-nez v27, :cond_22

    sget-object v27, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOn:Ljava/lang/String;

    .line 3482
    :cond_22
    const-string v31, "syncSchedulePeakOff"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3483
    .local v26, syncSchedulePeakOff:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_23

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_syncSchedulePeakOff>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    :cond_23
    if-nez v26, :cond_24

    sget-object v26, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOff:Ljava/lang/String;

    .line 3485
    :cond_24
    const-string v31, "peakTimeStart"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3486
    .local v18, peakTimeStart:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_25

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_peakTimeStart>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    :cond_25
    if-nez v18, :cond_26

    sget-object v18, Lcom/htc/android/mail/MailProvider;->peakTimeStart:Ljava/lang/String;

    .line 3488
    :cond_26
    const-string v31, "peakTimeEnd"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3489
    .local v17, peakTimeEnd:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_27

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_peakTimeEnd>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3490
    :cond_27
    if-nez v17, :cond_28

    sget-object v17, Lcom/htc/android/mail/MailProvider;->peakTimeEnd:Ljava/lang/String;

    .line 3491
    :cond_28
    const-string v31, "downloadMessageWhenScroll"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3492
    .local v8, downloadMessageWhenScroll:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_29

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_downloadMessageWhenScroll>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3493
    :cond_29
    if-nez v8, :cond_2a

    sget-object v8, Lcom/htc/android/mail/MailProvider;->downloadMessageWhenScroll:Ljava/lang/String;

    .line 3494
    :cond_2a
    const-string v31, "syncWithServer"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3495
    .local v28, syncWithServer:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_2b

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_syncWithServer>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3496
    :cond_2b
    if-nez v28, :cond_2c

    sget-object v28, Lcom/htc/android/mail/MailProvider;->syncWithServer:Ljava/lang/String;

    .line 3498
    :cond_2c
    const-string v31, "previewLinesNumber"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3499
    .local v20, previewLinesNumber:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_2d

    const-string v31, "MailCommon"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Cust_MailCommon: cust_previewLinesNumber>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3500
    :cond_2d
    if-nez v20, :cond_2e

    sget-object v20, Lcom/htc/android/mail/MailProvider;->previewLinesNumber:Ljava/lang/String;

    .line 3502
    :cond_2e
    const-string v31, "_useSignature"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    const-string v31, "_sizelimit"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    const-string v31, "_poll_frequency_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3505
    const-string v31, "_fetchMailType"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    const-string v31, "_fetchMailDays"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3507
    const-string v31, "_fetchMailNum"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    const-string v31, "_deleteFromServer"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3509
    const-string v31, "_alwaysBccMyself"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3510
    const-string v31, "_askBeforeDelete"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    const-string v31, "_enableSDsave"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3512
    const-string v31, "_emailnotifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    const-string v31, "_vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    const-string v31, "_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3515
    const-string v31, "_replyWithText"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    const-string v31, "_refreshMailWhenOpenFolder"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3518
    const-string v31, "_peakdays"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    const-string v31, "_peakonfrequency"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    const-string v31, "_peakofffrequency"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    const-string v31, "_peaktimestart"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    const-string v31, "_peaktimeend"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3524
    const-string v31, "_downloadMessageWhenScroll"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    const-string v31, "_syncWithServer"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    const-string v31, "_previewLinesNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    sget-boolean v31, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v31, :cond_2f

    const-string v31, "MailCommon"

    const-string v32, "load mail common setting from customization done"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3530
    :cond_2f
    const/4 v14, 0x1

    .line 3535
    .end local v3           #alwaysBccMyself:Ljava/lang/String;
    .end local v4           #askBeforeDelete:Ljava/lang/String;
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v7           #deleteFromServer:Ljava/lang/String;
    .end local v8           #downloadMessageWhenScroll:Ljava/lang/String;
    .end local v9           #emailnotifications:Ljava/lang/String;
    .end local v10           #enableSDsave:Ljava/lang/String;
    .end local v11           #fetchMailDays:Ljava/lang/String;
    .end local v12           #fetchMailNum:Ljava/lang/String;
    .end local v13           #fetchMailType:Ljava/lang/String;
    .end local v16           #peakDays:Ljava/lang/String;
    .end local v17           #peakTimeEnd:Ljava/lang/String;
    .end local v18           #peakTimeStart:Ljava/lang/String;
    .end local v19           #poll_frequency_number:Ljava/lang/String;
    .end local v20           #previewLinesNumber:Ljava/lang/String;
    .end local v21           #refreshMailWhenOpenFolder:Ljava/lang/String;
    .end local v22           #replyWithText:Ljava/lang/String;
    .end local v23           #settingBundle:Landroid/os/Bundle;
    .end local v24           #sizelimit:Ljava/lang/String;
    .end local v25           #sound:Ljava/lang/String;
    .end local v26           #syncSchedulePeakOff:Ljava/lang/String;
    .end local v27           #syncSchedulePeakOn:Ljava/lang/String;
    .end local v28           #syncWithServer:Ljava/lang/String;
    .end local v29           #useSignature:Ljava/lang/String;
    .end local v30           #vibrate:Ljava/lang/String;
    :cond_30
    if-nez v14, :cond_31

    .line 3536
    const-string v31, "_useSignature"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->useSignature:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3537
    const-string v31, "_sizelimit"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->sizelimit:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3538
    const-string v31, "_poll_frequency_number"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->poll_frequency_number:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    const-string v31, "_fetchMailType"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->fetchMailType:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3540
    const-string v31, "_fetchMailDays"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->fetchMailDays:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3541
    const-string v31, "_fetchMailNum"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->fetchMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3542
    const-string v31, "_deleteFromServer"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->deleteFromServer:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3543
    const-string v31, "_alwaysBccMyself"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->alwaysBccMyself:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3544
    const-string v31, "_askBeforeDelete"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->askBeforeDelete:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    const-string v31, "_enableSDsave"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->enableSDsave:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3546
    const-string v31, "_emailnotifications"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->emailNotifications:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3547
    const-string v31, "_vibrate"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->vibrate:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3548
    const-string v31, "_sound"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->sound:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    const-string v31, "_replyWithText"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->replyWithText:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3550
    const-string v31, "_refreshMailWhenOpenFolder"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->refreshMailWhenOpenFolder:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3552
    const-string v31, "_peakdays"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->peakDays:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    const-string v31, "_peakonfrequency"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOn:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3554
    const-string v31, "_peakofffrequency"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOff:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3555
    const-string v31, "_peaktimestart"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->peakTimeStart:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    const-string v31, "_peaktimeend"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->peakTimeEnd:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    const-string v31, "_downloadMessageWhenScroll"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->downloadMessageWhenScroll:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3559
    const-string v31, "_syncWithServer"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->syncWithServer:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3561
    const-string v31, "_previewLinesNumber"

    sget-object v32, Lcom/htc/android/mail/MailProvider;->previewLinesNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3563
    :cond_31
    return-object p0
.end method

.method public static lowercaseBeforeColon(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "link"

    .prologue
    .line 2763
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2764
    :cond_0
    const-string p0, ""

    .line 2774
    .local v0, index:I
    :cond_1
    :goto_0
    return-object p0

    .line 2767
    .end local v0           #index:I
    :cond_2
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2768
    .restart local v0       #index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2771
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2772
    .local v1, len:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2773
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lowercaseBeforeColon:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static mediaScanMimeType(Ljava/lang/String;Landroid/content/Context;)I
    .locals 4
    .parameter "_filepath"
    .parameter "context"

    .prologue
    .line 1999
    new-instance v0, Lcom/htc/android/mail/MediaInfo;

    invoke-direct {v0, p1}, Lcom/htc/android/mail/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 2000
    .local v0, Info:Lcom/htc/android/mail/MediaInfo;
    invoke-virtual {v0, p0}, Lcom/htc/android/mail/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v1

    .line 2001
    .local v1, filetype:I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    .line 2002
    const/4 v1, 0x1

    .line 2003
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailCommon"

    const-string v3, "MediaScanner> audio"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    :cond_0
    :goto_0
    return v1

    .line 2005
    :cond_1
    const/4 v2, 0x2

    if-ne v2, v1, :cond_2

    .line 2006
    const/4 v1, 0x2

    .line 2007
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailCommon"

    const-string v3, "MediaScanner> video"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2010
    :cond_2
    const/4 v1, 0x0

    .line 2011
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailCommon"

    const-string v3, "MediaScanner> not video/audio"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static mergeSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sql1"
    .parameter "sql2"

    .prologue
    .line 3960
    const/4 v0, 0x0

    .line 3961
    .local v0, where:Ljava/lang/String;
    if-eqz p0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3962
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3974
    :goto_0
    return-object v0

    .line 3965
    :cond_0
    move-object v0, p0

    goto :goto_0

    .line 3968
    :cond_1
    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3969
    move-object v0, p1

    goto :goto_0

    .line 3971
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static moveMeetingMailToTrash(JLcom/htc/android/mail/Account;Lcom/htc/android/mail/AbsRequestController;Landroid/content/Context;)V
    .locals 13
    .parameter "markId"
    .parameter "account"
    .parameter "requestController"
    .parameter "context"

    .prologue
    .line 3072
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3073
    :cond_0
    const-string v2, "MailCommon"

    const-string v3, "move meeting mail to trash, can\'t get mailboxs"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    :goto_0
    return-void

    .line 3076
    :cond_1
    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getTrashMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v12

    .line 3077
    .local v12, trashMailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v12, :cond_2

    .line 3078
    const-string v2, "MailCommon"

    const-string v3, "move meeting mail to trash, can\'t get trash mailbox"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3082
    :cond_2
    move-object/from16 v0, p4

    invoke-static {v0, p0, p1}, Lcom/htc/android/mail/MailCommon;->getMessageBoxId(Landroid/content/Context;J)J

    move-result-wide v4

    .line 3083
    .local v4, mailboxId:J
    new-instance v1, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v1}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    .line 3084
    .local v1, selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const/4 v8, 0x0

    move-wide v6, p0

    invoke-virtual/range {v1 .. v8}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    .line 3085
    iget-wide v9, v12, Lcom/htc/android/mail/Mailbox;->id:J

    const/4 v11, 0x0

    move-object v6, v1

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-virtual/range {v6 .. v11}, Lcom/htc/android/mail/util/SelectedMailMessages;->moveMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;JZ)V

    .line 3086
    const/4 v1, 0x0

    .line 3088
    sget-object v2, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v8, 0x0

    aput-wide p0, v3, v8

    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v6, v7, v3}, Lcom/htc/android/mail/MailEventBroadcaster;->sendDeleteMailIntent(Landroid/content/Context;J[J)V

    goto :goto_0
.end method

.method public static needAddGlobalButton(Lcom/htc/android/mail/Account;Landroid/content/Context;)Z
    .locals 7
    .parameter "account"
    .parameter "mContext"

    .prologue
    .line 4228
    const/4 v2, 0x0

    .line 4229
    .local v2, ret:Z
    const/4 v1, 0x0

    .line 4231
    .local v1, protocol:Ljava/lang/String;
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->isExchange()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_3

    .line 4232
    :cond_0
    const/4 v2, 0x0

    .line 4244
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needAddGlobalButton: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4245
    :cond_2
    return v2

    .line 4234
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/Account;->getExchangeLargestProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4235
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v3

    const-wide/high16 v5, 0x4004

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 4237
    const/4 v2, 0x1

    goto :goto_0

    .line 4240
    :catch_0
    move-exception v0

    .line 4241
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4242
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static notSendMeetingResponse(IJLandroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V
    .locals 19
    .parameter "respType"
    .parameter "messageId"
    .parameter "context"
    .parameter "requestController"

    .prologue
    .line 3028
    if-nez p4, :cond_1

    .line 3029
    const-string v4, "MailCommon"

    const-string v5, "don\'t send meeting response failed, controller is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    :cond_0
    :goto_0
    return-void

    .line 3033
    :cond_1
    const/16 v16, 0x0

    .line 3034
    .local v16, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 3035
    .local v12, account:Lcom/htc/android/mail/Account;
    const/4 v13, 0x0

    .line 3037
    .local v13, mailbox:Lcom/htc/android/mail/Mailbox;
    const/4 v4, 0x2

    :try_start_0
    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_account"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "_mailboxId"

    aput-object v5, v6, v4

    .line 3038
    .local v6, proj:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3039
    .local v7, where:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3040
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3041
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3042
    .local v14, accountId:J
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 3043
    .local v17, mailboxId:J
    invoke-static {v14, v15}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v12

    .line 3044
    if-nez v12, :cond_2

    .line 3045
    const-string v4, "MailCommon"

    const-string v5, "don\'t send meeting response failed, account is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3052
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3053
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3048
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v4

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 3052
    .end local v14           #accountId:J
    .end local v17           #mailboxId:J
    :cond_3
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3053
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3057
    :cond_4
    if-nez v13, :cond_6

    .line 3058
    const-string v4, "MailCommon"

    const-string v5, "don\'t send meeting response failed, mailbox is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3052
    .end local v6           #proj:[Ljava/lang/String;
    .end local v7           #where:Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 3053
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3052
    :cond_5
    throw v4

    .line 3062
    .restart local v6       #proj:[Ljava/lang/String;
    .restart local v7       #where:Ljava/lang/String;
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/meeting/MeetingUtil;->smartCommand2MeetingCmd(I)I

    move-result v9

    .line 3063
    .local v9, command:I
    const/4 v8, 0x0

    .line 3064
    .local v8, meetingInvitation:Lcom/htc/android/mail/meeting/MeetingInvitation;
    new-instance v8, Lcom/htc/android/mail/meeting/MeetingInvitation;

    .end local v8           #meetingInvitation:Lcom/htc/android/mail/meeting/MeetingInvitation;
    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/htc/android/mail/meeting/MeetingInvitation;-><init>(Landroid/content/Context;)V

    .restart local v8       #meetingInvitation:Lcom/htc/android/mail/meeting/MeetingInvitation;
    move-wide/from16 v10, p1

    .line 3065
    invoke-virtual/range {v8 .. v13}, Lcom/htc/android/mail/meeting/MeetingInvitation;->notSendMeetingResponse(IJLcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;)V

    .line 3067
    move-wide/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-static {v0, v1, v12, v2, v3}, Lcom/htc/android/mail/MailCommon;->moveMeetingMailToTrash(JLcom/htc/android/mail/Account;Lcom/htc/android/mail/AbsRequestController;Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private openAttach(Lcom/htc/android/mail/Attachment;)V
    .locals 6
    .parameter "attach"

    .prologue
    .line 1061
    :try_start_0
    iget-object v2, p1, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    iget-object v3, p1, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    sget-object v3, Lcom/htc/android/mail/Attachment$States;->missing:Lcom/htc/android/mail/Attachment$States;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/Attachment$States;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1062
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V

    .line 1079
    :goto_0
    return-void

    .line 1065
    :cond_0
    iget-wide v2, p1, Lcom/htc/android/mail/Attachment;->attachSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1066
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1067
    const-string v2, "MailCommon"

    const-string v3, "file size is zero, bad file>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_1
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1072
    :catch_0
    move-exception v1

    .line 1073
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OFM>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0137

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1076
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 1077
    .local v0, comRun:Ljava/lang/Runtime;
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    goto :goto_0

    .line 1071
    .end local v0           #comRun:Ljava/lang/Runtime;
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/htc/android/mail/MailCommon;->PlayMedia(Lcom/htc/android/mail/Attachment;Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private openAttachment(ILandroid/view/View;)V
    .locals 9
    .parameter "mode"
    .parameter "attachBtnView"

    .prologue
    .line 1016
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/Attachment;

    .line 1017
    .local v1, attach:Lcom/htc/android/mail/Attachment;
    if-nez v1, :cond_0

    .line 1057
    :goto_0
    return-void

    .line 1020
    :cond_0
    :try_start_0
    iget-wide v5, v1, Lcom/htc/android/mail/Attachment;->attachSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 1021
    sget-boolean v5, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailCommon"

    const-string v6, "file size is zero, bad file>"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_1
    const/16 v5, 0xf

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1051
    :catch_0
    move-exception v4

    .line 1052
    .local v4, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "MailCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OFM>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0137

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1054
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 1055
    .local v3, comRun:Ljava/lang/Runtime;
    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    goto :goto_0

    .line 1025
    .end local v3           #comRun:Ljava/lang/Runtime;
    .end local v4           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1028
    :pswitch_1
    :try_start_1
    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    invoke-static {v1, v5, v6}, Lcom/htc/android/mail/MailCommon;->PlayMedia(Lcom/htc/android/mail/Attachment;Landroid/content/Context;I)V

    goto :goto_0

    .line 1031
    :pswitch_2
    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/htc/android/mail/MailCommon;->importVCard(Landroid/content/Context;Lcom/htc/android/mail/Attachment;)I

    goto :goto_0

    .line 1034
    :pswitch_3
    iget-object v0, v1, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 1035
    .local v0, _filepath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v2, checkFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1037
    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V

    goto :goto_0

    .line 1040
    :cond_3
    sget-boolean v5, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "MailCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openAttachment:filepath>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :cond_4
    const-string v5, "/data/data"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1045
    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v5}, Lcom/htc/android/mail/MailCommon;->saveToSDAndPlayMedia(Lcom/htc/android/mail/Attachment;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1047
    :cond_5
    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    invoke-static {v1, v5, v6}, Lcom/htc/android/mail/MailCommon;->PlayMedia(Lcom/htc/android/mail/Attachment;Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1025
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static parseSummariesWithMailboxUri(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 3937
    if-nez p0, :cond_1

    .line 3949
    :cond_0
    :goto_0
    return-object v4

    .line 3938
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 3939
    .local v3, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v9, :cond_0

    .line 3940
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3941
    .local v0, accountIdStr:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3943
    .local v2, mailboxIdStr:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3944
    .local v1, filter:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #filter:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 3946
    .restart local v1       #filter:Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 3947
    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v2, v4, v8

    goto :goto_0

    .line 3949
    :cond_3
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v2, v4, v8

    aput-object v1, v4, v6

    goto :goto_0
.end method

.method public static pickExistedContactor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "addr"

    .prologue
    .line 2576
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2577
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2578
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2579
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2580
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2581
    return-void
.end method

.method private static playApkFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "path"
    .parameter "mimeType"

    .prologue
    const/4 v8, 0x1

    .line 2078
    sget-boolean v4, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MailCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playApkFile>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2081
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "chmod"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "604"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2085
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2086
    .local v0, f:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 2087
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2088
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2089
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2090
    return-void

    .line 2082
    .end local v0           #f:Ljava/io/File;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 2083
    .local v2, ioe:Ljava/io/IOException;
    const-string v4, "MailCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playApkFile fail>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareDownloadAttachment(Landroid/view/View;JLjava/lang/String;I)V
    .locals 10
    .parameter "view"
    .parameter "mailBoxId"
    .parameter "mUid"
    .parameter "mTotalSize"

    .prologue
    const/4 v9, 0x1

    .line 1384
    sget-boolean v6, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "MailCommon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prepareDownloadAttachment>>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    :cond_0
    if-nez p1, :cond_2

    .line 1386
    sget-boolean v6, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "MailCommon"

    const-string v7, "view null>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    :cond_1
    :goto_0
    return-void

    .line 1389
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Attachment;

    .line 1390
    .local v0, attach:Lcom/htc/android/mail/Attachment;
    if-nez v0, :cond_3

    .line 1391
    sget-boolean v6, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "MailCommon"

    const-string v7, "attach null>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1394
    :cond_3
    iget-wide v6, v0, Lcom/htc/android/mail/Attachment;->attachSize:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1397
    .local v3, filesize:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1403
    .local v4, fs:J
    :goto_1
    iget-object v6, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v6

    iget-object v7, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v6, v7}, Lcom/htc/android/mail/MailCommon;->checkAvailableToDownloadFile(JILandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1411
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon;->mBtnView:Landroid/view/View;

    .line 1413
    iget-object v6, p0, Lcom/htc/android/mail/MailCommon;->mBtnView:Landroid/view/View;

    if-nez v6, :cond_4

    .line 1414
    sget-boolean v6, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "MailCommon"

    const-string v7, "error! mBtnView is null> "

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1398
    .end local v4           #fs:J
    :catch_0
    move-exception v2

    .line 1399
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v6, "MailCommon"

    const-string v7, "NumberFormatException occurs in parseInt(filesize)"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const-wide/16 v4, 0x0

    .restart local v4       #fs:J
    goto :goto_1

    .line 1417
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_4
    sget-boolean v6, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "MailCommon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAvailableToDownloadFile return false> fs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", enableSDSave="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_5
    iget-object v6, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v6

    if-ne v6, v9, :cond_8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1420
    sget-boolean v6, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "MailCommon"

    const-string v7, "External storage full>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    :cond_6
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v6, v7}, Lcom/htc/android/mail/MailCommon;->checkAvailableToDownloadFile(JILandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1422
    sget-boolean v6, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "MailCommon"

    const-string v7, "Internal full, too>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1429
    :cond_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1431
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "mailBoxId"

    invoke-virtual {v1, v6, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1432
    const-string v6, "mUid"

    invoke-virtual {v1, v6, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v6, "mTotalSize"

    invoke-virtual {v1, v6, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1435
    const/16 v6, 0x12

    invoke-virtual {p0, v6, v1}, Lcom/htc/android/mail/MailCommon;->showDialog(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1439
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_8
    sget-boolean v6, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v6, :cond_9

    const-string v6, "MailCommon"

    const-string v7, "Internal storage full>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    :cond_9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v9, v6}, Lcom/htc/android/mail/MailCommon;->checkAvailableToDownloadFile(JILandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1452
    :cond_a
    sget-boolean v6, Lcom/htc/android/mail/MailCommon;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "MailCommon"

    const-string v7, "External full, too>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1458
    :cond_b
    invoke-direct/range {p0 .. p5}, Lcom/htc/android/mail/MailCommon;->downloadAttachment(Landroid/view/View;JLjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public static qpDecoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 3847
    const/4 v2, 0x0

    .line 3849
    .local v2, result:Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-static {}, Lcom/htc/android/mail/MailCommon;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 3851
    .local v1, qpcodec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3856
    :goto_0
    return-object v2

    .line 3852
    :catch_0
    move-exception v0

    .line 3853
    .local v0, e:Lorg/apache/commons/codec/DecoderException;
    invoke-virtual {v0}, Lorg/apache/commons/codec/DecoderException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeLastAccountEnter(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "accountId"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 2974
    const-string v4, "account"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2975
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "LAST_ACCOUNT_ENTER"

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2976
    .local v0, accountIdRecord:J
    cmp-long v4, v0, p1

    if-eqz v4, :cond_0

    .line 2977
    const-string v4, "account"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2978
    .local v2, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "LAST_ACCOUNT_ENTER"

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2979
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2981
    .end local v2           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static requestMediaScan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "c"
    .parameter "path"
    .parameter "mimetype"

    .prologue
    .line 3984
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4002
    :cond_0
    :goto_0
    return-void

    .line 3986
    :cond_1
    const/4 v1, 0x0

    .line 3988
    .local v1, storageType:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3990
    const-string v1, "external"

    .line 3991
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestMediaScan:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 4000
    new-instance v0, Landroid/media/MediaScanner;

    invoke-direct {v0, p0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 4001
    .local v0, scanner:Landroid/media/MediaScanner;
    invoke-virtual {v0, p1, v1, p2}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0

    .line 3992
    .end local v0           #scanner:Landroid/media/MediaScanner;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3994
    const-string v1, "phoneStorage"

    .line 3995
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestMediaScan:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static s_convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "s"

    .prologue
    .line 4205
    const/4 v3, 0x0

    .line 4207
    .local v3, ii:I
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 4208
    .local v0, b:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 4209
    aget-byte v1, v0, v2

    .line 4210
    .local v1, c:B
    const/16 v5, 0xd

    if-eq v1, v5, :cond_0

    const/16 v5, 0xa

    if-ne v1, v5, :cond_1

    :cond_0
    const/16 v1, 0x20

    .line 4211
    :cond_1
    const/16 v5, 0x20

    if-ne v1, v5, :cond_2

    if-lez v3, :cond_2

    add-int/lit8 v5, v3, -0x1

    aget-byte v5, v0, v5

    if-ne v5, v1, :cond_2

    .line 4208
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4212
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3           #ii:I
    .local v4, ii:I
    aput-byte v1, v0, v3

    .line 4213
    sget v5, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_SIZE:I

    if-lt v4, v5, :cond_4

    move v3, v4

    .line 4215
    .end local v1           #c:B
    .end local v4           #ii:I
    .restart local v3       #ii:I
    :cond_3
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v5

    .end local v3           #ii:I
    .restart local v1       #c:B
    .restart local v4       #ii:I
    :cond_4
    move v3, v4

    .end local v4           #ii:I
    .restart local v3       #ii:I
    goto :goto_1
.end method

.method private saveToSDAndPlayMedia(Lcom/htc/android/mail/Attachment;Landroid/content/Context;)V
    .locals 19
    .parameter "attach"
    .parameter "context"

    .prologue
    .line 2267
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailCommon"

    const-string v3, "saveToSDAndPlayMedia"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2269
    const/16 v2, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V

    .line 2363
    :goto_0
    return-void

    .line 2271
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2272
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V

    goto :goto_0

    .line 2274
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unmounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2275
    :cond_3
    const/16 v2, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V

    goto :goto_0

    .line 2278
    :cond_4
    const/16 v17, 0x0

    .line 2279
    .local v17, storageRootDir:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/android/mail/MailCommon;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2280
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailCommon;->setSaveDir(Ljava/lang/String;)V

    .line 2281
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 2282
    .local v14, _mimetype:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 2283
    .local v12, _filename:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 2284
    .local v13, _filepath:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/htc/android/mail/Attachment;->id:J

    .line 2285
    .local v7, _partId:J
    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/htc/android/mail/Attachment;->globalAttach:Z

    .line 2286
    .local v9, isGlobal:Z
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveToSD>"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    :cond_5
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "path>"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    :cond_6
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mimetypr>"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    :cond_7
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isGlobal>"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2291
    .local v16, saveToSDFileName:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2292
    .local v4, srcFile:Ljava/io/File;
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2293
    .local v15, dstTmpFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2296
    const/4 v2, 0x1

    sget v3, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1, v3}, Lcom/htc/android/mail/MailCommon;->getSuggestFileName(ILjava/lang/String;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v16

    .line 2297
    new-instance v15, Ljava/io/File;

    .end local v15           #dstTmpFile:Ljava/io/File;
    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2299
    .restart local v15       #dstTmpFile:Ljava/io/File;
    :cond_9
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveToSDFileName>"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    :cond_a
    move-object v5, v15

    .line 2301
    .local v5, dstFile:Ljava/io/File;
    move-object/from16 v10, v16

    .line 2302
    .local v10, sdFileName:Ljava/lang/String;
    new-instance v6, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v2}, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;-><init>(Lcom/htc/android/mail/MailCommon;Lcom/htc/android/mail/MailCommon$1;)V

    .line 2303
    .local v6, handler:Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;
    new-instance v18, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/MailCommon$10;

    move-object/from16 v3, p0

    move-object/from16 v11, p1

    invoke-direct/range {v2 .. v11}, Lcom/htc/android/mail/MailCommon$10;-><init>(Lcom/htc/android/mail/MailCommon;Ljava/io/File;Ljava/io/File;Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;JZLjava/lang/String;Lcom/htc/android/mail/Attachment;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public static sendNoCommentMeetingResp(IJLandroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V
    .locals 18
    .parameter "respType"
    .parameter "messageId"
    .parameter "context"
    .parameter "requestController"

    .prologue
    .line 2987
    if-nez p4, :cond_0

    .line 2988
    const-string v4, "MailCommon"

    const-string v5, "send no comment meeting response failed, controller is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3022
    :goto_0
    return-void

    .line 2992
    :cond_0
    const/4 v14, 0x0

    .line 2993
    .local v14, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 2995
    .local v10, account:Lcom/htc/android/mail/Account;
    const/4 v4, 0x1

    :try_start_0
    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_account"

    aput-object v5, v6, v4

    .line 2996
    .local v6, proj:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2997
    .local v7, where:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2998
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2999
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 3000
    .local v11, accountId:J
    invoke-static {v11, v12}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 3003
    .end local v11           #accountId:J
    :cond_1
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3004
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3008
    :cond_2
    if-nez v10, :cond_4

    .line 3009
    const-string v4, "MailCommon"

    const-string v5, "send no comment meeting response failed, account is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3003
    .end local v6           #proj:[Ljava/lang/String;
    .end local v7           #where:Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3004
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3003
    :cond_3
    throw v4

    .line 3013
    .restart local v6       #proj:[Ljava/lang/String;
    .restart local v7       #where:Ljava/lang/String;
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/meeting/MeetingUtil;->smartCommand2MeetingCmd(I)I

    move-result v13

    .line 3014
    .local v13, command:I
    const/4 v15, 0x0

    .line 3015
    .local v15, meetingInvitation:Lcom/htc/android/mail/meeting/MeetingInvitation;
    new-instance v15, Lcom/htc/android/mail/meeting/MeetingInvitation;

    .end local v15           #meetingInvitation:Lcom/htc/android/mail/meeting/MeetingInvitation;
    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Lcom/htc/android/mail/meeting/MeetingInvitation;-><init>(Landroid/content/Context;)V

    .line 3016
    .restart local v15       #meetingInvitation:Lcom/htc/android/mail/meeting/MeetingInvitation;
    move-wide/from16 v0, p1

    invoke-virtual {v15, v13, v0, v1, v10}, Lcom/htc/android/mail/meeting/MeetingInvitation;->sendNoCommentMeetingResp(IJLcom/htc/android/mail/Account;)J

    move-result-wide v16

    .line 3017
    .local v16, sendMsgId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-lez v4, :cond_5

    .line 3018
    sget v4, Lcom/htc/android/mail/ComposeActivity;->RETRY_COUNT:I

    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v10, v1, v2, v4}, Lcom/htc/android/mail/AbsRequestController;->sendMail(Lcom/htc/android/mail/Account;JI)V

    .line 3021
    :cond_5
    move-wide/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-static {v0, v1, v10, v2, v3}, Lcom/htc/android/mail/MailCommon;->moveMeetingMailToTrash(JLcom/htc/android/mail/Account;Lcom/htc/android/mail/AbsRequestController;Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private setCurAttch(Lcom/htc/android/mail/Attachment;)V
    .locals 0
    .parameter "attach"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon;->mCurAttach:Lcom/htc/android/mail/Attachment;

    .line 300
    return-void
.end method

.method public static setDate(Landroid/widget/Button;JLandroid/content/Context;)V
    .locals 2
    .parameter "view"
    .parameter "millis"
    .parameter "context"

    .prologue
    .line 3204
    const v0, 0x18016

    .line 3208
    .local v0, flags:I
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3209
    invoke-static {p3, p1, p2, v0}, Lcom/htc/android/mail/MailCommon;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3210
    return-void
.end method

.method public static setMailListItemShowSize(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 291
    sput-boolean p0, Lcom/htc/android/mail/MailCommon;->MailListItemShowSize:Z

    .line 292
    return-void
.end method

.method public static setMailShortcutState(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 4328
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/MailCommon$13;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailCommon$13;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4364
    return-void
.end method

.method private setSaveDir(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 978
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSaveDir>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 980
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 981
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exist>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_1
    :goto_0
    return-void

    .line 983
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 984
    .local v1, res:Z
    sget-boolean v2, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " not exist>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setTime(Landroid/widget/Button;JLandroid/content/Context;)V
    .locals 2
    .parameter "view"
    .parameter "millis"
    .parameter "context"

    .prologue
    .line 3213
    const/4 v0, 0x1

    .line 3214
    .local v0, flags:I
    invoke-static {p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3215
    or-int/lit16 v0, v0, 0x80

    .line 3218
    :cond_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3219
    invoke-static {p3, p1, p2, v0}, Lcom/htc/android/mail/MailCommon;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3220
    return-void
.end method

.method public static setTimeFormat24(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2898
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 2899
    .local v0, is24Format:Z
    if-eqz v0, :cond_1

    .line 2900
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/mail/MailCommon;->TimeFormat24:Z

    .line 2904
    :goto_0
    sget-boolean v1, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeformat_24>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->TimeFormat24:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    :cond_0
    return-void

    .line 2902
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/android/mail/MailCommon;->TimeFormat24:Z

    goto :goto_0
.end method

.method public static setUpdateSyncSettingIntervalSecs(Landroid/content/Context;JI)V
    .locals 15
    .parameter "context"
    .parameter "accountId"
    .parameter "checkFreq"

    .prologue
    .line 4092
    invoke-static {p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v3

    .line 4093
    .local v3, accountPool:Lcom/htc/android/mail/AccountPool;
    move-wide/from16 v0, p1

    invoke-virtual {v3, p0, v0, v1}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v2

    .line 4094
    .local v2, account:Lcom/htc/android/mail/Account;
    if-nez v2, :cond_1

    .line 4133
    :cond_0
    :goto_0
    return-void

    .line 4096
    :cond_1
    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v13

    const/4 v14, 0x4

    if-eq v13, v14, :cond_0

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_0

    .line 4098
    const/4 v8, -0x1

    .line 4099
    .local v8, interval_seconds:I
    if-nez p3, :cond_2

    .line 4100
    const/4 v8, -0x1

    .line 4107
    :goto_1
    const-wide v13, 0x7ffffffffffffffdL

    cmp-long v13, p1, v13

    if-nez v13, :cond_8

    .line 4108
    const/4 v13, 0x6

    invoke-virtual {v3, p0, v13}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v4

    .line 4109
    .local v4, accounts:[Lcom/htc/android/mail/Account;
    if-eqz v4, :cond_0

    .line 4110
    move-object v5, v4

    .local v5, arr$:[Lcom/htc/android/mail/Account;
    array-length v9, v5

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v9, :cond_0

    aget-object v12, v5, v6

    .line 4111
    .local v12, tmpAccount:Lcom/htc/android/mail/Account;
    invoke-virtual {v12}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v10

    .line 4112
    .local v10, provider:Ljava/lang/String;
    const-string v11, "com.htc.android.mail"

    .line 4114
    .local v11, syncAccountType:Ljava/lang/String;
    const-string v13, "Yahoo"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 4115
    sget-object v11, Lcom/htc/android/mail/Mail;->HUX_YAHOO_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    .line 4126
    :goto_3
    invoke-virtual {v12}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v11, v13, v8}, Lcom/htc/opensense/sync/SyncSettingUtil;->setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4110
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4101
    .end local v4           #accounts:[Lcom/htc/android/mail/Account;
    .end local v5           #arr$:[Lcom/htc/android/mail/Account;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .end local v10           #provider:Ljava/lang/String;
    .end local v11           #syncAccountType:Ljava/lang/String;
    .end local v12           #tmpAccount:Lcom/htc/android/mail/Account;
    :cond_2
    const/16 v13, 0x9

    move/from16 v0, p3

    if-ne v0, v13, :cond_3

    .line 4102
    const/4 v8, -0x2

    goto :goto_1

    .line 4104
    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/htc/android/mail/account/AccountBinder;->getPollValue(I)I

    move-result v7

    .line 4105
    .local v7, interval_minutes:I
    mul-int/lit8 v8, v7, 0x3c

    goto :goto_1

    .line 4116
    .end local v7           #interval_minutes:I
    .restart local v4       #accounts:[Lcom/htc/android/mail/Account;
    .restart local v5       #arr$:[Lcom/htc/android/mail/Account;
    .restart local v6       #i$:I
    .restart local v9       #len$:I
    .restart local v10       #provider:Ljava/lang/String;
    .restart local v11       #syncAccountType:Ljava/lang/String;
    .restart local v12       #tmpAccount:Lcom/htc/android/mail/Account;
    :cond_4
    const-string v13, "AOL"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 4117
    sget-object v11, Lcom/htc/android/mail/Mail;->HUX_AOL_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    goto :goto_3

    .line 4118
    :cond_5
    const-string v13, "MSN"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 4119
    sget-object v11, Lcom/htc/android/mail/Mail;->HUX_MSN_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    goto :goto_3

    .line 4120
    :cond_6
    const-string v13, "Google"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 4121
    sget-object v11, Lcom/htc/android/mail/Mail;->HUX_GOOGLE_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    goto :goto_3

    .line 4123
    :cond_7
    const-string v11, "com.htc.android.mail"

    goto :goto_3

    .line 4131
    .end local v4           #accounts:[Lcom/htc/android/mail/Account;
    .end local v5           #arr$:[Lcom/htc/android/mail/Account;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .end local v10           #provider:Ljava/lang/String;
    .end local v11           #syncAccountType:Ljava/lang/String;
    .end local v12           #tmpAccount:Lcom/htc/android/mail/Account;
    :cond_8
    const-string v13, "com.htc.android.mail"

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v14

    invoke-static {p0, v13, v14, v8}, Lcom/htc/opensense/sync/SyncSettingUtil;->setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private stopDownloadOneAttach(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1548
    const-string v4, "MailCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopDownloadOneAttach> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Attachment;

    .line 1550
    .local v0, attach:Lcom/htc/android/mail/Attachment;
    if-eqz v0, :cond_6

    .line 1552
    iget-object v4, v0, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    if-eqz v4, :cond_2

    .line 1553
    sget-boolean v4, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MailCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove request> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    :cond_0
    iget-object v3, v0, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    .line 1555
    .local v3, r:Lcom/htc/android/mail/Request;
    sget-boolean v4, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MailCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v4, v3}, Lcom/htc/android/mail/AbsRequestController;->removeRequest(Lcom/htc/android/mail/Request;)V

    .line 1557
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/android/mail/Attachment;->request:Lcom/htc/android/mail/Request;

    .line 1559
    .end local v3           #r:Lcom/htc/android/mail/Request;
    :cond_2
    iget-object v4, v0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 1560
    sget-object v4, Lcom/htc/android/mail/Attachment$States;->unDownloaded:Lcom/htc/android/mail/Attachment$States;

    iput-object v4, v0, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    .line 1569
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1570
    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v0}, Lcom/htc/android/mail/MailCommon;->updateAttachButtonIconAction(Landroid/content/Context;Lcom/htc/android/mail/Attachment;)V

    .line 1573
    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    .line 1574
    :cond_4
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1575
    .local v2, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1576
    .local v1, b:Landroid/os/Bundle;
    const-string v4, "accountId"

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1577
    const-string v4, "filereference"

    iget-object v5, v0, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const-string v4, "ret"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1579
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1580
    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_5

    .line 1581
    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v6, p0, Lcom/htc/android/mail/MailCommon;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v5, v2, v6}, Lcom/htc/android/mail/AbsRequestController;->broadcastAttachmentDownloadComplete(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V

    .line 1588
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_5
    :goto_0
    return-void

    .line 1586
    :cond_6
    sget-boolean v4, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "MailCommon"

    const-string v5, "stop download attach error!"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static syncMailViaMailService(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;)V
    .locals 5
    .parameter "c"
    .parameter "account"
    .parameter "mailbox"

    .prologue
    .line 4219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4220
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4221
    const-string v1, "android.intent.action.SYNC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4222
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4223
    const-string v1, "mailboxId"

    iget-wide v2, p2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4224
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4225
    return-void
.end method

.method public static themeChange(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 2477
    const/4 v0, 0x0

    return v0
.end method

.method public static trimTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "inStr"
    .parameter "token_start"
    .parameter "token_end"

    .prologue
    const/4 v7, 0x0

    .line 2545
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2546
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 2547
    move-object v4, p0

    .line 2549
    .local v4, rtn:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2550
    .local v3, len_token_start:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2552
    .local v2, len_token_end:I
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2553
    .local v1, idx_start:I
    :goto_0
    if-ltz v1, :cond_3

    .line 2554
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    add-int v6, v1, v3

    invoke-virtual {v5, p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 2555
    .local v0, idx_end:I
    if-lez v0, :cond_1

    .line 2556
    if-lez v1, :cond_0

    .line 2557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, v0, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2569
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2560
    :cond_0
    add-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2562
    :cond_1
    if-lez v1, :cond_2

    .line 2563
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2565
    :cond_2
    const-string v4, ""

    goto :goto_1

    .line 2572
    .end local v0           #idx_end:I
    :cond_3
    return-object v4
.end method

.method public static updateNumberToNotification(Landroid/content/Context;JI)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "number"

    .prologue
    .line 4051
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4052
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "_number"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4054
    .local v1, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4055
    return-void
.end method

.method private vCalImport(Lcom/htc/android/mail/Attachment;)V
    .locals 4
    .parameter "attach"

    .prologue
    .line 1082
    iget-object v0, p1, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    iget-object v1, p1, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    sget-object v1, Lcom/htc/android/mail/Attachment$States;->missing:Lcom/htc/android/mail/Attachment$States;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Attachment$States;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V

    .line 1094
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-wide v0, p1, Lcom/htc/android/mail/Attachment;->attachSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1087
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1088
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1089
    const-string v0, "MailCommon"

    const-string v1, "file size is zero, bad file>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_1
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V

    goto :goto_0

    .line 1093
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/htc/android/mail/MailCommon;->PlayMedia(Lcom/htc/android/mail/Attachment;Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public GetAllRelatedAttachmentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->AllRELATEDATTACHMENT:Lcom/htc/android/mail/MailCommon$CursorType;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailCommon;->GetDbCursor(Lcom/htc/android/mail/MailCommon$CursorType;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public GetDbCursor(Lcom/htc/android/mail/MailCommon$CursorType;)Landroid/database/Cursor;
    .locals 7
    .parameter "nCase"

    .prologue
    const/4 v4, 0x0

    .line 343
    const/4 v3, 0x0

    .line 344
    .local v3, selection:Ljava/lang/String;
    const/4 v2, 0x0

    .line 349
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .line 351
    .local v1, UriDb:Landroid/net/Uri;
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->HTML:Lcom/htc/android/mail/MailCommon$CursorType;

    if-ne v0, p1, :cond_1

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_message="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _mimetype=\'text/html\' AND _filename=\'\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/mail/MailCommon;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 353
    :cond_1
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->NOTHTML:Lcom/htc/android/mail/MailCommon$CursorType;

    if-ne v0, p1, :cond_2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_message="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _filename<>\'\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _contenttype<>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v5, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 355
    :cond_2
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->AllRELATEDATTACHMENT:Lcom/htc/android/mail/MailCommon$CursorType;

    if-ne v0, p1, :cond_3

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_message="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _filename<>\'\' "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _contenttype="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v5, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 357
    :cond_3
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->RELATEDFETECHEDATTACHMENT:Lcom/htc/android/mail/MailCommon$CursorType;

    if-ne v0, p1, :cond_4

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_message="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _filepath is not null "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _contenttype="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v5, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 359
    :cond_4
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->RELATEDUNFETECHEDATTACHMENT:Lcom/htc/android/mail/MailCommon$CursorType;

    if-ne v0, p1, :cond_5

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_message="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _filepath is null "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _contenttype="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v5, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .end local v2           #projection:[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v5, "count(_id) as _total"

    aput-object v5, v2, v0

    .restart local v2       #projection:[Ljava/lang/String;
    goto/16 :goto_0

    .line 362
    :cond_5
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->TEXT:Lcom/htc/android/mail/MailCommon$CursorType;

    if-ne v0, p1, :cond_6

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_message="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _mimetype=\'text/plain\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _filename=\'\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 364
    :cond_6
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->NOTTEXT:Lcom/htc/android/mail/MailCommon$CursorType;

    if-ne v0, p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_message="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _filename<>\'\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND _contenttype<>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v5, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public GetHtmlCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 372
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->HTML:Lcom/htc/android/mail/MailCommon$CursorType;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailCommon;->GetDbCursor(Lcom/htc/android/mail/MailCommon$CursorType;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public GetNotHtmlCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->NOTHTML:Lcom/htc/android/mail/MailCommon$CursorType;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailCommon;->GetDbCursor(Lcom/htc/android/mail/MailCommon$CursorType;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public GetNotTextCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->NOTTEXT:Lcom/htc/android/mail/MailCommon$CursorType;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailCommon;->GetDbCursor(Lcom/htc/android/mail/MailCommon$CursorType;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public GetRelatedFetchedAttachmentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->RELATEDFETECHEDATTACHMENT:Lcom/htc/android/mail/MailCommon$CursorType;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailCommon;->GetDbCursor(Lcom/htc/android/mail/MailCommon$CursorType;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public GetRelatedUnFetchedAttachmentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->RELATEDUNFETECHEDATTACHMENT:Lcom/htc/android/mail/MailCommon$CursorType;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailCommon;->GetDbCursor(Lcom/htc/android/mail/MailCommon$CursorType;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public GetTextCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 392
    sget-object v0, Lcom/htc/android/mail/MailCommon$CursorType;->TEXT:Lcom/htc/android/mail/MailCommon$CursorType;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailCommon;->GetDbCursor(Lcom/htc/android/mail/MailCommon$CursorType;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAttachInfo(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    if-eqz p1, :cond_3

    .line 514
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 515
    new-instance v0, Lcom/htc/android/mail/Attachment;

    invoke-direct {v0}, Lcom/htc/android/mail/Attachment;-><init>()V

    .line 516
    .local v0, attach:Lcom/htc/android/mail/Attachment;
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/android/mail/Attachment;->id:J

    .line 517
    const-string v2, "_mimetype"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 518
    const-string v2, "_filename"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 519
    const-string v2, "_filepath"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 520
    const-string v2, "_filesize"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/android/mail/Attachment;->attachSize:J

    .line 521
    const-string v2, "_index"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/Attachment;->index:Ljava/lang/String;

    .line 522
    const-string v2, "_encode"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/Attachment;->encode:Ljava/lang/String;

    .line 523
    const-string v2, "_flags"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/htc/android/mail/Attachment;->flags:I

    .line 524
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 525
    const-string v2, "_filereference"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    .line 526
    iget-boolean v2, p0, Lcom/htc/android/mail/MailCommon;->mFromSearchSvrMailView:Z

    iput-boolean v2, v0, Lcom/htc/android/mail/Attachment;->globalAttach:Z

    .line 532
    :cond_0
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 527
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 528
    :cond_2
    iget-object v2, v0, Lcom/htc/android/mail/Attachment;->index:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    goto :goto_1

    .line 537
    .end local v0           #attach:Lcom/htc/android/mail/Attachment;
    :cond_3
    return-object v1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x7f0b008e

    const v8, 0x7f0b005a

    const v7, 0x7f0b0291

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .local v0, msg:Ljava/lang/StringBuilder;
    sparse-switch p1, :sswitch_data_0

    .line 827
    :cond_0
    :goto_0
    return-object v3

    .line 697
    :sswitch_0
    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 698
    iget-object v3, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/htc/android/mail/MailCommon;->getDialog(ILandroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0

    .line 710
    :sswitch_1
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b005b

    invoke-direct {p0, v5}, Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mDeleteContactDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto :goto_0

    .line 719
    :sswitch_2
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b013b

    invoke-direct {p0, v5}, Lcom/htc/android/mail/MailCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto :goto_0

    .line 727
    :sswitch_3
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0175

    invoke-direct {p0, v5}, Lcom/htc/android/mail/MailCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 735
    :sswitch_4
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b013a

    invoke-direct {p0, v5}, Lcom/htc/android/mail/MailCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 743
    :sswitch_5
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b02e3

    invoke-direct {p0, v5}, Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b02e2

    invoke-direct {p0, v5}, Lcom/htc/android/mail/MailCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 751
    :sswitch_6
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b01bc

    invoke-direct {p0, v5}, Lcom/htc/android/mail/MailCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 777
    :sswitch_7
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mCurAttach:Lcom/htc/android/mail/Attachment;

    iget-object v5, v5, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b007e

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 797
    :sswitch_8
    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 798
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->mCurAttach:Lcom/htc/android/mail/Attachment;

    iget-object v2, v4, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 799
    .local v2, title:Ljava/lang/String;
    const v1, 0x7f0b007b

    .line 804
    .local v1, msgid:I
    :goto_1
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/android/mail/MailCommon$4;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/MailCommon$4;-><init>(Lcom/htc/android/mail/MailCommon;)V

    invoke-virtual {v4, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 801
    .end local v1           #msgid:I
    .end local v2           #title:Ljava/lang/String;
    :cond_2
    const v4, 0x7f0b007c

    invoke-direct {p0, v4}, Lcom/htc/android/mail/MailCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 802
    .restart local v2       #title:Ljava/lang/String;
    const v1, 0x7f0b007d

    .restart local v1       #msgid:I
    goto :goto_1

    .line 819
    .end local v1           #msgid:I
    .end local v2           #title:Ljava/lang/String;
    :sswitch_9
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon;->mCurAttach:Lcom/htc/android/mail/Attachment;

    iget-object v5, v5, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0051

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 695
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_6
        0xd -> :sswitch_8
        0xf -> :sswitch_9
        0x10 -> :sswitch_7
        0x11 -> :sswitch_5
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "id"
    .parameter "args"

    .prologue
    .line 607
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailCommon"

    const-string v1, "onCreateDialog with bundle> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_0
    const-string v0, "mailBoxId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 609
    .local v2, mailBoxId:J
    const-string v0, "mUid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 610
    .local v4, mUid:Ljava/lang/String;
    const-string v0, "mTotalSize"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 612
    .local v5, mTotalSize:I
    const/4 v6, 0x0

    .line 614
    .local v6, message:Ljava/lang/CharSequence;
    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    .line 615
    const v0, 0x7f0b0310

    invoke-direct {p0, v0}, Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 619
    :cond_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b02e4

    invoke-direct {p0, v1}, Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b0291

    new-instance v0, Lcom/htc/android/mail/MailCommon$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailCommon$2;-><init>(Lcom/htc/android/mail/MailCommon;JLjava/lang/String;I)V

    invoke-virtual {v7, v8, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b008e

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .local v0, msg:Ljava/lang/StringBuilder;
    sparse-switch p1, :sswitch_data_0

    .line 665
    .end local p2
    :goto_0
    return-void

    .line 647
    .restart local p2
    :sswitch_0
    const v2, 0x7f0b0141

    invoke-direct {p0, v2}, Lcom/htc/android/mail/MailCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailCommon;->mCurAttach:Lcom/htc/android/mail/Attachment;

    iget-object v3, v3, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0142

    invoke-direct {p0, v3}, Lcom/htc/android/mail/MailCommon;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 653
    .restart local p2
    :sswitch_1
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 654
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon;->mCurAttach:Lcom/htc/android/mail/Attachment;

    iget-object v1, v2, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 658
    .local v1, title:Ljava/lang/String;
    :goto_1
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 656
    .end local v1           #title:Ljava/lang/String;
    .restart local p2
    :cond_1
    const v2, 0x7f0b007c

    invoke-direct {p0, v2}, Lcom/htc/android/mail/MailCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #title:Ljava/lang/String;
    goto :goto_1

    .line 662
    .end local v1           #title:Ljava/lang/String;
    :sswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon;->mCurAttach:Lcom/htc/android/mail/Attachment;

    iget-object v2, v2, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 645
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method protected setAttachViewGroup(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 1709
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailCommon"

    const-string v1, "setAttachViewGroup>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    :cond_0
    sget-boolean v0, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 1712
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon;->mContainer:Landroid/view/ViewGroup;

    .line 1714
    :cond_2
    return-void
.end method

.method protected setContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon;->mContainer:Landroid/view/ViewGroup;

    .line 304
    return-void
.end method

.method public setIsFromSearchSvrView(Z)V
    .locals 0
    .parameter "fromServerMail"

    .prologue
    .line 3160
    iput-boolean p1, p0, Lcom/htc/android/mail/MailCommon;->mFromSearchSvrMailView:Z

    .line 3161
    return-void
.end method

.method protected setMailCommon(Landroid/content/Context;JJLjava/lang/ref/WeakReference;Lcom/htc/android/mail/AbsRequestController;)V
    .locals 1
    .parameter "context"
    .parameter "accountId"
    .parameter "messageId"
    .parameter
    .parameter "tRequestController"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Lcom/htc/android/mail/AbsRequestController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 308
    .local p6, tWeakRequestHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    .line 309
    invoke-static {p2, p3}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;

    .line 310
    iput-wide p4, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    .line 311
    iput-object p6, p0, Lcom/htc/android/mail/MailCommon;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 312
    iput-object p7, p0, Lcom/htc/android/mail/MailCommon;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 313
    return-void
.end method

.method protected setMessageId(J)V
    .locals 0
    .parameter "messageid"

    .prologue
    .line 316
    iput-wide p1, p0, Lcom/htc/android/mail/MailCommon;->mMessageId:J

    .line 317
    return-void
.end method

.method public final showDialog(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 567
    iget-object v1, p0, Lcom/htc/android/mail/MailCommon;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 568
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/MailCommon;->mManagedDialogs:Landroid/util/SparseArray;

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailCommon;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 571
    .local v0, dialog:Landroid/app/Dialog;
    if-nez v0, :cond_2

    .line 572
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailCommon;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 573
    if-nez v0, :cond_1

    .line 574
    sget-boolean v1, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MailCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException for id> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailCommon;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 582
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/MailCommon;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 583
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 584
    return-void
.end method

.method public final showDialog(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 587
    iget-object v1, p0, Lcom/htc/android/mail/MailCommon;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 588
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/MailCommon;->mManagedDialogs:Landroid/util/SparseArray;

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailCommon;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 591
    .local v0, dialog:Landroid/app/Dialog;
    if-nez v0, :cond_2

    .line 592
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/MailCommon;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 593
    if-nez v0, :cond_1

    .line 594
    sget-boolean v1, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MailCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException for id> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailCommon;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 602
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/MailCommon;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 603
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 604
    return-void
.end method

.method public updateAttachButtonIconAction(Landroid/content/Context;Lcom/htc/android/mail/Attachment;)V
    .locals 7
    .parameter "context"
    .parameter "attach"

    .prologue
    const v6, 0x2080197

    .line 1630
    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAttachButtonIconAction> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    :cond_0
    if-nez p2, :cond_2

    .line 1684
    :cond_1
    :goto_0
    return-void

    .line 1635
    :cond_2
    iget-object v3, p2, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/QuickContactBadge;

    .line 1636
    .local v0, attBtn:Lcom/htc/widget/QuickContactBadge;
    if-eqz v0, :cond_1

    .line 1646
    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get getDrawable> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/widget/QuickContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    :cond_3
    invoke-virtual {v0}, Lcom/htc/widget/QuickContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1648
    .local v1, btnFrameAnimation:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    instance-of v3, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_5

    .line 1649
    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btnFrameAnimation).stop()> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    :cond_4
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .end local v1           #btnFrameAnimation:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1651
    const/4 v1, 0x0

    .line 1654
    .restart local v1       #btnFrameAnimation:Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1655
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/widget/QuickContactBadge;->setRoundedCornerEnabled(Z)V

    .line 1656
    sget-object v3, Lcom/htc/android/mail/MailCommon$14;->$SwitchMap$com$htc$android$mail$Attachment$States:[I

    iget-object v4, p2, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    invoke-virtual {v4}, Lcom/htc/android/mail/Attachment$States;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1658
    :pswitch_0
    iget-object v3, p2, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->showAttachmentMenuDialog:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1659
    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/android/mail/MimeTypeMap;->getSubFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    :cond_6
    iget-object v3, p0, Lcom/htc/android/mail/MailCommon;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, p1, v3, v4}, Lcom/htc/android/mail/Attachment;->setAttachIndicatorIcon(Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1664
    :pswitch_1
    iget-object v3, p2, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->attachDownloadActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1665
    const v3, 0x7f020030

    invoke-virtual {v0, v3}, Lcom/htc/widget/QuickContactBadge;->setImageResource(I)V

    .line 1666
    invoke-virtual {v0, v6}, Lcom/htc/widget/QuickContactBadge;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1669
    :pswitch_2
    iget-object v3, p2, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->missAttachListenr:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1670
    const v3, 0x7f020039

    invoke-virtual {v0, v3}, Lcom/htc/widget/QuickContactBadge;->setImageResource(I)V

    .line 1671
    invoke-virtual {v0, v6}, Lcom/htc/widget/QuickContactBadge;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1674
    :pswitch_3
    const v3, 0x7f020004

    invoke-virtual {v0, v3}, Lcom/htc/widget/QuickContactBadge;->setImageResource(I)V

    .line 1675
    invoke-virtual {v0, v6}, Lcom/htc/widget/QuickContactBadge;->setBackgroundResource(I)V

    .line 1676
    iget-object v3, p2, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon;->stopAttachDownloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1677
    invoke-virtual {v0}, Lcom/htc/widget/QuickContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 1678
    .local v2, frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1679
    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MailCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animation start!> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1656
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
