.class public Lcom/htc/android/mail/eassvc/core/EASRequestController;
.super Ljava/lang/Object;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$SyncSourceRequestController;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;,
        Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    }
.end annotation


# static fields
.field public static final COMMAND_DO_SYNC:I = 0xa

.field public static final COMMAND_FOLDER_UPDATE:I = 0xc

.field public static final COMMAND_GAL_SEARCH:I = 0xf

.field public static final COMMAND_MAIL_ATTACHMENT_DOWNLOAD_STATUS:I = 0x21

.field public static final COMMAND_MAIL_CANCEL_FETCH_ATTACHMENT:I = 0x20

.field public static final COMMAND_MAIL_CANCEL_FETCH_MAIL_BODY:I = 0x29

.field public static final COMMAND_MAIL_CANCEL_OOF:I = 0x3b

.field public static final COMMAND_MAIL_CANCEL_SEARCH:I = 0x38

.field public static final COMMAND_MAIL_EMPTY_FOLDER_CONTENTS:I = 0x39

.field public static final COMMAND_MAIL_FETCH_MAIL_BODY:I = 0x28

.field public static final COMMAND_MAIL_GET_ATTACHMENT:I = 0x1e

.field public static final COMMAND_MAIL_GET_ATTACHMENT_BATCH:I = 0x1f

.field public static final COMMAND_MAIL_GET_OOF:I = 0x35

.field public static final COMMAND_MAIL_MEETING_INVITATION:I = 0x3a

.field public static final COMMAND_MAIL_MEETING_RESP:I = 0x33

.field public static final COMMAND_MAIL_MOVE_MAIL:I = 0x34

.field public static final COMMAND_MAIL_SEARCH_ON_SERVER:I = 0x37

.field public static final COMMAND_MAIL_SEND_MAIL:I = 0x32

.field public static final COMMAND_MAIL_SET_OOF:I = 0x36

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final PARAMETER_ATTACH_FILE_NAME:Ljava/lang/String; = "parameter.attach.file_name"

.field public static final PARAMETER_ATTACH_FILE_REFERENCE:Ljava/lang/String; = "parameter.attach.file_ref"

.field public static final PARAMETER_ATTACH_GLOBAL_ATTACH:Ljava/lang/String; = "parameter.attach.global"

.field public static final PARAMETER_ATTACH_PART_ID:Ljava/lang/String; = "parameter.attach.part_id"

.field public static final PARAMETER_ATTACH_REQUEST_LIST:Ljava/lang/String; = "parameter.attach.request_list"

.field public static final PARAMETER_ATTACH_SAVE_PATH:Ljava/lang/String; = "parameter.attach.save_path"

.field public static final PARAMETER_ATTACH_SIZE:Ljava/lang/String; = "parameter.attach.size"

.field public static final PARAMETER_ATTACH_TYPE:Ljava/lang/String; = "parameter.attach.attachtype"

.field public static final PARAMETER_CLEAN_NOTIFICATION:Ljava/lang/String; = "parameter.clean_notification"

.field public static final PARAMETER_COLLECTION_ID:Ljava/lang/String; = "parameter.collection_id"

.field public static final PARAMETER_COLLECTION_ID_LIST:Ljava/lang/String; = "parameter.collection_id_list"

.field public static final PARAMETER_COLLECTION_ID_RUNNING:Ljava/lang/String; = "parameter.collection_id_running"

.field public static final PARAMETER_CURRENT_MAILBOX_ID:Ljava/lang/String; = "parameter.current_mailbox_id"

.field public static final PARAMETER_GAL_QUERY_FROM_COMPOSE_STRING:Ljava/lang/String; = "parameter.gal.query_from_compose_string"

.field public static final PARAMETER_GAL_QUERY_STRING:Ljava/lang/String; = "parameter.gal.query_string"

.field public static final PARAMETER_MAIL_BODY_ALL_OR_NONE:Ljava/lang/String; = "parameter.mailbody.all_or_none"

.field public static final PARAMETER_MAIL_BODY_GLOBAL_ATTACH:Ljava/lang/String; = "parameter.mailbody.global"

.field public static final PARAMETER_MAIL_BODY_TRUNCATION_SIZE:Ljava/lang/String; = "parameter.mailbody.truncation_size"

.field public static final PARAMETER_MAIL_BODY_TYPE:Ljava/lang/String; = "parameter.mailbody.type"

.field public static final PARAMETER_MAIL_BODY_UID:Ljava/lang/String; = "parameter.mailbody.uid"

.field public static final PARAMETER_MAIL_CALENDAR_EVENT_ID:Ljava/lang/String; = "parameter.mail.calendar.event_id"

.field public static final PARAMETER_MAIL_EMPTY_SUBFOLDERS:Ljava/lang/String; = "parameter.mail.empty_subfolders"

.field public static final PARAMETER_MAIL_MEETING_ADD_REQUEST:Ljava/lang/String; = "parameter.mail.meeting.add_request"

.field public static final PARAMETER_MAIL_MEETING_RESP_CMD:Ljava/lang/String; = "parameter.mail.meetingResp.cmd"

.field public static final PARAMETER_MAIL_MESSAGE_ID:Ljava/lang/String; = "parameter.mail.message_id"

.field public static final PARAMETER_MAIL_MESSAGE_UID:Ljava/lang/String; = "parameter.mail.message_uid"

.field public static final PARAMETER_MAIL_MOVEMAIL_ITEM:Ljava/lang/String; = "parameter.mail.movemail.item"

.field public static final PARAMETER_MAIL_OOF_BODY_TYPE:Ljava/lang/String; = "parameter.mail.oof.body_type"

.field public static final PARAMETER_MAIL_OOF_REQUEST:Ljava/lang/String; = "parameter.mail.oof.request"

.field public static final PARAMETER_MAIL_SEND_ITEM:Ljava/lang/String; = "parameter.mail.send.item"

.field public static final PARAMETER_MAIL_SEND_RETRY_COUNT:Ljava/lang/String; = "parameter.mail.send.retry_count"

.field public static final PARAMETER_MAIL_SEND_SUCCESS_SYNC_MAIL:Ljava/lang/String; = "parameter.mail.send.success.sync_mail"

.field public static final PARAMETER_SEARCH_MAIL_ELEMENT:Ljava/lang/String; = "parameter.search.mail.element"

.field public static final PARAMETER_SEARCH_MAIL_MORE:Ljava/lang/String; = "parameter.search.mail.more"

.field public static final PARAMETER_UPDATE_SYNC_INFO:Ljava/lang/String; = "parameter.update_sync_info"

.field public static final PRIORITY_CALL_BY_SERVICE:I = -0x3

.field public static final PRIORITY_CALL_BY_UI:I = 0x3

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_RETRY:I = 0x5

.field public static final PRIORITY_SYNC_AT_FINAL:I = -0x63

.field public static final TAG:Ljava/lang/String; = "EASRequestController"

.field static mPowerManagerService:Landroid/os/IPowerManager;

.field private static meetingLock:Ljava/lang/Object;


# instance fields
.field private isInit:Z

.field private isPaused:Z

.field private mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

.field private mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

.field private mContext:Landroid/content/Context;

.field private mEventCallbackList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

.field private mListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

.field private mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

.field private mOtherRequestController:Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;

.field private mPowerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

.field private mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

.field private mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

.field private mTypeInSync:I

.field private mWaitForSyncComplete:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Landroid/os/ConditionVariable;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->meetingLock:Ljava/lang/Object;

    .line 2900
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mPowerManagerService:Landroid/os/IPowerManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/core/SyncManager;Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;)V
    .locals 5
    .parameter "context"
    .parameter "syncManager"
    .parameter "accountList"

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 314
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isInit:Z

    .line 125
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isPaused:Z

    .line 126
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTypeInSync:I

    .line 153
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    .line 315
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;

    .line 316
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 317
    iput-object p3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    .line 318
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    .line 319
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;

    .line 321
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    const-string v2, "ContactReqController"

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    .line 322
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setListener(Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;)V

    .line 324
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    const-string v2, "CalendarReqController"

    const/4 v3, 0x2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    .line 325
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setListener(Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;)V

    .line 327
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    const-string v2, "TaskReqController"

    const/4 v3, 0x4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    .line 328
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setListener(Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;)V

    .line 331
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    .line 332
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->setListener(Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;)V

    .line 334
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/EASRequestController$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mOtherRequestController:Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;

    .line 335
    iput-boolean v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isInit:Z

    .line 336
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/core/EASRequest;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->requestEqual(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/core/EASRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/core/SyncManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mPowerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mPowerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    return-object p1
.end method

.method private addMeetingRequestIfNeed(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 16
    .parameter "request"

    .prologue
    .line 706
    move-object/from16 v0, p1

    iget v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p1

    iget v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 737
    :goto_0
    return-void

    .line 709
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v7, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 710
    .local v7, accountId:J
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 711
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.meeting.add_request"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 712
    .local v9, addReq:Z
    if-nez v9, :cond_1

    .line 713
    const-string v1, "EASRequestController"

    const-string v2, "addMeetingRequestIfNeed: skip adding request"

    invoke-static {v1, v7, v8, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 717
    .end local v9           #addReq:Z
    :cond_1
    sget-object v15, Lcom/htc/android/mail/eassvc/core/EASRequestController;->meetingLock:Ljava/lang/Object;

    monitor-enter v15

    .line 718
    const/4 v12, 0x0

    .line 719
    .local v12, meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    :try_start_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getMeetingInvitation()Ljava/util/ArrayList;

    move-result-object v12

    .line 720
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 721
    sget-boolean v1, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "EASRequestController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMeetingRequestIfNeed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v8, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 722
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;

    .line 723
    .local v11, item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-wide v2, v11, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;->calendarEventId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/mail/MailSender;->getSendMeetingMailItem(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;JLandroid/content/Context;)Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;

    move-result-object v14

    .line 724
    .local v14, sendItem:Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
    if-eqz v14, :cond_3

    .line 727
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget v2, v14, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->meetingResp:I

    iget-wide v3, v11, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;->calendarEventId:J

    iget-object v5, v14, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/htc/android/mail/eassvc/mail/MailSender;->encapsulateSendMeetingMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IJLcom/htc/android/mail/eassvc/pim/EASMailSendItem;Z)Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-result-object v13

    .line 729
    .local v13, meetingRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSendReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;

    invoke-virtual {v1, v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->requestEqualRunning(Lcom/htc/android/mail/eassvc/core/EASRequest;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 730
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_1

    .line 736
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;
    .end local v13           #meetingRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;
    .end local v14           #sendItem:Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 732
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;
    .restart local v13       #meetingRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;
    .restart local v14       #sendItem:Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
    :cond_4
    :try_start_1
    const-string v1, "EASRequestController"

    const-string v2, "addMeetingRequestIfNeed: skip adding request which is running"

    invoke-static {v1, v7, v8, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 736
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;
    .end local v13           #meetingRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;
    .end local v14           #sendItem:Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
    :cond_5
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private preCheckCommand(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 395
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    if-nez v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addMeetingRequestIfNeed(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0
.end method

.method private requestEqual(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/core/EASRequest;)Z
    .locals 9
    .parameter "req1"
    .parameter "req2"

    .prologue
    const/4 v4, 0x0

    .line 668
    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v6, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    iget-wide v7, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    iget v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    iget v6, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    if-ne v5, v6, :cond_0

    iget v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    iget v6, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    if-eq v5, v6, :cond_1

    .line 702
    :cond_0
    :goto_0
    return v4

    .line 673
    :cond_1
    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-eqz v5, :cond_5

    iget-object v5, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-eqz v5, :cond_5

    .line 674
    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 675
    .local v1, key:Ljava/lang/String;
    const-string v5, "parameter.mail.send.retry_count"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "parameter.mail.send.success.sync_mail"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 679
    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 680
    .local v2, obj1:Ljava/lang/Object;
    iget-object v5, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 681
    .local v3, obj2:Ljava/lang/Object;
    if-eqz v2, :cond_3

    instance-of v5, v2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    instance-of v5, v3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    if-eqz v5, :cond_3

    .line 683
    check-cast v2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    .end local v2           #obj1:Ljava/lang/Object;
    check-cast v3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    .end local v3           #obj2:Ljava/lang/Object;
    invoke-virtual {v2, v3}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->isEqual(Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 686
    .restart local v2       #obj1:Ljava/lang/Object;
    .restart local v3       #obj2:Ljava/lang/Object;
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 688
    :cond_4
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    goto :goto_0

    .line 692
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #obj1:Ljava/lang/Object;
    .end local v3           #obj2:Ljava/lang/Object;
    :cond_5
    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-eqz v5, :cond_6

    iget-object v5, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-nez v5, :cond_7

    :cond_6
    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    iget-object v6, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-ne v5, v6, :cond_0

    .line 698
    :cond_7
    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-nez v5, :cond_0

    iget-object v5, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-nez v5, :cond_0

    .line 702
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 372
    iput-object p0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->requestController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    .line 373
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->preCheckCommand(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 374
    iget v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    packed-switch v0, :pswitch_data_0

    .line 389
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mOtherRequestController:Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 391
    :goto_0
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->checkQueue(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 392
    return-void

    .line 376
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 379
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 382
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 385
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public cancelSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 3
    .parameter "exSyncSources"

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 536
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeRequestByAccountId(J)V

    .line 537
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeRequestByAccountId(J)V

    .line 538
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->removeRequestByAccountId(J)V

    .line 539
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeRequestByAccountId(J)V

    .line 540
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->cancelSync()V

    .line 541
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->resendSyncStatus(Landroid/content/Context;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/EASRequestController;)V

    .line 542
    return-void
.end method

.method public cancelSyncSource(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;I)V
    .locals 3
    .parameter "exSyncSources"
    .parameter "srcType"

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(IZ)V

    .line 546
    packed-switch p2, :pswitch_data_0

    .line 560
    :goto_0
    invoke-virtual {p1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->cancelSyncSource(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;I)V

    .line 561
    return-void

    .line 548
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeRequestByAccountId(J)V

    goto :goto_0

    .line 551
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeRequestByAccountId(J)V

    goto :goto_0

    .line 554
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->removeRequestByAccountId(J)V

    goto :goto_0

    .line 557
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeRequestByAccountId(J)V

    goto :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public cancelSyncSource(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;II)V
    .locals 3
    .parameter "exSyncSources"
    .parameter "srcType"
    .parameter "mode"

    .prologue
    .line 564
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(IZ)V

    .line 565
    packed-switch p2, :pswitch_data_0

    .line 579
    :goto_0
    invoke-virtual {p1, p1, p2, p3}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->cancelSyncSource(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;II)V

    .line 580
    return-void

    .line 567
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeRequestByAccountId(J)V

    goto :goto_0

    .line 570
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeRequestByAccountId(J)V

    goto :goto_0

    .line 573
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->removeRequestByAccountId(J)V

    goto :goto_0

    .line 576
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeRequestByAccountId(J)V

    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public checkQueue(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 5
    .parameter "exSyncSources"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 402
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isInit:Z

    if-nez v0, :cond_1

    .line 403
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASRequestController"

    const-string v1, "checkQueue(): skip"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 454
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->resendSyncStatus(Landroid/content/Context;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/EASRequestController;)V

    .line 455
    return-void

    .line 404
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isPaused:Z

    if-eqz v0, :cond_3

    .line 405
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "EASRequestController"

    const-string v1, "checkQueue(): paused"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->setPause(Z)V

    .line 407
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 408
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 409
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    goto :goto_0

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->isRequestEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    const/16 v1, -0x63

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->isOnlyRequest(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 411
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "EASRequestController"

    const-string v1, "checkQueue(): mail"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->setPause(Z)V

    .line 413
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 414
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 415
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 416
    iput v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTypeInSync:I

    goto :goto_0

    .line 417
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isRequestEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 418
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "EASRequestController"

    const-string v1, "checkQueue(): contact"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 419
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->setPause(Z)V

    .line 420
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 421
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 422
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 423
    iput v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTypeInSync:I

    goto/16 :goto_0

    .line 424
    :cond_7
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isRequestEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 425
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "EASRequestController"

    const-string v1, "checkQueue(): calendar"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 426
    :cond_8
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->setPause(Z)V

    .line 427
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 428
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 429
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 430
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTypeInSync:I

    goto/16 :goto_0

    .line 431
    :cond_9
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isRequestEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 432
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "EASRequestController"

    const-string v1, "checkQueue(): tasks"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 433
    :cond_a
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->setPause(Z)V

    .line 434
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 435
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 436
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 437
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTypeInSync:I

    goto/16 :goto_0

    .line 438
    :cond_b
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->isRequestEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 439
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "EASRequestController"

    const-string v1, "checkQueue(): mail(final)"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 440
    :cond_c
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->setPause(Z)V

    .line 441
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 442
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 443
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 444
    iput v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTypeInSync:I

    goto/16 :goto_0

    .line 446
    :cond_d
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "EASRequestController"

    const-string v1, "checkQueue(): empty"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 448
    :cond_e
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->setPause(Z)V

    .line 449
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 450
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 451
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setPause(Z)V

    .line 452
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTypeInSync:I

    goto/16 :goto_0
.end method

.method public getRunningRequest(I)Lcom/htc/android/mail/eassvc/core/EASRequest;
    .locals 1
    .parameter "srcType"

    .prologue
    .line 473
    packed-switch p1, :pswitch_data_0

    .line 483
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 475
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->getRunningRequest()Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-result-object v0

    goto :goto_0

    .line 477
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->getRunningRequest()Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-result-object v0

    goto :goto_0

    .line 479
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->getRunningRequest()Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-result-object v0

    goto :goto_0

    .line 481
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->getRunningRequest()Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-result-object v0

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method handleException(Ljava/lang/Exception;Landroid/net/http/AndroidHttpClient;J)Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    .locals 4
    .parameter "e"
    .parameter "httpClient"
    .parameter "accountId"

    .prologue
    .line 1398
    new-instance v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;)V

    .line 1399
    .local v1, result:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    invoke-static {p1}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v2

    .line 1400
    .local v2, syncEx:Lcom/htc/android/mail/eassvc/core/SyncException;
    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v0

    .line 1401
    .local v0, errorCode:I
    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I

    .line 1402
    const/16 v3, 0x204

    if-eq v0, v3, :cond_0

    const/16 v3, 0x205

    if-eq v0, v3, :cond_0

    const/16 v3, 0x207

    if-eq v0, v3, :cond_0

    const/16 v3, 0x206

    if-ne v0, v3, :cond_1

    .line 1407
    :cond_0
    const/16 v3, 0x131

    iput v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    .line 1417
    :goto_0
    return-object v1

    .line 1412
    :cond_1
    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1413
    const/16 v3, 0x12d

    iput v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    goto :goto_0

    .line 1415
    :cond_2
    const/16 v3, 0x12c

    iput v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    goto :goto_0
.end method

.method handleException(Ljava/lang/Exception;Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;Lcom/htc/android/mail/eassvc/core/SyncSource;)Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    .locals 28
    .parameter "e"
    .parameter "reqThread"
    .parameter "syncSource"

    .prologue
    .line 1193
    new-instance v20, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;)V

    .line 1194
    .local v20, result:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->getRunningRequest()Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-result-object v19

    .line 1195
    .local v19, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    .line 1196
    if-nez v19, :cond_0

    .line 1197
    const-string v23, "EASRequestController"

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getAccount()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v24

    const-string v25, "handleException(): Error, running request is null!"

    invoke-static/range {v23 .. v25}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1394
    :goto_0
    return-object v20

    .line 1200
    :cond_0
    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1201
    .local v12, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v21

    .line 1202
    .local v21, syncEx:Lcom/htc/android/mail/eassvc/core/SyncException;
    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v11

    .line 1203
    .local v11, errorCode:I
    const/16 v23, 0x258

    move/from16 v0, v23

    if-eq v11, v0, :cond_1

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1204
    :cond_1
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    goto :goto_0

    .line 1206
    :cond_2
    const/16 v23, 0x204

    move/from16 v0, v23

    if-eq v11, v0, :cond_3

    const/16 v23, 0x205

    move/from16 v0, v23

    if-eq v11, v0, :cond_3

    const/16 v23, 0x207

    move/from16 v0, v23

    if-eq v11, v0, :cond_3

    const/16 v23, 0x206

    move/from16 v0, v23

    if-ne v11, v0, :cond_4

    .line 1210
    :cond_3
    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    iget-object v0, v12, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v11, v3}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->saveCertificateError(Landroid/net/http/AndroidHttpClient;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 1211
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    .line 1212
    move-object/from16 v0, v20

    iput v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I

    goto :goto_0

    .line 1214
    :cond_4
    const/16 v23, 0x400

    move/from16 v0, v23

    if-ne v11, v0, :cond_5

    .line 1216
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    .line 1217
    move-object/from16 v0, v20

    iput v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I

    goto :goto_0

    .line 1219
    :cond_5
    const/16 v23, 0x193

    move/from16 v0, v23

    if-eq v11, v0, :cond_6

    const/16 v23, 0x1c1

    move/from16 v0, v23

    if-eq v11, v0, :cond_6

    const/16 v23, 0x3f3

    move/from16 v0, v23

    if-ne v11, v0, :cond_13

    .line 1222
    :cond_6
    sget-boolean v23, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v23, :cond_7

    const-string v23, "EASRequestController"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v24, v0

    const-string v26, "Need Provision"

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1223
    :cond_7
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z

    .line 1225
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .local v6, canceledRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/EASRequest;>;"
    iget-object v0, v12, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 1227
    .local v15, mSync:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v15}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->getRunningRequest(I)Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-result-object v14

    .line 1228
    .local v14, mReq:Lcom/htc/android/mail/eassvc/core/EASRequest;
    if-eqz v14, :cond_8

    .line 1229
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1327
    .end local v6           #canceledRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/EASRequest;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #mReq:Lcom/htc/android/mail/eassvc/core/EASRequest;
    .end local v15           #mSync:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :catch_0
    move-exception v7

    .line 1328
    .local v7, e1:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1375
    .end local v7           #e1:Ljava/lang/Exception;
    :cond_9
    :goto_2
    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->needRetry()Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 1376
    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setRetry()V

    .line 1377
    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_19

    .line 1378
    sget-boolean v23, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v23, :cond_a

    const-string v23, "EASRequestController"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v24, v0

    const-string v26, "User cancelled, not retry."

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1392
    :cond_a
    :goto_3
    move-object/from16 v0, v20

    iput v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I

    .line 1393
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    goto/16 :goto_0

    .line 1234
    .restart local v6       #canceledRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/EASRequest;>;"
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_b
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->getListener()Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-result-object v23

    if-eqz v23, :cond_c

    .line 1235
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->getListener()Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->cancelSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 1237
    :cond_c
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->cancelSync(Z)V

    .line 1239
    new-instance v9, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;

    invoke-direct {v9}, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1241
    .local v9, easResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v12, v9}, Lcom/htc/android/mail/eassvc/core/SyncManager;->applyPolicy(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;)I

    move-result v5

    .line 1242
    .local v5, applyResult:I
    if-nez v5, :cond_e

    .line 1243
    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeGlobalInfo()V

    .line 1244
    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writePolicyDoc()V

    .line 1245
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z

    .line 1246
    const/4 v11, 0x0

    .line 1247
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1248
    .local v18, req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    const/16 v23, 0x5

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1249
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 1254
    .end local v5           #applyResult:I
    .end local v18           #req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    :catch_1
    move-exception v8

    .line 1255
    .local v8, e2:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1256
    invoke-static {v8}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v22

    .line 1259
    .local v22, syncEx2:Lcom/htc/android/mail/eassvc/core/SyncException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getProvisionDocList()Ljava/util/ArrayList;

    move-result-object v17

    .line 1260
    .local v17, provisionDocList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;>;"
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->aggregatePolicy(Ljava/util/ArrayList;)Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move-result-object v4

    .line 1261
    .local v4, aggregatedPolicyDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->setAggregateProvisionDoc(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 1263
    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v23

    const/16 v24, 0x400

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v23

    const/16 v24, 0x3ff

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 1265
    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    .line 1267
    const/16 v23, 0x400

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I

    goto/16 :goto_0

    .line 1252
    .end local v4           #aggregatedPolicyDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .end local v8           #e2:Ljava/lang/Exception;
    .end local v17           #provisionDocList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;>;"
    .end local v22           #syncEx2:Lcom/htc/android/mail/eassvc/core/SyncException;
    .restart local v5       #applyResult:I
    :cond_e
    const/16 v11, 0x3f3

    goto/16 :goto_2

    .line 1269
    .end local v5           #applyResult:I
    .restart local v4       #aggregatedPolicyDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .restart local v8       #e2:Ljava/lang/Exception;
    .restart local v17       #provisionDocList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;>;"
    .restart local v22       #syncEx2:Lcom/htc/android/mail/eassvc/core/SyncException;
    :cond_f
    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v23

    const/16 v24, 0x193

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v23

    const/16 v24, 0x1c1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v23

    const/16 v24, 0x3fe

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 1272
    :cond_10
    iget-object v0, v9, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->data:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 1273
    .local v16, provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    if-nez v16, :cond_11

    .line 1274
    const-string v23, "EASRequestController"

    const-string v24, "handleException() error! provisionDoc is null"

    invoke-static/range {v23 .. v24}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    :goto_5
    const/16 v11, 0x3fe

    .line 1279
    goto/16 :goto_2

    .line 1276
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    iget-object v0, v12, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->showPolicyNotSufficientNotificatio(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 1280
    .end local v16           #provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    :cond_12
    const/16 v11, 0x320

    goto/16 :goto_2

    .line 1330
    .end local v4           #aggregatedPolicyDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .end local v6           #canceledRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/EASRequest;>;"
    .end local v8           #e2:Ljava/lang/Exception;
    .end local v9           #easResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #provisionDocList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;>;"
    .end local v22           #syncEx2:Lcom/htc/android/mail/eassvc/core/SyncException;
    :cond_13
    const/16 v23, 0x44c

    move/from16 v0, v23

    if-ne v11, v0, :cond_14

    .line 1331
    const-string v23, "EASRequestController"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Download policy failed: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1332
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z

    goto/16 :goto_2

    .line 1333
    :cond_14
    const/16 v23, 0x2d4

    move/from16 v0, v23

    if-ne v11, v0, :cond_15

    .line 1334
    const-string v23, "EASRequestController"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Folder hierarchy changed: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1335
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z

    goto/16 :goto_2

    .line 1336
    :cond_15
    const/16 v23, 0x2ca

    move/from16 v0, v23

    if-ne v11, v0, :cond_16

    .line 1337
    const-string v23, "EASRequestController"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Invalid syncKey:("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1338
    const v23, 0xf42a4

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid syncKey:("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getSyncKey()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1339
    new-instance v23, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct/range {v23 .. v23}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid syncKey:("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getSyncKey()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/htc/android/mail/ulog/MULogMgr;->addSyncErrLog(Ljava/lang/String;)V

    .line 1341
    :try_start_4
    const-string v23, "0"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setSyncKey(Ljava/lang/String;)V

    .line 1342
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 1343
    :catch_2
    move-exception v10

    .line 1344
    .local v10, er:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1346
    .end local v10           #er:Ljava/lang/Exception;
    :cond_16
    const/16 v23, 0x2cc

    move/from16 v0, v23

    if-ne v11, v0, :cond_17

    .line 1347
    const-string v23, "EASRequestController"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Folder Invalid syncKey:("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getColID()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1348
    const v23, 0xf42a4

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Folder Invalid syncKey:("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1350
    :try_start_5
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v23, v0

    const-string v24, "0"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->folderSynckey:Ljava/lang/String;

    .line 1351
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    .line 1352
    :catch_3
    move-exception v10

    .line 1353
    .restart local v10       #er:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1355
    .end local v10           #er:Ljava/lang/Exception;
    :cond_17
    const/16 v23, 0x2cd

    move/from16 v0, v23

    if-ne v11, v0, :cond_18

    .line 1356
    const-string v23, "EASRequestController"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " Collection ID is empty "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1357
    const v23, 0xf42a4

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Collection ID is empty :("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1359
    :try_start_6
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v23, v0

    const-string v24, "0"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->folderSynckey:Ljava/lang/String;

    .line 1360
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 1361
    :catch_4
    move-exception v10

    .line 1362
    .restart local v10       #er:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1364
    .end local v10           #er:Ljava/lang/Exception;
    :cond_18
    const/16 v23, 0x2d1

    move/from16 v0, v23

    if-ne v11, v0, :cond_9

    .line 1365
    const-string v23, "EASRequestController"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Protocol Error:("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1366
    const v23, 0xf42a4

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Protocol Error:("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getSyncKey()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1368
    :try_start_7
    const-string v23, "0"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setSyncKey(Ljava/lang/String;)V

    .line 1369
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_2

    .line 1370
    :catch_5
    move-exception v10

    .line 1371
    .restart local v10       #er:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1379
    .end local v10           #er:Ljava/lang/Exception;
    :cond_19
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_1a

    .line 1381
    sget-boolean v23, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v23, :cond_a

    const-string v23, "EASRequestController"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v24, v0

    const-string v26, "No network ready, not retry."

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_3

    .line 1382
    :cond_1a
    const/16 v23, 0x1c7

    move/from16 v0, v23

    if-ne v11, v0, :cond_1b

    .line 1383
    const-string v23, "EASRequestController"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Conneciton is refused when handling command "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_3

    .line 1385
    :cond_1b
    sget-boolean v23, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v23, :cond_1c

    const-string v23, "EASRequestController"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception happen, do retry ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getRetryCount()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1386
    :cond_1c
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z

    goto/16 :goto_3

    .line 1390
    :cond_1d
    sget-boolean v23, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v23, :cond_a

    const-string v23, "EASRequestController"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v24, v0

    const-string v26, "Exception happen, out of retry times, quit."

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_3
.end method

.method handleMailOutException(Ljava/lang/Exception;Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;Lcom/htc/android/mail/eassvc/core/MailSyncSource;)Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    .locals 23
    .parameter "e"
    .parameter "reqThread"
    .parameter "mailSyncSrc"

    .prologue
    .line 1087
    new-instance v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;)V

    .line 1088
    .local v14, result:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->getRunningRequest()Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-result-object v13

    .line 1089
    .local v13, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    .line 1090
    if-nez v13, :cond_0

    .line 1091
    const-string v18, "EASRequestController"

    invoke-virtual/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getAccount()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v19

    const-string v20, "handleMailOutException(): Error, running request is null!"

    invoke-static/range {v18 .. v20}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1189
    :goto_0
    return-object v14

    .line 1094
    :cond_0
    iget-object v10, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1095
    .local v10, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v16

    .line 1096
    .local v16, syncEx:Lcom/htc/android/mail/eassvc/core/SyncException;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v9

    .line 1097
    .local v9, errorCode:I
    const/16 v18, 0x258

    move/from16 v0, v18

    if-ne v9, v0, :cond_1

    .line 1098
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    goto :goto_0

    .line 1100
    :cond_1
    const/16 v18, 0x204

    move/from16 v0, v18

    if-eq v9, v0, :cond_2

    const/16 v18, 0x205

    move/from16 v0, v18

    if-eq v9, v0, :cond_2

    const/16 v18, 0x207

    move/from16 v0, v18

    if-eq v9, v0, :cond_2

    const/16 v18, 0x206

    move/from16 v0, v18

    if-ne v9, v0, :cond_3

    .line 1104
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getOutHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v9, v3}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->saveCertificateError(Landroid/net/http/AndroidHttpClient;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 1105
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    .line 1106
    iput v9, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I

    goto :goto_0

    .line 1108
    :cond_3
    const/16 v18, 0x400

    move/from16 v0, v18

    if-ne v9, v0, :cond_4

    .line 1110
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    .line 1111
    iput v9, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I

    goto :goto_0

    .line 1113
    :cond_4
    const/16 v18, 0x193

    move/from16 v0, v18

    if-eq v9, v0, :cond_5

    const/16 v18, 0x1c1

    move/from16 v0, v18

    if-eq v9, v0, :cond_5

    const/16 v18, 0x3f3

    move/from16 v0, v18

    if-ne v9, v0, :cond_f

    .line 1116
    :cond_5
    sget-boolean v18, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v18, :cond_6

    const-string v18, "EASRequestController"

    iget-wide v0, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v19, v0

    const-string v21, "MailOut: Need Provision"

    invoke-static/range {v18 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1117
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z

    .line 1119
    :try_start_0
    new-instance v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;

    invoke-direct {v8}, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1121
    .local v8, easResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10, v8}, Lcom/htc/android/mail/eassvc/core/SyncManager;->applyPolicy(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;)I

    move-result v5

    .line 1122
    .local v5, applyResult:I
    if-nez v5, :cond_9

    .line 1123
    invoke-virtual {v10}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeGlobalInfo()V

    .line 1124
    invoke-virtual {v10}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writePolicyDoc()V

    .line 1125
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1126
    const/4 v9, 0x0

    .line 1170
    .end local v5           #applyResult:I
    .end local v8           #easResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    :cond_7
    :goto_1
    iget-object v0, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "parameter.mail.send.retry_count"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 1171
    .local v15, retryCount:I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v15, v0, :cond_15

    .line 1172
    invoke-static {v9}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 1174
    sget-boolean v18, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v18, :cond_8

    const-string v18, "EASRequestController"

    iget-wide v0, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v19, v0

    const-string v21, "MailOut: No network ready, not retry."

    invoke-static/range {v18 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1187
    :cond_8
    :goto_2
    iput v9, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I

    .line 1188
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    goto/16 :goto_0

    .line 1128
    .end local v15           #retryCount:I
    .restart local v5       #applyResult:I
    .restart local v8       #easResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    :cond_9
    const/16 v9, 0x3f3

    goto :goto_1

    .line 1130
    .end local v5           #applyResult:I
    :catch_0
    move-exception v7

    .line 1131
    .local v7, e2:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1132
    invoke-static {v7}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v17

    .line 1135
    .local v17, syncEx2:Lcom/htc/android/mail/eassvc/core/SyncException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getProvisionDocList()Ljava/util/ArrayList;

    move-result-object v12

    .line 1136
    .local v12, provisionDocList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;>;"
    invoke-static {v12}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->aggregatePolicy(Ljava/util/ArrayList;)Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move-result-object v4

    .line 1137
    .local v4, aggregatedPolicyDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->setAggregateProvisionDoc(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 1139
    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v18

    const/16 v19, 0x400

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v18

    const/16 v19, 0x3ff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1141
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    .line 1143
    const/16 v18, 0x400

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1159
    .end local v4           #aggregatedPolicyDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .end local v7           #e2:Ljava/lang/Exception;
    .end local v8           #easResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    .end local v12           #provisionDocList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;>;"
    .end local v17           #syncEx2:Lcom/htc/android/mail/eassvc/core/SyncException;
    :catch_1
    move-exception v6

    .line 1160
    .local v6, e1:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1145
    .end local v6           #e1:Ljava/lang/Exception;
    .restart local v4       #aggregatedPolicyDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .restart local v7       #e2:Ljava/lang/Exception;
    .restart local v8       #easResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    .restart local v12       #provisionDocList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;>;"
    .restart local v17       #syncEx2:Lcom/htc/android/mail/eassvc/core/SyncException;
    :cond_b
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v18

    const/16 v19, 0x193

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v18

    const/16 v19, 0x1c1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v18

    const/16 v19, 0x3fe

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 1148
    :cond_c
    iget-object v11, v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->data:Ljava/lang/Object;

    check-cast v11, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 1149
    .local v11, provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    if-nez v11, :cond_d

    .line 1150
    const-string v18, "EASRequestController"

    const-string v19, "handleException() error! provisionDoc is null"

    invoke-static/range {v18 .. v19}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :goto_3
    const/16 v9, 0x3fe

    .line 1155
    goto/16 :goto_1

    .line 1152
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v11}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->showPolicyNotSufficientNotificatio(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 1156
    .end local v11           #provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    :cond_e
    const/16 v9, 0x320

    goto/16 :goto_1

    .line 1162
    .end local v4           #aggregatedPolicyDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .end local v7           #e2:Ljava/lang/Exception;
    .end local v8           #easResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    .end local v12           #provisionDocList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;>;"
    .end local v17           #syncEx2:Lcom/htc/android/mail/eassvc/core/SyncException;
    :cond_f
    const/16 v18, 0x2eb

    move/from16 v0, v18

    if-ne v9, v0, :cond_7

    .line 1163
    sget-boolean v18, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v18, :cond_10

    const-string v18, "EASRequestController"

    iget-wide v0, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v19, v0

    const-string v21, "MailOut: INSUFFICIENT_SERVER_STORAGE"

    invoke-static/range {v18 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1164
    :cond_10
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    .line 1165
    iput v9, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I

    .line 1166
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z

    goto/16 :goto_0

    .line 1175
    .restart local v15       #retryCount:I
    :cond_11
    const/16 v18, 0x1c7

    move/from16 v0, v18

    if-ne v9, v0, :cond_12

    .line 1176
    const-string v18, "EASRequestController"

    iget-wide v0, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v19, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MailOut: Conneciton is refused when handling command "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v18 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_2

    .line 1178
    :cond_12
    sget-boolean v18, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v18, :cond_13

    const-string v18, "EASRequestController"

    iget-wide v0, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v19, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MailOut: Exception happen, do retry ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getRetryCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v18 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1179
    :cond_13
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z

    goto/16 :goto_2

    .line 1182
    :cond_14
    sget-boolean v18, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v18, :cond_8

    const-string v18, "EASRequestController"

    iget-wide v0, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v19, v0

    const-string v21, "MailOut: not network fail"

    invoke-static/range {v18 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_2

    .line 1185
    :cond_15
    sget-boolean v18, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v18, :cond_8

    const-string v18, "EASRequestController"

    iget-wide v0, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v19, v0

    const-string v21, "MailOut:Exception happen, out of retry times, quit."

    invoke-static/range {v18 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_2
.end method

.method public isAccountBusy(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isBusy(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isBusy(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->isBusy(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isBusy(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    :cond_0
    const/4 v0, 0x1

    .line 523
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestEmpty(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Z
    .locals 3
    .parameter "exSyncSources"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isRequestEmpty(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isRequestEmpty(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->isRequestEmpty(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isRequestEmpty(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestEmpty(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;I)Z
    .locals 3
    .parameter "exSyncSources"
    .parameter "srcType"

    .prologue
    .line 487
    packed-switch p2, :pswitch_data_0

    .line 497
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 489
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->isRequestEmpty(J)Z

    move-result v0

    goto :goto_0

    .line 491
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isRequestEmpty(J)Z

    move-result v0

    goto :goto_0

    .line 493
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isRequestEmpty(J)Z

    move-result v0

    goto :goto_0

    .line 495
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isRequestEmpty(J)Z

    move-result v0

    goto :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method isScreenOff()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2902
    sget-object v4, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mPowerManagerService:Landroid/os/IPowerManager;

    if-nez v4, :cond_0

    .line 2903
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    sput-object v4, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 2906
    :cond_0
    :try_start_0
    sget-object v4, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v4}, Landroid/os/IPowerManager;->timeSinceScreenOn()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 2908
    .local v2, time:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 2913
    .end local v2           #time:J
    :cond_1
    :goto_0
    return v1

    .line 2910
    :catch_0
    move-exception v0

    .line 2911
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isSendingMail(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->isSendingMail(J)Z

    move-result v0

    return v0
.end method

.method public isSendingRequestEmpty()Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->isSendingRequestEmpty()Z

    move-result v0

    return v0
.end method

.method public isSyncSourceRunning(JI)Z
    .locals 1
    .parameter "accountId"
    .parameter "syncSrcType"

    .prologue
    .line 502
    packed-switch p3, :pswitch_data_0

    .line 513
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 504
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isBusy(J)Z

    move-result v0

    goto :goto_0

    .line 506
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isBusy(J)Z

    move-result v0

    goto :goto_0

    .line 508
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->isBusy(J)Z

    move-result v0

    goto :goto_0

    .line 510
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->isBusy(J)Z

    move-result v0

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public registerEventCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 633
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    monitor-enter v1

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 636
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASRequestController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerEventCallback() - new size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_0
    monitor-exit v1

    .line 639
    return-void

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 339
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isInit:Z

    .line 340
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->finish()V

    .line 341
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->finish()V

    .line 342
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->finish()V

    .line 343
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->finish()V

    .line 344
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 345
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;

    monitor-enter v4

    .line 346
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 347
    .local v2, key:Ljava/lang/Long;
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ConditionVariable;

    .line 348
    .local v0, condition:Landroid/os/ConditionVariable;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 353
    .end local v0           #condition:Landroid/os/ConditionVariable;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Long;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 352
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 353
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mPowerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 362
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 369
    return-void
.end method

.method public removeAllRequest()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeAllRequest()V

    .line 459
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeAllRequest()V

    .line 460
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->removeAllRequest()V

    .line 461
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeAllRequest()V

    .line 462
    return-void
.end method

.method requestSyncByService(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 13
    .parameter "request"
    .parameter "exAccount"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 594
    sget-boolean v10, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "EASRequestController"

    const-string v11, "requestSyncByService()"

    invoke-static {v10, p2, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 596
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    iget-object v10, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    iget-object v11, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .local v0, account:Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v10

    new-array v11, v6, [Landroid/content/SyncInfo;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/SyncInfo;

    .line 599
    .local v2, activeSyncList:[Landroid/content/SyncInfo;
    const/4 v1, 0x0

    .line 600
    .local v1, accountAlreadyInSync:Z
    array-length v10, v2

    if-lez v10, :cond_2

    .line 601
    move-object v3, v2

    .local v3, arr$:[Landroid/content/SyncInfo;
    array-length v7, v3

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v8, v3, v5

    .line 602
    .local v8, syncInfo:Landroid/content/SyncInfo;
    iget-object v10, v8, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    const-string v11, "htceas"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v8, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 604
    const/4 v1, 0x1

    .line 605
    sget-boolean v10, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "EASRequestController"

    const-string v11, "requestSyncByService(): account already in sync"

    invoke-static {v10, p2, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 601
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 609
    .end local v3           #arr$:[Landroid/content/SyncInfo;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #syncInfo:Landroid/content/SyncInfo;
    :cond_2
    const-string v10, "htceas"

    invoke-static {v0, v10}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    if-nez v1, :cond_5

    .line 611
    iget v10, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    const/4 v11, -0x3

    if-le v10, v11, :cond_3

    move v6, v9

    .line 612
    .local v6, isManualSync:Z
    :cond_3
    sget-boolean v10, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v11, "EASRequestController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requestSyncByService(): request sync "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v6, :cond_6

    const-string v10, "isManualSync"

    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, p2, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 613
    :cond_4
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 614
    .local v4, extras:Landroid/os/Bundle;
    const-string v10, "force"

    invoke-virtual {v4, v10, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 615
    const-string v10, "fromService"

    invoke-virtual {v4, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 616
    const-string v9, "htceas"

    invoke-static {v0, v9, v4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 618
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v6           #isManualSync:Z
    :cond_5
    return-void

    .line 612
    .restart local v6       #isManualSync:Z
    :cond_6
    const-string v10, ""

    goto :goto_1
.end method

.method public setPause(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Z)V
    .locals 0
    .parameter "exSyncSources"
    .parameter "bPause"

    .prologue
    .line 590
    invoke-virtual {p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 591
    return-void
.end method

.method public setPause(Z)V
    .locals 1
    .parameter "bPause"

    .prologue
    .line 586
    iput-boolean p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isPaused:Z

    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->checkQueue(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 588
    return-void
.end method

.method public triggerEventCallback(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 653
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    monitor-enter v3

    .line 654
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 656
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    invoke-interface {v2, p1}, Lcom/htc/android/mail/eassvc/pim/EASEventCallback;->callback(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 664
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1       #i:I
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 665
    return-void
.end method

.method public unregisterEventCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 642
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    monitor-enter v1

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 645
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASRequestController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterEventCallback() - new size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mEventCallbackList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_0
    :goto_0
    monitor-exit v1

    .line 650
    return-void

    .line 647
    :cond_1
    const-string v0, "EASRequestController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterEventCallback: Error, cannot find callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForSyncComplete(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 4
    .parameter "exSyncSources"

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isRequestEmpty(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 621
    new-instance v0, Ljava/lang/Long;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 622
    .local v0, accountId:Ljava/lang/Long;
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ConditionVariable;

    .line 623
    .local v1, condition:Landroid/os/ConditionVariable;
    if-eqz v1, :cond_1

    .line 624
    sget-boolean v2, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EASRequestController"

    const-string v3, "> waitForSyncComplete()"

    invoke-static {v2, p1, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 625
    :cond_0
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 626
    sget-boolean v2, Lcom/htc/android/mail/eassvc/core/EASRequestController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "EASRequestController"

    const-string v3, "< waitForSyncComplete()"

    invoke-static {v2, p1, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 629
    .end local v0           #accountId:Ljava/lang/Long;
    .end local v1           #condition:Landroid/os/ConditionVariable;
    :cond_1
    return-void
.end method
