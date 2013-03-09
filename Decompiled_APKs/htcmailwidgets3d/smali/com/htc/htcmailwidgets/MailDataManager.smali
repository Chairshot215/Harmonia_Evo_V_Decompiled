.class public Lcom/htc/htcmailwidgets/MailDataManager;
.super Ljava/lang/Object;
.source "MailDataManager.java"

# interfaces
.implements Lcom/htc/htcmailwidgets/IMailDataManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;,
        Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;,
        Lcom/htc/htcmailwidgets/MailDataManager$DeleteClickListener;,
        Lcom/htc/htcmailwidgets/MailDataManager$ReplyClickListener;,
        Lcom/htc/htcmailwidgets/MailDataManager$FromHitboxListener;,
        Lcom/htc/htcmailwidgets/MailDataManager$PhotoHitboxListener;,
        Lcom/htc/htcmailwidgets/MailDataManager$PagePlaybackInfoListener;,
        Lcom/htc/htcmailwidgets/MailDataManager$AccountData;,
        Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;,
        Lcom/htc/htcmailwidgets/MailDataManager$State;,
        Lcom/htc/htcmailwidgets/MailDataManager$QueryState;
    }
.end annotation


# static fields
.field protected static final DEFAULT_UPDATE_UI_BY_ITEMS_COUNT:I = 0x1e

.field public static LOG_TAG:Ljava/lang/String; = null

.field private static MIN_LABEL_HEIGHT:I = 0x0

.field private static MIN_LABEL_WIDTH:I = 0x0

.field protected static final QUERY_LIMIT:I = 0x64

.field protected static _col_account:I = 0x0

.field protected static _col_flags:I = 0x0

.field protected static _col_from:I = 0x0

.field protected static _col_fromEmail:I = 0x0

.field protected static _col_id:I = 0x0

.field protected static _col_importance:I = 0x0

.field protected static _col_incAttachment:I = 0x0

.field protected static _col_internaldate:I = 0x0

.field protected static _col_mailAct:I = 0x0

.field protected static _col_mailPreview:I = 0x0

.field protected static _col_messageClassInt:I = 0x0

.field protected static _col_read:I = 0x0

.field protected static _col_subject:I = 0x0

.field protected static _col_subjtype:I = 0x0

.field private static final dataMSG_BASE:I = 0x30000

.field private static final dataMSG_BUILD_STATUSMAP:I = 0x30004

.field private static final dataMSG_UPDATE_MAILCONTACTS:I = 0x30002

.field private static final dataMSG_UPDATE_MAILSTATUS:I = 0x30003

.field private static final dataMSG_UPDATE_TIMESTRING:I = 0x30001

.field public static final localLOGV:Z

.field private static mAccountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/htcmailwidgets/MailDataManager$AccountData;",
            ">;"
        }
    .end annotation
.end field

.field private static mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

.field protected static mCalendar:Ljava/util/Calendar;

.field private static mChangedIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mChangedMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static mContactAry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

.field private static mDataReceiver:Landroid/content/BroadcastReceiver;

.field private static mDeletedContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mIntExtractDataPosition:I

.field public static mLocalData:Lcom/htc/htcmailwidgets/LocalData;

.field private static mMailActForwardList:[J

.field private static mMailActReplyList:[J

.field private static mMailCallbackListener:Lcom/htc/htcmailwidgets/IMailCallbackListener;

.field private static mMailCallbackListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/htcmailwidgets/IMailCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mMailDeletedList:[J

.field private static mMailReadList:[J

.field private static mMailReloadedList:[J

.field private static mMailUnreadList:[J

.field private static mOSversion:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

.field private static mOrientation:I

.field private static mPhotoSizeX:I

.field private static mPhotoSizeY:I

.field public static mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

.field private static mResolution:I

.field private static mStarMarkedList:[J

.field private static mStarUnMarkedList:[J

.field private static mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

.field private static mThreadSuspend:Z

.field private static mUpdateUIbyItems:I

.field private static mail_temp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;"
        }
    .end annotation
.end field

.field private static mailids_temp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mbAccountMapLocked:Z

.field private static mbBuildMailStatusMap:Z

.field private static mbExtractDataTaskExecuting:Z

.field private static mbExtractDataThreadisRunning:Z

.field private static mbQueryStateChanged:Z

.field private static mbUpdateMailContacts:Z

.field private static mbUpdateMailStatus:Z

.field private static mbUpdateTimgString:Z

.field private static mbWidgetDeleteMail:Z

.field private static mbWidgetOrientation:Z

.field private static mbWidgetResume:Z

.field private static mbmFacebookIcon:Landroid/graphics/Bitmap;

.field private static me:Lcom/htc/htcmailwidgets/MailDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    const-string v0, "HTCWidget_MailDataManager"

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    .line 55
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    .line 56
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mCalendar:Ljava/util/Calendar;

    .line 79
    sget-object v0, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mOSversion:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    .line 86
    const/16 v0, 0x1e

    sput v0, Lcom/htc/htcmailwidgets/MailDataManager;->mUpdateUIbyItems:I

    .line 89
    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 90
    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 91
    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadSuspend:Z

    .line 94
    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataThreadisRunning:Z

    .line 95
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    .line 98
    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateTimgString:Z

    .line 101
    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailContacts:Z

    .line 104
    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailStatus:Z

    .line 107
    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbBuildMailStatusMap:Z

    .line 110
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    .line 113
    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetResume:Z

    .line 116
    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetDeleteMail:Z

    .line 119
    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    .line 122
    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetOrientation:Z

    .line 123
    const/4 v0, 0x1

    sput v0, Lcom/htc/htcmailwidgets/MailDataManager;->mOrientation:I

    .line 133
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 136
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 139
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListener:Lcom/htc/htcmailwidgets/IMailCallbackListener;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mDeletedContactList:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    .line 154
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    .line 155
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    .line 156
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    .line 157
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    .line 158
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    .line 159
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    .line 160
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    .line 161
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    .line 171
    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    .line 180
    const/4 v0, 0x7

    sput v0, Lcom/htc/htcmailwidgets/MailDataManager;->MIN_LABEL_WIDTH:I

    .line 181
    const/16 v0, 0x3f

    sput v0, Lcom/htc/htcmailwidgets/MailDataManager;->MIN_LABEL_HEIGHT:I

    .line 184
    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mLocalData:Lcom/htc/htcmailwidgets/LocalData;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    sput-object p1, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    .line 409
    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    .line 410
    return-void
.end method

.method static synthetic access$000()[J
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    return-object v0
.end method

.method static synthetic access$002([J)[J
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    return-object p0
.end method

.method static synthetic access$100()[J
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    return-object v0
.end method

.method static synthetic access$1000()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->buildChangedMap()V

    return-void
.end method

.method static synthetic access$102([J)[J
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    return-object p0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbBuildMailStatusMap:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-boolean p0, Lcom/htc/htcmailwidgets/MailDataManager;->mbBuildMailStatusMap:Z

    return p0
.end method

.method static synthetic access$1200()Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mDeletedContactList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mDeletedContactList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1402(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    return v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateTimgString:Z

    return v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-boolean p0, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateTimgString:Z

    return p0
.end method

.method static synthetic access$1700()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->checkTime()V

    return-void
.end method

.method static synthetic access$1800()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->updatePhoto()V

    return-void
.end method

.method static synthetic access$1900()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->updateContactStatus()V

    return-void
.end method

.method static synthetic access$200()[J
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    return-object v0
.end method

.method static synthetic access$2000()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->updateTimeString()V

    return-void
.end method

.method static synthetic access$202([J)[J
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    return-object p0
.end method

.method static synthetic access$2100()Lcom/htc/htcmailwidgets/IMailCallbackListener;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListener:Lcom/htc/htcmailwidgets/IMailCallbackListener;

    return-object v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailContacts:Z

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-boolean p0, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailContacts:Z

    return p0
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailStatus:Z

    return v0
.end method

.method static synthetic access$2302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-boolean p0, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailStatus:Z

    return p0
.end method

.method static synthetic access$2400()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->updateMailStatus()V

    return-void
.end method

.method static synthetic access$2502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-boolean p0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadSuspend:Z

    return p0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataThreadisRunning:Z

    return v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetResume:Z

    return v0
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetOrientation:Z

    return v0
.end method

.method static synthetic access$2900()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetDeleteMail:Z

    return v0
.end method

.method static synthetic access$300()[J
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    return-object v0
.end method

.method static synthetic access$3000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302([J)[J
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    return-object p0
.end method

.method static synthetic access$3102([Lcom/htc/htcmailwidgets/MailUtils$Account;)[Lcom/htc/htcmailwidgets/MailUtils$Account;
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    return-object p0
.end method

.method static synthetic access$400()[J
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    return-object v0
.end method

.method static synthetic access$402([J)[J
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    return-object p0
.end method

.method static synthetic access$500()[J
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    return-object v0
.end method

.method static synthetic access$502([J)[J
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    return-object p0
.end method

.method static synthetic access$600()[J
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    return-object v0
.end method

.method static synthetic access$602([J)[J
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    return-object p0
.end method

.method static synthetic access$700()[J
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    return-object v0
.end method

.method static synthetic access$702([J)[J
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    return-object p0
.end method

.method static synthetic access$800(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/htc/htcmailwidgets/MailDataManager;->getAccountName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    return v0
.end method

.method private static buildChangedMap()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1137
    const/4 v2, -0x1

    .line 1138
    .local v2, index:I
    const/4 v4, -0x1

    .line 1141
    .local v4, mailIndex:I
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 1462
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1147
    sget-boolean v6, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    if-eqz v6, :cond_2

    .line 1148
    sput-boolean v10, Lcom/htc/htcmailwidgets/MailDataManager;->mbBuildMailStatusMap:Z

    .line 1150
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v6, :cond_0

    .line 1151
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v7, 0x30004

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1155
    :cond_2
    sget-object v7, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 1156
    const/4 v6, 0x1

    :try_start_0
    sput-boolean v6, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    .line 1157
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 1158
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    .line 1159
    .local v0, a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    if-eqz v0, :cond_3

    .line 1160
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 1162
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1165
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    if-nez v6, :cond_4

    .line 1166
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    :cond_4
    :try_start_1
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    if-eqz v6, :cond_a

    .line 1170
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    array-length v6, v6

    if-ge v1, v6, :cond_a

    .line 1171
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    aget-wide v8, v6, v1

    invoke-static {v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v2

    .line 1172
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    sget-object v8, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    aget-wide v8, v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1174
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_5

    .line 1170
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1177
    :cond_5
    if-ltz v4, :cond_8

    .line 1178
    if-gez v2, :cond_7

    .line 1179
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1180
    .local v5, status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1181
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcmailwidgets/MailData;

    iget v6, v6, Lcom/htc/htcmailwidgets/MailData;->mFlag:I

    if-nez v6, :cond_6

    .line 1182
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1185
    :goto_4
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1450
    .end local v1           #i:I
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 1184
    .restart local v1       #i:I
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_6
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1454
    .end local v0           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    .end local v1           #i:I
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1187
    .restart local v0       #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    .restart local v1       #i:I
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_7
    :try_start_3
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1188
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1189
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1192
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_8
    if-gez v2, :cond_9

    .line 1193
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1194
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1195
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1196
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1198
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_9
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1199
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1200
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1207
    .end local v1           #i:I
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_a
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    if-eqz v6, :cond_10

    .line 1208
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    array-length v6, v6

    if-ge v1, v6, :cond_10

    .line 1209
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    aget-wide v8, v6, v1

    invoke-static {v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v2

    .line 1210
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    sget-object v8, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    aget-wide v8, v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1212
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_b

    .line 1208
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1215
    :cond_b
    if-ltz v4, :cond_e

    .line 1216
    if-gez v2, :cond_d

    .line 1217
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1218
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1219
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcmailwidgets/MailData;

    iget v6, v6, Lcom/htc/htcmailwidgets/MailData;->mFlag:I

    if-nez v6, :cond_c

    .line 1220
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1223
    :goto_7
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1222
    :cond_c
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    goto :goto_7

    .line 1225
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_d
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1226
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1227
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1231
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_e
    if-gez v2, :cond_f

    .line 1232
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1233
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1234
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1235
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1237
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_f
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1238
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1239
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1246
    .end local v1           #i:I
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_10
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    if-eqz v6, :cond_16

    .line 1247
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_8
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    array-length v6, v6

    if-ge v1, v6, :cond_16

    .line 1248
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    aget-wide v8, v6, v1

    invoke-static {v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v2

    .line 1249
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    sget-object v8, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    aget-wide v8, v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1251
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_11

    .line 1247
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1254
    :cond_11
    if-ltz v4, :cond_14

    .line 1255
    if-gez v2, :cond_13

    .line 1256
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1257
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1258
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcmailwidgets/MailData;

    iget-boolean v6, v6, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    if-eqz v6, :cond_12

    .line 1259
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1262
    :goto_a
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1261
    :cond_12
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    goto :goto_a

    .line 1264
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_13
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1265
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1266
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 1270
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_14
    if-gez v2, :cond_15

    .line 1271
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1272
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1273
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1274
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1276
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_15
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1277
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1278
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 1285
    .end local v1           #i:I
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_16
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    if-eqz v6, :cond_1c

    .line 1286
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_b
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    array-length v6, v6

    if-ge v1, v6, :cond_1c

    .line 1287
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    aget-wide v8, v6, v1

    invoke-static {v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v2

    .line 1288
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    sget-object v8, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    aget-wide v8, v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1290
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_17

    .line 1286
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1293
    :cond_17
    if-ltz v4, :cond_1a

    .line 1294
    if-gez v2, :cond_19

    .line 1295
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1296
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1297
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcmailwidgets/MailData;

    iget-boolean v6, v6, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    if-nez v6, :cond_18

    .line 1298
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1301
    :goto_d
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1300
    :cond_18
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    goto :goto_d

    .line 1303
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_19
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1304
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1305
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 1308
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_1a
    if-gez v2, :cond_1b

    .line 1309
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1310
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1311
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1312
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1314
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_1b
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1315
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1316
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 1323
    .end local v1           #i:I
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_1c
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    if-eqz v6, :cond_20

    .line 1324
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_e
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    array-length v6, v6

    if-ge v1, v6, :cond_20

    .line 1325
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    aget-wide v8, v6, v1

    invoke-static {v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v2

    .line 1326
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    sget-object v8, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    aget-wide v8, v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1327
    if-ltz v4, :cond_1e

    .line 1328
    if-gez v2, :cond_1d

    .line 1329
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1330
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1331
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->deleted_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1332
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1334
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_1d
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1335
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->deleted_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1336
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 1339
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_1e
    if-gez v2, :cond_1f

    .line 1340
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1341
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1342
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->deleted_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1343
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1345
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_1f
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1346
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->deleted_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1347
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 1354
    .end local v1           #i:I
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_20
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    if-eqz v6, :cond_24

    .line 1355
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_10
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    array-length v6, v6

    if-ge v1, v6, :cond_24

    .line 1356
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    aget-wide v8, v6, v1

    invoke-static {v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v2

    .line 1357
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    sget-object v8, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    aget-wide v8, v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1358
    if-ltz v4, :cond_22

    .line 1359
    if-gez v2, :cond_21

    .line 1360
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1361
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1362
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->reloaded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1363
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1365
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_21
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1366
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->reloaded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1367
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 1370
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_22
    if-gez v2, :cond_23

    .line 1371
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1372
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1373
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->reloaded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1374
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1376
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_23
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1377
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->reloaded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1378
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 1385
    .end local v1           #i:I
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_24
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    if-eqz v6, :cond_28

    .line 1386
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_12
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    array-length v6, v6

    if-ge v1, v6, :cond_28

    .line 1387
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    aget-wide v8, v6, v1

    invoke-static {v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v2

    .line 1388
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    sget-object v8, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    aget-wide v8, v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1389
    if-ltz v4, :cond_26

    .line 1390
    if-gez v2, :cond_25

    .line 1391
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1392
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1393
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1394
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1396
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_25
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1397
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1398
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1403
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_26
    if-gez v2, :cond_27

    .line 1404
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1405
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1406
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1407
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1409
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_27
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1410
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1411
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1418
    .end local v1           #i:I
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_28
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    if-eqz v6, :cond_3

    .line 1419
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_14
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 1420
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    aget-wide v8, v6, v1

    invoke-static {v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v2

    .line 1421
    iget-object v6, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    sget-object v8, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    aget-wide v8, v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1422
    if-ltz v4, :cond_2a

    .line 1423
    if-gez v2, :cond_29

    .line 1424
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1425
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1426
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1427
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1429
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_29
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1430
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1431
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1436
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_2a
    if-gez v2, :cond_2b

    .line 1437
    new-instance v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v5}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1438
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    aget-wide v8, v6, v1

    iput-wide v8, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1439
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1440
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1442
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_2b
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1443
    .restart local v5       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1444
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_15

    .line 1454
    .end local v0           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    .end local v1           #i:I
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_2c
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1455
    const/4 v6, 0x0

    sput-boolean v6, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    .line 1459
    sput-boolean v10, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailStatus:Z

    .line 1460
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v6, :cond_0

    .line 1461
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v7, 0x30003

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method

.method private static buildChangedMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "acc_id"
    .parameter "acc_name"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 834
    .local p3, mailinfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    .local p4, mailids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, -0x1

    .line 835
    .local v1, index:I
    const/4 v2, -0x1

    .line 838
    .local v2, mailIndex:I
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 844
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 845
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    .line 848
    :cond_2
    :try_start_0
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    if-eqz v4, :cond_9

    .line 849
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    array-length v4, v4

    if-ge v0, v4, :cond_9

    .line 850
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v1

    .line 851
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 853
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 849
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 856
    :cond_3
    if-ltz v2, :cond_7

    .line 857
    if-gez v1, :cond_6

    .line 858
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 859
    .local v3, status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 860
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htcmailwidgets/MailData;

    iget v4, v4, Lcom/htc/htcmailwidgets/MailData;->mFlag:I

    if-nez v4, :cond_5

    .line 861
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 864
    :goto_3
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1129
    .end local v0           #i:I
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :catch_0
    move-exception v4

    .line 1133
    :cond_4
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->updateMailStatus()V

    goto :goto_0

    .line 863
    .restart local v0       #i:I
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_5
    :try_start_1
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    goto :goto_3

    .line 866
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_6
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 867
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 868
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 871
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_7
    if-gez v1, :cond_8

    .line 872
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 873
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mStarMarkedList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 874
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 875
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 877
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_8
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 878
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 879
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 886
    .end local v0           #i:I
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_9
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    if-eqz v4, :cond_f

    .line 887
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    array-length v4, v4

    if-ge v0, v4, :cond_f

    .line 888
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v1

    .line 889
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 891
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_a

    .line 887
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 894
    :cond_a
    if-ltz v2, :cond_d

    .line 895
    if-gez v1, :cond_c

    .line 896
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 897
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 898
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htcmailwidgets/MailData;

    iget v4, v4, Lcom/htc/htcmailwidgets/MailData;->mFlag:I

    if-nez v4, :cond_b

    .line 899
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 902
    :goto_6
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 901
    :cond_b
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    goto :goto_6

    .line 904
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_c
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 905
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 906
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 910
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_d
    if-gez v1, :cond_e

    .line 911
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 912
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mStarUnMarkedList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 913
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 914
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 916
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_e
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 917
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 918
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 925
    .end local v0           #i:I
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_f
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    if-eqz v4, :cond_15

    .line 926
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_7
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    array-length v4, v4

    if-ge v0, v4, :cond_15

    .line 927
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v1

    .line 928
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 930
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_10

    .line 926
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 933
    :cond_10
    if-ltz v2, :cond_13

    .line 934
    if-gez v1, :cond_12

    .line 935
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 936
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 937
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htcmailwidgets/MailData;

    iget-boolean v4, v4, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    if-eqz v4, :cond_11

    .line 938
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 941
    :goto_9
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 940
    :cond_11
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    goto :goto_9

    .line 943
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_12
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 944
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 945
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 949
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_13
    if-gez v1, :cond_14

    .line 950
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 951
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReadList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 952
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 953
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 955
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_14
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 956
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 957
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 964
    .end local v0           #i:I
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_15
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    if-eqz v4, :cond_1b

    .line 965
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_a
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    array-length v4, v4

    if-ge v0, v4, :cond_1b

    .line 966
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v1

    .line 967
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 969
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_16

    .line 965
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 972
    :cond_16
    if-ltz v2, :cond_19

    .line 973
    if-gez v1, :cond_18

    .line 974
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 975
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 976
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htcmailwidgets/MailData;

    iget-boolean v4, v4, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    if-nez v4, :cond_17

    .line 977
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 980
    :goto_c
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 979
    :cond_17
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    goto :goto_c

    .line 982
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_18
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 983
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 984
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 987
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_19
    if-gez v1, :cond_1a

    .line 988
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 989
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailUnreadList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 990
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 991
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 993
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_1a
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 994
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 995
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 1002
    .end local v0           #i:I
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_1b
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    if-eqz v4, :cond_1f

    .line 1003
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_d
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    array-length v4, v4

    if-ge v0, v4, :cond_1f

    .line 1004
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v1

    .line 1005
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1006
    if-ltz v2, :cond_1d

    .line 1007
    if-gez v1, :cond_1c

    .line 1008
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1009
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1010
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->deleted_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1011
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1013
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_1c
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1014
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->deleted_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1015
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1018
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_1d
    if-gez v1, :cond_1e

    .line 1019
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1020
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailDeletedList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1021
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->deleted_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1022
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1024
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_1e
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1025
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->deleted_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1026
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1033
    .end local v0           #i:I
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_1f
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    if-eqz v4, :cond_23

    .line 1034
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_f
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    array-length v4, v4

    if-ge v0, v4, :cond_23

    .line 1035
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v1

    .line 1036
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1037
    if-ltz v2, :cond_21

    .line 1038
    if-gez v1, :cond_20

    .line 1039
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1040
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1041
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->reloaded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1042
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1044
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_20
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1045
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->reloaded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1046
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 1049
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_21
    if-gez v1, :cond_22

    .line 1050
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1051
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailReloadedList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1052
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->reloaded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1053
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1055
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_22
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1056
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->reloaded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1057
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 1064
    .end local v0           #i:I
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_23
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    if-eqz v4, :cond_27

    .line 1065
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_11
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    array-length v4, v4

    if-ge v0, v4, :cond_27

    .line 1066
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v1

    .line 1067
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1068
    if-ltz v2, :cond_25

    .line 1069
    if-gez v1, :cond_24

    .line 1070
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1071
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1072
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1073
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1075
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_24
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1076
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1077
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 1082
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_25
    if-gez v1, :cond_26

    .line 1083
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1084
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActReplyList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1085
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1086
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1088
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_26
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1089
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1090
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 1097
    .end local v0           #i:I
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_27
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    if-eqz v4, :cond_4

    .line 1098
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_13
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 1099
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Lcom/htc/htcmailwidgets/MailDataManager;->findChangedMailStatus(J)I

    move-result v1

    .line 1100
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1101
    if-ltz v2, :cond_29

    .line 1102
    if-gez v1, :cond_28

    .line 1103
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1104
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1105
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1106
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1108
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_28
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1109
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1110
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 1115
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_29
    if-gez v1, :cond_2a

    .line 1116
    new-instance v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    invoke-direct {v3}, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;-><init>()V

    .line 1117
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mMailActForwardList:[J

    aget-wide v4, v4, v0

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    .line 1118
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1119
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1121
    .end local v3           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_2a
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1122
    .restart local v3       #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 1123
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_14
.end method

.method private static checkTime()V
    .locals 3

    .prologue
    .line 824
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 825
    .local v0, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 826
    iget v1, v0, Landroid/text/format/Time;->hour:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/text/format/Time;->minute:I

    if-nez v1, :cond_0

    .line 827
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->updateTimes()V

    .line 829
    :cond_0
    return-void
.end method

.method public static deleteMail(JLjava/lang/String;I)V
    .locals 2
    .parameter "acc_id"
    .parameter "acc_name"
    .parameter "pos"

    .prologue
    .line 2868
    invoke-static {p0, p1, p2}, Lcom/htc/htcmailwidgets/MailDataManager;->isAccountExist(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2869
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2870
    :try_start_0
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2871
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2872
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailIntent;->sendMailStatusCompletedIntent(Landroid/content/Context;)V

    .line 2873
    monitor-exit v1

    .line 2875
    :cond_0
    return-void

    .line 2873
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "email"

    .prologue
    .line 2669
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 2670
    .local v0, tokens:[Landroid/text/util/Rfc822Token;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 2671
    const/4 v1, 0x0

    .line 2673
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static extractMailData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)Lcom/htc/htcmailwidgets/MailData;
    .locals 21
    .parameter "cursor"
    .parameter "w"
    .parameter "acc_id"
    .parameter "acc_name"

    .prologue
    .line 2276
    new-instance v18, Lcom/htc/htcmailwidgets/MailData;

    invoke-direct/range {v18 .. v18}, Lcom/htc/htcmailwidgets/MailData;-><init>()V

    .line 2279
    .local v18, mail:Lcom/htc/htcmailwidgets/MailData;
    :try_start_0
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_id:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/htcmailwidgets/MailData;->mId:I

    .line 2280
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/htcmailwidgets/MailData;->mPosition:I

    .line 2281
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_internaldate:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v18

    iput-wide v2, v0, Lcom/htc/htcmailwidgets/MailData;->mInternaldate:J

    .line 2282
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_account:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, v18

    iput-wide v2, v0, Lcom/htc/htcmailwidgets/MailData;->mAccountId:J

    .line 2283
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/htc/htcmailwidgets/MailData;->mAccountId:J

    invoke-static {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailUtils;->getAccountProtocol([Lcom/htc/htcmailwidgets/MailUtils$Account;J)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/htcmailwidgets/MailData;->mProtocol:I

    .line 2284
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_from:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    .line 2285
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom_origin:Ljava/lang/String;

    .line 2286
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_internaldate:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v18

    iput-wide v2, v0, Lcom/htc/htcmailwidgets/MailData;->mDate:J

    .line 2287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/htc/htcmailwidgets/MailDataManager;->_col_subjtype:I

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/htcmailwidgets/MailDataManager;->_col_subject:I

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    .line 2288
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 2289
    :cond_0
    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mNoSubject:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    .line 2290
    :cond_1
    move-object/from16 v0, v18

    iget-wide v2, v0, Lcom/htc/htcmailwidgets/MailData;->mInternaldate:J

    invoke-static {v2, v3}, Lcom/htc/htcmailwidgets/MailDataManager;->getDateString(J)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    .line 2291
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_read:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    .line 2292
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_flags:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFlag:I

    .line 2293
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_fromEmail:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    .line 2294
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_messageClassInt:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_c

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/htcmailwidgets/MailData;->mCalendar:I

    .line 2295
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_incAttachment:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_d

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/htcmailwidgets/MailData;->mAttachment:I

    .line 2296
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_mailPreview:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mPreview:Ljava/lang/String;

    .line 2298
    move-object/from16 v0, v18

    iget v2, v0, Lcom/htc/htcmailwidgets/MailData;->mAttachment:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2299
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/htc/htcmailwidgets/MailData;->mId:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailUtils;->getAttachmentsResourceId(Landroid/content/Context;J)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/htcmailwidgets/MailData;->mAttachmentIcon:I

    .line 2302
    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p2, v2

    if-nez v2, :cond_e

    .line 2303
    move-object/from16 v0, v18

    iget-wide v2, v0, Lcom/htc/htcmailwidgets/MailData;->mAccountId:J

    move-object/from16 v0, p4

    invoke-static {v2, v3, v0}, Lcom/htc/htcmailwidgets/MailDataManager;->getAccountName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mAccountName:Ljava/lang/String;

    .line 2307
    :goto_3
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_importance:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/htcmailwidgets/MailData;->mImportance:I

    .line 2308
    sget v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_mailAct:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/htcmailwidgets/MailData;->mMailAct:I

    .line 2310
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    .line 2311
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/htc/htcmailwidgets/MailData;->mAccountId:J

    invoke-static {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailUtils;->getAccountColorIndex([Lcom/htc/htcmailwidgets/MailUtils$Account;J)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/htcmailwidgets/MailData;->mColorIdx:I

    .line 2312
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, v18

    iget v3, v0, Lcom/htc/htcmailwidgets/MailData;->mColorIdx:I

    invoke-static {v3}, Lcom/htc/htcmailwidgets/MailUtils;->getColorResourceId(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 2318
    .local v19, thumbnai:Landroid/graphics/Bitmap;
    :try_start_1
    sget v20, Lcom/htc/htcmailwidgets/LocalData;->mUnreadWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2324
    .local v20, width:I
    :goto_4
    :try_start_2
    sget v14, Lcom/htc/htcmailwidgets/LocalData;->mUnreadHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2329
    .local v14, height:I
    :goto_5
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v14, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mColorLabel:Landroid/graphics/Bitmap;

    .line 2332
    .end local v14           #height:I
    .end local v19           #thumbnai:Landroid/graphics/Bitmap;
    .end local v20           #width:I
    :cond_3
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailDataManager;->idExistinChangeContactList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 2333
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/htcmailwidgets/MailUtils;->getContactFromEmail(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    .line 2337
    :goto_6
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 2338
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/htc/htcmailwidgets/MailData;->mId:I

    invoke-static {v2, v3}, Lcom/htc/htcmailwidgets/MailUtils;->getMailBody(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    .line 2340
    :cond_4
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 2341
    const-string v2, ""

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    .line 2348
    :goto_7
    const/16 v16, 0x0

    .line 2350
    .local v16, info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    if-ltz v2, :cond_1b

    .line 2351
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailDataManager;->idExistinChangeContactListByEmail(Ljava/lang/String;)I

    move-result v15

    .line 2353
    .local v15, index_:I
    if-gez v15, :cond_19

    .line 2354
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailUtils;->getSpecifiedContactInfo(Landroid/content/Context;J)Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;

    move-result-object v16

    .line 2356
    if-eqz v16, :cond_a

    .line 2357
    const/4 v12, 0x0

    .line 2358
    .local v12, bNoDisplayName:Z
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2359
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2360
    const/4 v12, 0x1

    .line 2362
    :cond_5
    if-nez v12, :cond_6

    .line 2363
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    .line 2365
    :cond_6
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    if-nez v2, :cond_12

    .line 2366
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 2367
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    .line 2375
    :cond_7
    :goto_8
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-nez v2, :cond_8

    .line 2376
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    .line 2378
    :cond_8
    if-gez v15, :cond_16

    .line 2379
    new-instance v17, Lcom/htc/htcmailwidgets/ContactData;

    invoke-direct/range {v17 .. v17}, Lcom/htc/htcmailwidgets/ContactData;-><init>()V

    .line 2380
    .local v17, info_:Lcom/htc/htcmailwidgets/ContactData;
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->pid:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    .line 2381
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    .line 2383
    if-nez v12, :cond_14

    .line 2384
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    .line 2388
    :goto_9
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    .line 2389
    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    .line 2390
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    .line 2394
    :goto_a
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2411
    .end local v17           #info_:Lcom/htc/htcmailwidgets/ContactData;
    :cond_9
    :goto_b
    const/16 v16, 0x0

    .line 2444
    .end local v12           #bNoDisplayName:Z
    .end local v15           #index_:I
    .end local v16           #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    :cond_a
    :goto_c
    new-instance v2, Lcom/htc/htcmailwidgets/MailDataManager$ReplyClickListener;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/htc/htcmailwidgets/MailData;->mId:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager$ReplyClickListener;-><init>(J)V

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mReplyClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 2445
    new-instance v2, Lcom/htc/htcmailwidgets/MailDataManager$PhotoHitboxListener;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/htc/htcmailwidgets/MailData;->mId:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager$PhotoHitboxListener;-><init>(J)V

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mPhotoHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    .line 2446
    new-instance v2, Lcom/htc/htcmailwidgets/MailDataManager$FromHitboxListener;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/htc/htcmailwidgets/MailData;->mId:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager$FromHitboxListener;-><init>(J)V

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    .line 2447
    new-instance v2, Lcom/htc/htcmailwidgets/MailDataManager$PagePlaybackInfoListener;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/htc/htcmailwidgets/MailData;->mId:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager$PagePlaybackInfoListener;-><init>(J)V

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mPagePlaybackInfoListener:Lcom/htc/fusion/fx/MessageListener;

    .line 2448
    new-instance v2, Lcom/htc/htcmailwidgets/MailDataManager$DeleteClickListener;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/htc/htcmailwidgets/MailData;->mId:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager$DeleteClickListener;-><init>(J)V

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mDeleteClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 2450
    return-object v18

    .line 2291
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2294
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2295
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2305
    :cond_e
    :try_start_4
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/htc/htcmailwidgets/MailData;->mAccountName:Ljava/lang/String;

    goto/16 :goto_3

    .line 2440
    :catch_0
    move-exception v2

    goto :goto_c

    .line 2319
    .restart local v19       #thumbnai:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v13

    .line 2320
    .local v13, e:Ljava/lang/Exception;
    sget v20, Lcom/htc/htcmailwidgets/MailDataManager;->MIN_LABEL_WIDTH:I

    .restart local v20       #width:I
    goto/16 :goto_4

    .line 2325
    .end local v13           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v13

    .line 2326
    .restart local v13       #e:Ljava/lang/Exception;
    sget v14, Lcom/htc/htcmailwidgets/MailDataManager;->MIN_LABEL_HEIGHT:I

    .restart local v14       #height:I
    goto/16 :goto_5

    .line 2335
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #height:I
    .end local v19           #thumbnai:Landroid/graphics/Bitmap;
    .end local v20           #width:I
    :cond_f
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailDataManager;->getContactIDFromEmail(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    goto/16 :goto_6

    .line 2343
    :cond_10
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mPreview:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    .line 2344
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mPreview:Ljava/lang/String;

    .line 2345
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/htc/htcmailwidgets/MailData;->bHasMailBody:Z

    goto/16 :goto_7

    .line 2369
    .restart local v12       #bNoDisplayName:Z
    .restart local v15       #index_:I
    .restart local v16       #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    :cond_12
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    if-eqz v2, :cond_13

    .line 2370
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    int-to-long v3, v3

    sget v5, Lcom/htc/htcmailwidgets/MailDataManager;->mPhotoSizeX:I

    sget v6, Lcom/htc/htcmailwidgets/MailDataManager;->mPhotoSizeY:I

    sget-object v7, Lcom/htc/htcmailwidgets/MailDataManager;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->socialtype:J

    invoke-static/range {v2 .. v11}, Lcom/htc/htcmailwidgets/MailUtils;->getContactPhoto(Landroid/content/Context;JIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;[BJ)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 2373
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 2386
    .restart local v17       #info_:Lcom/htc/htcmailwidgets/ContactData;
    :cond_14
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    goto/16 :goto_9

    .line 2392
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto/16 :goto_a

    .line 2396
    .end local v17           #info_:Lcom/htc/htcmailwidgets/ContactData;
    :cond_16
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v15, :cond_9

    .line 2397
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/htcmailwidgets/ContactData;

    .line 2398
    .restart local v17       #info_:Lcom/htc/htcmailwidgets/ContactData;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    .line 2399
    if-nez v12, :cond_17

    .line 2400
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    .line 2403
    :goto_d
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    .line 2404
    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_18

    .line 2405
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    .line 2408
    :goto_e
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 2402
    :cond_17
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    goto :goto_d

    .line 2407
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto :goto_e

    .line 2414
    .end local v12           #bNoDisplayName:Z
    .end local v17           #info_:Lcom/htc/htcmailwidgets/ContactData;
    :cond_19
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 2415
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2416
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    .line 2418
    :cond_1a
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    goto/16 :goto_c

    .line 2423
    .end local v15           #index_:I
    :cond_1b
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 2424
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailDataManager;->idExistinChangeContactListByEmail(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_a

    .line 2425
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-nez v2, :cond_1c

    .line 2426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    .line 2428
    :cond_1c
    new-instance v17, Lcom/htc/htcmailwidgets/ContactData;

    invoke-direct/range {v17 .. v17}, Lcom/htc/htcmailwidgets/ContactData;-><init>()V

    .line 2429
    .restart local v17       #info_:Lcom/htc/htcmailwidgets/ContactData;
    const-wide/16 v2, -0x1

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    .line 2430
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    .line 2431
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    .line 2432
    const-wide/16 v2, -0x1

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    .line 2433
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    .line 2435
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_c
.end method

.method public static extractMailData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 15
    .parameter "cursor"
    .parameter "w"
    .parameter "acc_id"
    .parameter "acc_name"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/htc/htcmailwidgets/Components$WidgetInfo;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2061
    .local p5, mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    .local p6, mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez p0, :cond_1

    .line 2273
    :cond_0
    :goto_0
    return-void

    .line 2066
    :cond_1
    const/4 v10, 0x0

    .line 2067
    .local v10, position:I
    const/4 v2, 0x0

    .line 2071
    .local v2, cursor_size:I
    :try_start_0
    invoke-static {p0}, Lcom/htc/htcmailwidgets/MailDataManager;->getColumnIndex(Landroid/database/Cursor;)Z

    .line 2073
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2075
    if-nez v2, :cond_7

    .line 2238
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_2

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_2
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_3

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_4

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_4
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_5

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_6

    .line 2256
    :cond_5
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_6
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2078
    :cond_7
    if-eqz p5, :cond_e

    .line 2079
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-ne v2, v11, :cond_d

    .line 2238
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_8

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_8
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_9

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_9
    if-eqz p0, :cond_a

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_a

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_a
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_b

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_c

    .line 2256
    :cond_b
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_c
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2082
    :cond_d
    :try_start_2
    sget v10, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2085
    :cond_e
    const/4 v11, 0x1

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2087
    if-nez p5, :cond_16

    .line 2088
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    .local v9, mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    move-object/from16 p5, v9

    .line 2098
    .end local v9           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    :cond_f
    :goto_2
    if-nez p6, :cond_23

    .line 2099
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v8, mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 p6, v8

    .line 2110
    .end local v8           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_10
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v11

    if-eqz v11, :cond_25

    .line 2238
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_11

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_11
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_12

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_12
    if-eqz p0, :cond_13

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_13

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_13
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_14

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_15

    .line 2256
    :cond_14
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_15
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2090
    :cond_16
    :try_start_3
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v11, v2, :cond_1d

    .line 2091
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 2231
    :catch_0
    move-exception v3

    .line 2232
    .local v3, ex:Ljava/lang/Exception;
    if-eqz p0, :cond_17

    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_17

    .line 2233
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2235
    :cond_17
    const/4 p0, 0x0

    .line 2238
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_18

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_18
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_19

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_19
    if-eqz p0, :cond_1a

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_1a

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_1a
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_1b

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_1c

    .line 2256
    :cond_1b
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_1c
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2092
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_1d
    :try_start_5
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_f

    .line 2093
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->clear()V

    .line 2094
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->trimToSize()V

    .line 2095
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 2238
    :catchall_0
    move-exception v11

    const/4 v12, 0x0

    sput-boolean v12, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v12, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v12, :cond_1e

    .line 2241
    const/4 v12, 0x0

    sput-boolean v12, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_1e
    sget v12, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v12, v2, :cond_1f

    .line 2244
    const/4 v12, 0x0

    sput v12, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_1f
    if-eqz p0, :cond_20

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_20

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_20
    const/4 p0, 0x0

    .line 2252
    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v13, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v12, v13, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gez v12, :cond_21

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ltz v12, :cond_22

    .line 2256
    :cond_21
    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v12, v0, v1, v13}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_22
    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "update mail in item:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    throw v11

    .line 2101
    :cond_23
    :try_start_6
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v11, v2, :cond_24

    .line 2102
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto/16 :goto_3

    .line 2103
    :cond_24
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_10

    .line 2104
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->clear()V

    .line 2105
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->trimToSize()V

    .line 2106
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto/16 :goto_3

    .line 2112
    :cond_25
    if-nez v10, :cond_2c

    .line 2113
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2119
    :goto_4
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    if-nez v11, :cond_2d

    .line 2120
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    .line 2127
    :goto_5
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    if-nez v11, :cond_2e

    .line 2128
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    .line 2135
    :goto_6
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-eqz v11, :cond_26

    .line 2136
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    .line 2137
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    .line 2141
    :cond_26
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result v11

    if-nez v11, :cond_2f

    .line 2238
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_27

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_27
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_28

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_28
    if-eqz p0, :cond_29

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_29

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_29
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_2a

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_2b

    .line 2256
    :cond_2a
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_2b
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2115
    :cond_2c
    :try_start_7
    invoke-interface {p0, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_4

    .line 2122
    :cond_2d
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2123
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2124
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto/16 :goto_5

    .line 2130
    :cond_2e
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2131
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2132
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto/16 :goto_6

    .line 2144
    :cond_2f
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v11, :cond_35

    .line 2238
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_30

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_30
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_31

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_31
    if-eqz p0, :cond_32

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_32

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_32
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_33

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_34

    .line 2256
    :cond_33
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_34
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2147
    :cond_35
    :try_start_8
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->_col_id:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-gez v11, :cond_3b

    .line 2238
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_36

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_36
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_37

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_37
    if-eqz p0, :cond_38

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_38

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_38
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_39

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_3a

    .line 2256
    :cond_39
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_3a
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2150
    :cond_3b
    :try_start_9
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result v11

    if-eqz v11, :cond_41

    .line 2238
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_3c

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_3c
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_3d

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_3d
    if-eqz p0, :cond_3e

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_3e

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_3e
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_3f

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_40

    .line 2256
    :cond_3f
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_40
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2153
    :cond_41
    :try_start_a
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetResume:Z

    if-eqz v11, :cond_42

    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetOrientation:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v11, :cond_48

    .line 2238
    :cond_42
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_43

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_43
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_44

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_44
    if-eqz p0, :cond_45

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_45

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_45
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_46

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_47

    .line 2256
    :cond_46
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_47
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2156
    :cond_48
    :try_start_b
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetDeleteMail:Z

    if-eqz v11, :cond_4e

    .line 2157
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 2238
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_49

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_49
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_4a

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_4a
    if-eqz p0, :cond_4b

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_4b

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_4b
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_4c

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_4d

    .line 2256
    :cond_4c
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_4d
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2162
    :cond_4e
    :try_start_c
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_FIRST_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_4f

    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_SECOND_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-ne v11, v12, :cond_60

    .line 2163
    :cond_4f
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    move-result v11

    if-ne v2, v11, :cond_55

    .line 2238
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_50

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_50
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_51

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_51
    if-eqz p0, :cond_52

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_52

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_52
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_53

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_54

    .line 2256
    :cond_53
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_54
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2182
    :cond_55
    :try_start_d
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->_col_id:I

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v4, v11

    .line 2183
    .local v4, id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5f

    .line 2184
    invoke-static/range {p0 .. p4}, Lcom/htc/htcmailwidgets/MailDataManager;->extractMailData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v7

    .line 2185
    .local v7, mail:Lcom/htc/htcmailwidgets/MailData;
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2216
    .end local v4           #id:J
    .end local v7           #mail:Lcom/htc/htcmailwidgets/MailData;
    :cond_56
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 2217
    sput v10, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2220
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mUpdateUIbyItems:I

    rem-int v11, v10, v11

    if-nez v11, :cond_58

    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_REQUERY_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_58

    .line 2222
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_57

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_58

    :cond_57
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetDeleteMail:Z

    if-nez v11, :cond_58

    .line 2224
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 p5, v0

    .line 2225
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 p6, v0

    .line 2226
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2227
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2230
    :cond_58
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    move-result v11

    if-eqz v11, :cond_59

    if-ne v10, v2, :cond_26

    .line 2238
    :cond_59
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_5a

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_5a
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_5b

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_5b
    if-eqz p0, :cond_5c

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_5c

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_5c
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_5d

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_5e

    .line 2256
    :cond_5d
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_5e
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2188
    .restart local v4       #id:J
    :cond_5f
    :try_start_e
    move-object/from16 v0, p6

    invoke-static {v0, v4, v5}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailIDIndex(Ljava/util/ArrayList;J)I

    move-result v6

    .line 2189
    .local v6, index_:I
    if-ltz v6, :cond_56

    .line 2190
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/htcmailwidgets/MailData;

    .line 2191
    .restart local v7       #mail:Lcom/htc/htcmailwidgets/MailData;
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2192
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 2195
    .end local v4           #id:J
    .end local v6           #index_:I
    .end local v7           #mail:Lcom/htc/htcmailwidgets/MailData;
    :cond_60
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_REQUERY_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-ne v11, v12, :cond_62

    .line 2196
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eq v2, v11, :cond_56

    .line 2197
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->_col_id:I

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v4, v11

    .line 2198
    .restart local v4       #id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_61

    .line 2199
    invoke-static/range {p0 .. p4}, Lcom/htc/htcmailwidgets/MailDataManager;->extractMailData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v7

    .line 2200
    .restart local v7       #mail:Lcom/htc/htcmailwidgets/MailData;
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2201
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 2203
    .end local v7           #mail:Lcom/htc/htcmailwidgets/MailData;
    :cond_61
    move-object/from16 v0, p6

    invoke-static {v0, v4, v5}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailIDIndex(Ljava/util/ArrayList;J)I

    move-result v6

    .line 2204
    .restart local v6       #index_:I
    if-ltz v6, :cond_56

    .line 2205
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/htcmailwidgets/MailData;

    .line 2206
    .restart local v7       #mail:Lcom/htc/htcmailwidgets/MailData;
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2207
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 2211
    .end local v4           #id:J
    .end local v6           #index_:I
    .end local v7           #mail:Lcom/htc/htcmailwidgets/MailData;
    :cond_62
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    if-ne v11, v12, :cond_56

    .line 2238
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    .line 2240
    sget-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    if-eqz v11, :cond_63

    .line 2241
    const/4 v11, 0x0

    sput-boolean v11, Lcom/htc/htcmailwidgets/MailDataManager;->mbQueryStateChanged:Z

    .line 2243
    :cond_63
    sget v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    if-ne v11, v2, :cond_64

    .line 2244
    const/4 v11, 0x0

    sput v11, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 2246
    :cond_64
    if-eqz p0, :cond_65

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_65

    .line 2247
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2250
    :cond_65
    const/4 p0, 0x0

    .line 2252
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v11, v12, :cond_0

    .line 2255
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gez v11, :cond_66

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ltz v11, :cond_67

    .line 2256
    :cond_66
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p5

    .end local p5           #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    check-cast p5, Ljava/util/ArrayList;

    .line 2257
    .restart local p5       #mailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p6

    .end local p6           #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p6, Ljava/util/ArrayList;

    .line 2258
    .restart local p6       #mailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2260
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2261
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 2262
    invoke-static/range {p2 .. p6}, Lcom/htc/htcmailwidgets/MailDataManager;->updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2263
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1, v12}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 2268
    :cond_67
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 2269
    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update mail in item:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1
.end method

.method private static findChangedMailStatus(J)I
    .locals 4
    .parameter "index"

    .prologue
    .line 1464
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1465
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1466
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1467
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    iget-wide v2, v2, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_0

    .line 1471
    .end local v0           #i:I
    .end local v1           #size:I
    :goto_1
    return v0

    .line 1466
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1471
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getAccountMailSize(JLjava/lang/String;)I
    .locals 2
    .parameter "acc_id"
    .parameter "acc_name"

    .prologue
    .line 2878
    const/4 v0, 0x0

    .line 2879
    .local v0, size:I
    invoke-static {p0, p1, p2}, Lcom/htc/htcmailwidgets/MailDataManager;->isAccountExist(JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2880
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2882
    :cond_0
    return v0
.end method

.method public static getAccountMapUsedCount()I
    .locals 5

    .prologue
    .line 623
    const/4 v1, 0x0

    .line 625
    .local v1, count:I
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 626
    const/4 v1, 0x0

    .line 637
    :goto_0
    return v1

    .line 628
    :cond_0
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 629
    :try_start_0
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 630
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    .line 631
    .local v0, a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    if-eqz v0, :cond_1

    .line 632
    iget v3, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->user_counts_:I

    add-int/2addr v1, v3

    goto :goto_1

    .line 634
    .end local v0           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static getAccountName(J)Ljava/lang/String;
    .locals 5
    .parameter "accountid"

    .prologue
    .line 2509
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-nez v3, :cond_0

    .line 2510
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v3

    sput-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 2512
    :cond_0
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v2, v3

    .line 2513
    .local v2, size:I
    const-string v0, ""

    .line 2515
    .local v0, accname:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2516
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v3, v3, v1

    iget-wide v3, v3, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    cmp-long v3, v3, p0

    if-nez v3, :cond_2

    .line 2517
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v3, v3, v1

    iget-object v0, v3, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    .line 2522
    :cond_1
    return-object v0

    .line 2515
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getAccountName(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "accountid"
    .parameter "acc_name"

    .prologue
    .line 2493
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-nez v2, :cond_0

    .line 2494
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v2

    sput-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 2496
    :cond_0
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v1, v2

    .line 2499
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2500
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_2

    .line 2501
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v2, v2, v0

    iget-object p2, v2, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    .line 2505
    .end local p2
    :cond_1
    return-object p2

    .line 2499
    .restart local p2
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static getColumnIndex(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 2034
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2056
    :cond_0
    :goto_0
    return v1

    .line 2037
    :cond_1
    :try_start_0
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_id:I

    .line 2038
    const-string v2, "_subject"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_subject:I

    .line 2039
    const-string v2, "_internaldate"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_internaldate:I

    .line 2040
    const-string v2, "_from"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_from:I

    .line 2041
    const-string v2, "_fromEmail"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_fromEmail:I

    .line 2042
    const-string v2, "_flags"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_flags:I

    .line 2043
    const-string v2, "_read"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_read:I

    .line 2044
    const-string v2, "_account"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_account:I

    .line 2045
    const-string v2, "_incAttachment"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_incAttachment:I

    .line 2046
    const-string v2, "_importance"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_importance:I

    .line 2047
    const-string v2, "_mailAct"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_mailAct:I

    .line 2048
    const-string v2, "_messageClassInt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_messageClassInt:I

    .line 2049
    const-string v2, "_subjtype"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_subjtype:I

    .line 2050
    const-string v2, "_preview"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->_col_mailPreview:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    const/4 v1, 0x1

    goto :goto_0

    .line 2053
    :catch_0
    move-exception v0

    .line 2054
    .local v0, ex:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Exception: getColumnIndex..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getContactArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/ContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getContactIDFromEmail(Ljava/lang/String;)J
    .locals 9
    .parameter "email"

    .prologue
    const-wide/16 v3, -0x1

    .line 2588
    if-nez p0, :cond_0

    move-wide v2, v3

    .line 2605
    :goto_0
    return-wide v2

    .line 2591
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move-wide v2, v3

    .line 2592
    goto :goto_0

    .line 2594
    :cond_1
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    const/4 v1, -0x1

    .line 2596
    .local v1, size:I
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 2597
    :try_start_0
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2598
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-wide v5, v2, Lcom/htc/htcmailwidgets/ContactData;->pid_:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gez v2, :cond_4

    .line 2596
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2594
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_3
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1

    .line 2600
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_4
    :try_start_1
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-wide v2, v2, Lcom/htc/htcmailwidgets/ContactData;->pid_:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2603
    :catch_0
    move-exception v2

    :cond_5
    move-wide v2, v3

    .line 2605
    goto :goto_0
.end method

.method private static getContactIndex(Ljava/util/ArrayList;Ljava/lang/Long;)I
    .locals 8
    .parameter
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/ContactData;",
            ">;",
            "Ljava/lang/Long;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, mContactAry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/ContactData;>;"
    const/4 v3, -0x1

    .line 2609
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    move v0, v3

    .line 2622
    :cond_0
    :goto_0
    return v0

    .line 2612
    :cond_1
    if-nez p0, :cond_2

    move v0, v3

    .line 2613
    goto :goto_0

    .line 2615
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2617
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 2618
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-wide v6, v2, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    .line 2617
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    .line 2622
    goto :goto_0
.end method

.method private static getDateString(J)Ljava/lang/CharSequence;
    .locals 23
    .parameter "date"

    .prologue
    .line 2454
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 2457
    .local v17, today:Ljava/util/Calendar;
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mCalendar:Ljava/util/Calendar;

    if-nez v4, :cond_0

    .line 2458
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    sput-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mCalendar:Ljava/util/Calendar;

    .line 2460
    :cond_0
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mCalendar:Ljava/util/Calendar;

    move-wide/from16 v0, p0

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2461
    move-wide/from16 v15, p0

    .line 2462
    .local v15, millis:J
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 2463
    .local v2, nowTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2464
    .local v10, currMillis:J
    invoke-virtual {v2, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 2465
    iget v0, v2, Landroid/text/format/Time;->weekDay:I

    move/from16 v20, v0

    .line 2466
    .local v20, weekday:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    iget v7, v2, Landroid/text/format/Time;->month:I

    iget v8, v2, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 2467
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    .line 2468
    .local v13, lToday:J
    const-wide/32 v4, 0x5265c00

    sub-long v21, v13, v4

    .line 2469
    .local v21, yesterday:J
    const-wide/32 v4, 0x5265c00

    div-long v18, v10, v4

    .line 2470
    .local v18, todayValues:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2471
    .local v3, yearStart:Ljava/util/Calendar;
    iget v4, v2, Landroid/text/format/Time;->year:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2473
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2474
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2489
    :goto_0
    return-object v4

    .line 2475
    :cond_1
    cmp-long v4, v15, v13

    if-gez v4, :cond_2

    cmp-long v4, v15, v21

    if-ltz v4, :cond_2

    .line 2476
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    const v5, 0x7f080011

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 2477
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

    .line 2478
    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2479
    iget v4, v2, Landroid/text/format/Time;->weekDay:I

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2480
    :cond_3
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v15, v4

    if-ltz v4, :cond_4

    .line 2481
    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2483
    const-string v12, "MMM dd"

    .line 2484
    .local v12, currentFormat:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v12, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 2486
    .end local v12           #currentFormat:Ljava/lang/CharSequence;
    :cond_4
    const-string v12, "MM/dd/yy"

    .line 2489
    .restart local v12       #currentFormat:Ljava/lang/CharSequence;
    move-wide/from16 v0, p0

    invoke-static {v12, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;ILcom/htc/htcmailwidgets/Components$OS_VERSION;I)Lcom/htc/htcmailwidgets/MailDataManager;
    .locals 3
    .parameter "context"
    .parameter "resoultion"
    .parameter "os"
    .parameter "orientation"

    .prologue
    .line 343
    const-class v1, Lcom/htc/htcmailwidgets/MailDataManager;

    monitor-enter v1

    .line 344
    :try_start_0
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/htcmailwidgets/MailDataManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    .line 346
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 347
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    .line 349
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 352
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    .line 353
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 354
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    sput-object p0, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    .line 359
    :cond_1
    sput p1, Lcom/htc/htcmailwidgets/MailDataManager;->mResolution:I

    .line 360
    sput-object p2, Lcom/htc/htcmailwidgets/MailDataManager;->mOSversion:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    .line 361
    sput p3, Lcom/htc/htcmailwidgets/MailDataManager;->mOrientation:I

    .line 363
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->init()V

    .line 365
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    return-object v0

    .line 349
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getMailDataList(JLjava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "acc_id"
    .parameter "acc_name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 584
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    move-object v1, v2

    .line 596
    :goto_0
    return-object v1

    .line 587
    :cond_0
    const/4 v0, 0x0

    .line 588
    .local v0, bMatched:Z
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iget-wide v3, v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->account_id_:J

    cmp-long v1, v3, p0

    if-nez v1, :cond_1

    .line 590
    const/4 v0, 0x1

    .line 593
    :cond_1
    if-eqz v0, :cond_2

    .line 594
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 596
    goto :goto_0
.end method

.method private static getMailIDIndex(Ljava/util/ArrayList;J)I
    .locals 6
    .parameter
    .parameter "mail_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 2627
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, -0x1

    .line 2628
    .local v4, index:I
    if-eqz p0, :cond_3

    .line 2629
    const/4 v4, 0x0

    .line 2631
    const/4 v0, 0x0

    .line 2632
    .local v0, bFind:Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2633
    .local v2, id:J
    cmp-long v5, p1, v2

    if-nez v5, :cond_1

    .line 2634
    const/4 v0, 0x1

    .line 2640
    .end local v2           #id:J
    :cond_0
    if-nez v0, :cond_2

    .line 2641
    const/4 v5, -0x1

    .line 2645
    .end local v0           #bFind:Z
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return v5

    .line 2637
    .restart local v0       #bFind:Z
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #id:J
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2           #id:J
    :cond_2
    move v5, v4

    .line 2643
    goto :goto_1

    .end local v0           #bFind:Z
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    move v5, v4

    .line 2645
    goto :goto_1
.end method

.method public static getMailIDList(JLjava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "acc_id"
    .parameter "acc_name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 603
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    move-object v1, v2

    .line 615
    :goto_0
    return-object v1

    .line 606
    :cond_0
    const/4 v0, 0x0

    .line 607
    .local v0, bMatched:Z
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iget-wide v3, v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->account_id_:J

    cmp-long v1, v3, p0

    if-nez v1, :cond_1

    .line 609
    const/4 v0, 0x1

    .line 612
    :cond_1
    if-eqz v0, :cond_2

    .line 613
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 615
    goto :goto_0
.end method

.method public static getMailIndex(JLjava/lang/String;J)I
    .locals 6
    .parameter "acc_id"
    .parameter "acc_name"
    .parameter "mail_id"

    .prologue
    .line 2649
    const/4 v2, -0x1

    .line 2650
    .local v2, index:I
    const/4 v0, 0x0

    .line 2651
    .local v0, bFind:Z
    invoke-static {p0, p1, p2}, Lcom/htc/htcmailwidgets/MailDataManager;->isAccountExist(JLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2652
    const/4 v2, 0x0

    .line 2653
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iget-object v4, v4, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailData;

    .line 2654
    .local v3, m:Lcom/htc/htcmailwidgets/MailData;
    iget v4, v3, Lcom/htc/htcmailwidgets/MailData;->mId:I

    long-to-int v5, p3

    if-ne v4, v5, :cond_2

    .line 2655
    const/4 v0, 0x1

    .line 2662
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #m:Lcom/htc/htcmailwidgets/MailData;
    :cond_0
    if-nez v0, :cond_1

    .line 2663
    const/4 v2, -0x1

    .line 2665
    .end local v2           #index:I
    :cond_1
    return v2

    .line 2658
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #index:I
    .restart local v3       #m:Lcom/htc/htcmailwidgets/MailData;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static idExistinChangeContactList(J)I
    .locals 6
    .parameter "pid"

    .prologue
    const/4 v3, -0x1

    .line 2526
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move v1, v3

    .line 2527
    .local v1, size:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 2528
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-wide v4, v2, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    cmp-long v2, v4, p0

    if-nez v2, :cond_1

    .line 2532
    .end local v0           #i:I
    :goto_2
    return v0

    .line 2526
    .end local v1           #size:I
    :cond_0
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 2527
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    .line 2532
    goto :goto_2
.end method

.method private static idExistinChangeContactList(Ljava/lang/String;)Z
    .locals 4
    .parameter "email"

    .prologue
    const/4 v3, 0x0

    .line 2536
    if-nez p0, :cond_0

    move v2, v3

    .line 2554
    :goto_0
    return v2

    .line 2539
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 2540
    goto :goto_0

    .line 2543
    :cond_1
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    const/4 v1, -0x1

    .line 2545
    .local v1, size:I
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 2546
    :try_start_0
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_4

    .line 2545
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2543
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_3
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1

    .line 2548
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_4
    :try_start_1
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 2549
    const/4 v2, 0x1

    goto :goto_0

    .line 2552
    :catch_0
    move-exception v2

    :cond_5
    move v2, v3

    .line 2554
    goto :goto_0
.end method

.method private static idExistinChangeContactListByEmail(Ljava/lang/String;)I
    .locals 4
    .parameter "email"

    .prologue
    const/4 v3, -0x1

    .line 2558
    if-nez p0, :cond_1

    .line 2572
    :cond_0
    :goto_0
    return v3

    .line 2561
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2564
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    move v1, v3

    .line 2565
    .local v1, size:I
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_0

    .line 2566
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 2565
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2564
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_3
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1

    .line 2568
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_4
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v0

    .line 2569
    goto :goto_0
.end method

.method private static idExistinChangeContactListByName(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, -0x1

    .line 2576
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move v1, v3

    .line 2577
    .local v1, size:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 2578
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 2577
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2576
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 2580
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_2
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2584
    .end local v0           #i:I
    :goto_2
    return v0

    .restart local v0       #i:I
    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method private static init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 372
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailUtils;->getFacebookIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    .line 373
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mOSversion:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget v3, Lcom/htc/htcmailwidgets/MailDataManager;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/htc/htcmailwidgets/Components;->getWidgetPhotoSizeX(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->mPhotoSizeX:I

    .line 374
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mOSversion:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget v3, Lcom/htc/htcmailwidgets/MailDataManager;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/htc/htcmailwidgets/Components;->getWidgetPhotoSizeX(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)I

    move-result v2

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->mPhotoSizeY:I

    .line 375
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v2

    sput-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 377
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mLocalData:Lcom/htc/htcmailwidgets/LocalData;

    if-nez v2, :cond_0

    .line 378
    new-instance v2, Lcom/htc/htcmailwidgets/LocalData;

    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/htcmailwidgets/LocalData;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mLocalData:Lcom/htc/htcmailwidgets/LocalData;

    .line 379
    :cond_0
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mLocalData:Lcom/htc/htcmailwidgets/LocalData;

    invoke-virtual {v2}, Lcom/htc/htcmailwidgets/LocalData;->load()V

    .line 381
    sget v2, Lcom/htc/htcmailwidgets/LocalData;->mUpdateUIbyItems:I

    sput v2, Lcom/htc/htcmailwidgets/MailDataManager;->mUpdateUIbyItems:I

    .line 383
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetResume:Z

    .line 384
    sput-boolean v5, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetDeleteMail:Z

    .line 385
    sput-boolean v5, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetOrientation:Z

    .line 387
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->initReceiver()V

    .line 389
    sget-boolean v2, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataThreadisRunning:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    if-nez v2, :cond_1

    .line 390
    new-instance v2, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    invoke-direct {v2}, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;-><init>()V

    sput-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    .line 391
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 392
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 395
    :cond_1
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-nez v2, :cond_2

    .line 396
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MailDataManager_DataHandler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 397
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 398
    new-instance v2, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    .line 400
    .end local v1           #thread:Landroid/os/HandlerThread;
    :cond_2
    return-void
.end method

.method private static initReceiver()V
    .locals 3

    .prologue
    .line 709
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 710
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.android.mail.intent.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    const-string v1, "com.htc.htcmailwidgets.timechanged_completed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 714
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 717
    new-instance v1, Lcom/htc/htcmailwidgets/MailDataManager$1;

    invoke-direct {v1}, Lcom/htc/htcmailwidgets/MailDataManager$1;-><init>()V

    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataReceiver:Landroid/content/BroadcastReceiver;

    .line 819
    :cond_0
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 820
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->me:Lcom/htc/htcmailwidgets/MailDataManager;

    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 821
    :cond_1
    return-void
.end method

.method public static isAccountExist(JLjava/lang/String;)Z
    .locals 3
    .parameter "acc_id"
    .parameter "acc_name"

    .prologue
    .line 567
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 568
    const/4 v0, 0x0

    .line 576
    :cond_0
    :goto_0
    return v0

    .line 570
    :cond_1
    const/4 v0, 0x0

    .line 571
    .local v0, bMatched:Z
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iget-wide v1, v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->account_id_:J

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    .line 573
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static removeMailCallbackListener(I)V
    .locals 2
    .parameter "widget_id"

    .prologue
    .line 2935
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2936
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2937
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2939
    :cond_0
    return-void
.end method

.method public static resetMailCallbackListener(I)V
    .locals 2
    .parameter "widget_id"

    .prologue
    .line 2928
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2929
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2930
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/IMailCallbackListener;

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListener:Lcom/htc/htcmailwidgets/IMailCallbackListener;

    .line 2932
    :cond_0
    return-void
.end method

.method public static setContactArray(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/ContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/ContactData;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    .line 424
    return-void
.end method

.method public static setMailCallbackListener(Lcom/htc/htcmailwidgets/IMailCallbackListener;I)V
    .locals 2
    .parameter "listener"
    .parameter "widget_id"

    .prologue
    .line 2918
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2919
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    .line 2921
    :cond_0
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 2922
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2923
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2925
    :cond_1
    return-void
.end method

.method public static updateAccountMap(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "accountId"
    .parameter "accountName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p3, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    .local p4, id:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p1, p2}, Lcom/htc/htcmailwidgets/MailDataManager;->isAccountExist(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 475
    :try_start_0
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    invoke-virtual {v0, p3, p4}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->update(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 476
    monitor-exit v1

    .line 478
    :cond_0
    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static updateContactStatus()V
    .locals 19

    .prologue
    .line 1625
    const/16 v16, -0x1

    .line 1630
    .local v16, index:I
    :try_start_0
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    .line 1631
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_14

    .line 1633
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager;->idExistinChangeContactList(J)I

    move-result v16

    .line 1635
    if-gez v16, :cond_c

    .line 1636
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1637
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    .line 1639
    :cond_0
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailUtils;->getSpecifiedContactInfo(Landroid/content/Context;J)Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;

    move-result-object v17

    .line 1641
    .local v17, info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1631
    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1644
    :cond_2
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1647
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailDataManager;->idExistinChangeContactListByName(Ljava/lang/String;)I

    move-result v16

    .line 1649
    if-gez v16, :cond_8

    .line 1650
    if-eqz v17, :cond_3

    .line 1651
    new-instance v12, Lcom/htc/htcmailwidgets/ContactData;

    invoke-direct {v12}, Lcom/htc/htcmailwidgets/ContactData;-><init>()V

    .line 1653
    .local v12, c:Lcom/htc/htcmailwidgets/ContactData;
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v12, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    .line 1654
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    .line 1656
    move-object/from16 v0, v17

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    iput-wide v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    .line 1658
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    if-nez v1, :cond_6

    .line 1659
    iget-wide v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 1660
    move-object/from16 v0, v17

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    .line 1672
    :goto_2
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1673
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    .end local v12           #c:Lcom/htc/htcmailwidgets/ContactData;
    :cond_3
    :goto_3
    const/16 v17, 0x0

    goto :goto_1

    .line 1664
    .restart local v12       #c:Lcom/htc/htcmailwidgets/ContactData;
    :cond_4
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 1765
    .end local v12           #c:Lcom/htc/htcmailwidgets/ContactData;
    .end local v15           #i:I
    .end local v17           #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    :catch_0
    move-exception v13

    .line 1783
    :cond_5
    :goto_4
    return-void

    .line 1666
    .restart local v12       #c:Lcom/htc/htcmailwidgets/ContactData;
    .restart local v15       #i:I
    .restart local v17       #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    :cond_6
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    if-eqz v1, :cond_7

    .line 1667
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    iget-wide v2, v12, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    sget v4, Lcom/htc/htcmailwidgets/MailDataManager;->mPhotoSizeX:I

    sget v5, Lcom/htc/htcmailwidgets/MailDataManager;->mPhotoSizeY:I

    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    iget-object v7, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    move-object/from16 v0, v17

    iget-wide v9, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->socialtype:J

    invoke-static/range {v1 .. v10}, Lcom/htc/htcmailwidgets/MailUtils;->getContactPhoto(Landroid/content/Context;JIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;[BJ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 1670
    :cond_7
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 1676
    .end local v12           #c:Lcom/htc/htcmailwidgets/ContactData;
    :cond_8
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/htcmailwidgets/ContactData;

    .line 1677
    .restart local v12       #c:Lcom/htc/htcmailwidgets/ContactData;
    move-object/from16 v0, v17

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->pid:J

    iput-wide v1, v12, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    .line 1678
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    .line 1680
    move-object/from16 v0, v17

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    iput-wide v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    .line 1682
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    if-nez v1, :cond_a

    .line 1683
    iget-wide v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_9

    .line 1684
    move-object/from16 v0, v17

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    .line 1696
    :goto_5
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1697
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1688
    :cond_9
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto :goto_5

    .line 1690
    :cond_a
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    if-eqz v1, :cond_b

    .line 1691
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    iget-wide v2, v12, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    sget v4, Lcom/htc/htcmailwidgets/MailDataManager;->mPhotoSizeX:I

    sget v5, Lcom/htc/htcmailwidgets/MailDataManager;->mPhotoSizeY:I

    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    iget-object v7, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    move-object/from16 v0, v17

    iget-wide v9, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->socialtype:J

    invoke-static/range {v1 .. v10}, Lcom/htc/htcmailwidgets/MailUtils;->getContactPhoto(Landroid/content/Context;JIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;[BJ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto :goto_5

    .line 1694
    :cond_b
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto :goto_5

    .line 1702
    .end local v12           #c:Lcom/htc/htcmailwidgets/ContactData;
    .end local v17           #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    :cond_c
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/htcmailwidgets/ContactData;

    .line 1704
    .restart local v12       #c:Lcom/htc/htcmailwidgets/ContactData;
    const/4 v11, 0x0

    .line 1705
    .local v11, bEmailRemoved:Z
    iget-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 1706
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    iget-object v2, v12, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/htcmailwidgets/MailUtils;->getContactId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_d

    .line 1707
    const/4 v11, 0x1

    .line 1710
    :cond_d
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    iget-wide v2, v12, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    invoke-static {v1, v2, v3}, Lcom/htc/htcmailwidgets/MailUtils;->getSpecifiedContactInfo(Landroid/content/Context;J)Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;

    move-result-object v17

    .line 1712
    .restart local v17       #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    if-eqz v17, :cond_13

    .line 1714
    if-eqz v11, :cond_e

    .line 1715
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    .line 1717
    :cond_e
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    .line 1718
    move-object/from16 v0, v17

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    iput-wide v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    .line 1720
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    if-nez v1, :cond_11

    .line 1721
    iget-wide v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_10

    .line 1722
    move-object/from16 v0, v17

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    .line 1732
    :goto_6
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-eqz v1, :cond_f

    .line 1733
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1738
    :cond_f
    :goto_7
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1724
    :cond_10
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto :goto_6

    .line 1726
    :cond_11
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    if-eqz v1, :cond_12

    .line 1727
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    iget-wide v2, v12, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    sget v4, Lcom/htc/htcmailwidgets/MailDataManager;->mPhotoSizeX:I

    sget v5, Lcom/htc/htcmailwidgets/MailDataManager;->mPhotoSizeY:I

    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    iget-object v7, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    move-object/from16 v0, v17

    iget-wide v9, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->socialtype:J

    invoke-static/range {v1 .. v10}, Lcom/htc/htcmailwidgets/MailUtils;->getContactPhoto(Landroid/content/Context;JIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;[BJ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto :goto_6

    .line 1730
    :cond_12
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto :goto_6

    .line 1735
    :cond_13
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 1743
    .end local v11           #bEmailRemoved:Z
    .end local v12           #c:Lcom/htc/htcmailwidgets/ContactData;
    .end local v15           #i:I
    .end local v17           #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    :cond_14
    const/4 v14, 0x1

    .line 1744
    .local v14, hasDeleteContacts:Z
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDeletedContactList:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    .line 1745
    const/4 v14, 0x0

    .line 1747
    :cond_15
    if-eqz v14, :cond_18

    .line 1748
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDeletedContactList:Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_18

    .line 1749
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1750
    .local v18, size:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_8
    move/from16 v0, v18

    if-ge v15, v0, :cond_17

    .line 1751
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/htcmailwidgets/MailDataManager;->getContactIndex(Ljava/util/ArrayList;Ljava/lang/Long;)I

    move-result v16

    .line 1752
    if-gez v16, :cond_16

    .line 1750
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1755
    :cond_16
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/htcmailwidgets/ContactData;

    .line 1756
    .restart local v12       #c:Lcom/htc/htcmailwidgets/ContactData;
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    .line 1757
    const-wide/16 v1, -0x1

    iput-wide v1, v12, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    .line 1758
    const-wide/16 v1, -0x1

    iput-wide v1, v12, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    .line 1759
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 1762
    .end local v12           #c:Lcom/htc/htcmailwidgets/ContactData;
    :cond_17
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1768
    .end local v15           #i:I
    .end local v18           #size:I
    :cond_18
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    if-eqz v1, :cond_19

    .line 1769
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1773
    :cond_19
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailContacts:Z

    .line 1774
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v1, :cond_5

    .line 1775
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v2, 0x30002

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_4
.end method

.method public static updateContacts()V
    .locals 2

    .prologue
    .line 2886
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/htcmailwidgets/MailDataManager$2;

    invoke-direct {v1}, Lcom/htc/htcmailwidgets/MailDataManager$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2893
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2894
    return-void
.end method

.method public static updateContactsToMail()V
    .locals 2

    .prologue
    .line 2907
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/htcmailwidgets/MailDataManager$4;

    invoke-direct {v1}, Lcom/htc/htcmailwidgets/MailDataManager$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2913
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2914
    return-void
.end method

.method protected static updateMailContact()V
    .locals 21

    .prologue
    .line 1786
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 1973
    .local v13, bUpdateFailed:Z
    .local v18, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_0
    :goto_0
    return-void

    .line 1789
    .end local v13           #bUpdateFailed:Z
    .end local v18           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_1
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1792
    sget-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    if-eqz v1, :cond_2

    .line 1793
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailContacts:Z

    .line 1795
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v1, :cond_0

    .line 1796
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v2, 0x30002

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1800
    :cond_2
    const/4 v13, 0x0

    .line 1801
    .restart local v13       #bUpdateFailed:Z
    sget-object v20, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    monitor-enter v20

    .line 1802
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    .line 1804
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1805
    sget-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetDeleteMail:Z

    if-eqz v1, :cond_5

    .line 1806
    const/4 v13, 0x1

    .line 1955
    :cond_4
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    .line 1958
    if-eqz v13, :cond_19

    .line 1959
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailContacts:Z

    .line 1960
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v1, :cond_0

    .line 1961
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v2, 0x30002

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1810
    :cond_5
    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    .line 1811
    .local v11, a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    if-eqz v11, :cond_3

    .line 1812
    iget-object v1, v11, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1814
    iget-object v1, v11, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1817
    iget-object v1, v11, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/htcmailwidgets/MailData;

    .line 1818
    .local v19, m:Lcom/htc/htcmailwidgets/MailData;
    move-object/from16 v0, v19

    iget v1, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    if-gtz v1, :cond_b

    .line 1819
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailDataManager;->idExistinChangeContactList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1820
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailDataManager;->idExistinChangeContactListByEmail(Ljava/lang/String;)I

    move-result v15

    .line 1821
    .local v15, index:I
    if-ltz v15, :cond_8

    .line 1822
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/htcmailwidgets/ContactData;

    .line 1824
    .local v16, info:Lcom/htc/htcmailwidgets/ContactData;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1825
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1826
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    .line 1829
    :cond_7
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    .line 1830
    move-object/from16 v0, v16

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    long-to-int v1, v1

    move-object/from16 v0, v19

    iput v1, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    goto :goto_1

    .line 1955
    .end local v11           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #index:I
    .end local v16           #info:Lcom/htc/htcmailwidgets/ContactData;
    .end local v18           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    .end local v19           #m:Lcom/htc/htcmailwidgets/MailData;
    :catchall_0
    move-exception v1

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1833
    .restart local v11       #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #index:I
    .restart local v18       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    .restart local v19       #m:Lcom/htc/htcmailwidgets/MailData;
    :cond_8
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1836
    .end local v15           #index:I
    :cond_9
    move-object/from16 v0, v19

    iget v1, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager;->idExistinChangeContactList(J)I

    move-result v15

    .line 1837
    .restart local v15       #index:I
    if-ltz v15, :cond_a

    .line 1838
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/htcmailwidgets/ContactData;

    .line 1841
    .restart local v16       #info:Lcom/htc/htcmailwidgets/ContactData;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 1842
    const/4 v1, 0x0

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    .line 1843
    const/4 v1, -0x1

    move-object/from16 v0, v19

    iput v1, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    .line 1844
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1848
    .end local v16           #info:Lcom/htc/htcmailwidgets/ContactData;
    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 1852
    .end local v15           #index:I
    :cond_b
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1855
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1859
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailDataManager;->idExistinChangeContactList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1860
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/htcmailwidgets/MailUtils;->getContactFromEmail(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    iput v1, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    .line 1864
    :goto_2
    move-object/from16 v0, v19

    iget v1, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    if-ltz v1, :cond_17

    .line 1865
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailDataManager;->idExistinChangeContactListByEmail(Ljava/lang/String;)I

    move-result v15

    .line 1866
    .restart local v15       #index:I
    if-ltz v15, :cond_f

    .line 1867
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/htcmailwidgets/ContactData;

    .line 1870
    .restart local v16       #info:Lcom/htc/htcmailwidgets/ContactData;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 1871
    const/4 v1, 0x0

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    .line 1872
    const/4 v1, -0x1

    move-object/from16 v0, v19

    iput v1, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    .line 1873
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1862
    .end local v15           #index:I
    .end local v16           #info:Lcom/htc/htcmailwidgets/ContactData;
    :cond_c
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailDataManager;->getContactIDFromEmail(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    move-object/from16 v0, v19

    iput v1, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    goto :goto_2

    .line 1876
    .restart local v15       #index:I
    .restart local v16       #info:Lcom/htc/htcmailwidgets/ContactData;
    :cond_d
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 1877
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1878
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    .line 1880
    :cond_e
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    .line 1881
    move-object/from16 v0, v16

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    long-to-int v1, v1

    move-object/from16 v0, v19

    iput v1, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    goto/16 :goto_1

    .line 1885
    .end local v16           #info:Lcom/htc/htcmailwidgets/ContactData;
    :cond_f
    const/16 v16, 0x0

    .line 1886
    .local v16, info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    iget v2, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/htc/htcmailwidgets/MailUtils;->getSpecifiedContactInfo(Landroid/content/Context;J)Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;

    move-result-object v16

    .line 1888
    if-eqz v16, :cond_6

    .line 1889
    const/4 v12, 0x0

    .line 1891
    .local v12, bNoDisplayName:Z
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 1892
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1893
    const/4 v12, 0x1

    .line 1895
    :cond_10
    if-nez v12, :cond_11

    .line 1896
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    .line 1897
    :cond_11
    move-object/from16 v0, v16

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->pid:J

    long-to-int v1, v1

    move-object/from16 v0, v19

    iput v1, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    .line 1899
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    if-nez v1, :cond_13

    .line 1900
    move-object/from16 v0, v16

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_12

    .line 1901
    move-object/from16 v0, v16

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    .line 1911
    :cond_12
    :goto_3
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 1912
    new-instance v17, Lcom/htc/htcmailwidgets/ContactData;

    invoke-direct/range {v17 .. v17}, Lcom/htc/htcmailwidgets/ContactData;-><init>()V

    .line 1913
    .local v17, info_:Lcom/htc/htcmailwidgets/ContactData;
    move-object/from16 v0, v16

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->pid:J

    move-object/from16 v0, v17

    iput-wide v1, v0, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    .line 1914
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    .line 1915
    if-nez v12, :cond_15

    .line 1916
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    .line 1919
    :goto_4
    move-object/from16 v0, v16

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    move-object/from16 v0, v17

    iput-wide v1, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    .line 1920
    move-object/from16 v0, v17

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_16

    .line 1921
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    .line 1925
    :goto_5
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1905
    .end local v17           #info_:Lcom/htc/htcmailwidgets/ContactData;
    :cond_13
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    if-eqz v1, :cond_14

    .line 1906
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    iget v2, v0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    int-to-long v2, v2

    sget v4, Lcom/htc/htcmailwidgets/MailDataManager;->mPhotoSizeX:I

    sget v5, Lcom/htc/htcmailwidgets/MailDataManager;->mPhotoSizeY:I

    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    move-object/from16 v0, v16

    iget-wide v9, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->socialtype:J

    invoke-static/range {v1 .. v10}, Lcom/htc/htcmailwidgets/MailUtils;->getContactPhoto(Landroid/content/Context;JIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;[BJ)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 1909
    :cond_14
    const/4 v1, 0x0

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 1918
    .restart local v17       #info_:Lcom/htc/htcmailwidgets/ContactData;
    :cond_15
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    goto :goto_4

    .line 1923
    :cond_16
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto :goto_5

    .line 1931
    .end local v12           #bNoDisplayName:Z
    .end local v15           #index:I
    .end local v16           #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    .end local v17           #info_:Lcom/htc/htcmailwidgets/ContactData;
    :cond_17
    const/4 v1, 0x0

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    .line 1932
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom_origin:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    .line 1933
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1934
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailDataManager;->idExistinChangeContactListByEmail(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_6

    .line 1935
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-nez v1, :cond_18

    .line 1936
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    .line 1938
    :cond_18
    new-instance v17, Lcom/htc/htcmailwidgets/ContactData;

    invoke-direct/range {v17 .. v17}, Lcom/htc/htcmailwidgets/ContactData;-><init>()V

    .line 1939
    .restart local v17       #info_:Lcom/htc/htcmailwidgets/ContactData;
    const-wide/16 v1, -0x1

    move-object/from16 v0, v17

    iput-wide v1, v0, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    .line 1940
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    .line 1941
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    .line 1942
    const-wide/16 v1, -0x1

    move-object/from16 v0, v17

    iput-wide v1, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    .line 1943
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    .line 1945
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1965
    .end local v11           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #info_:Lcom/htc/htcmailwidgets/ContactData;
    .end local v19           #m:Lcom/htc/htcmailwidgets/MailData;
    :cond_19
    sget-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateTimgString:Z

    if-eqz v1, :cond_1a

    .line 1966
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v1, :cond_0

    .line 1967
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v2, 0x30001

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1968
    :cond_1a
    sget-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailStatus:Z

    if-eqz v1, :cond_1b

    .line 1969
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v1, :cond_0

    .line 1970
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v2, 0x30003

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1972
    :cond_1b
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailIntent;->sendContactStatusCompletedIntent(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private static updateMailStatus()V
    .locals 14

    .prologue
    .line 1522
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    .line 1616
    .local v7, length:I
    :cond_0
    :goto_0
    return-void

    .line 1526
    .end local v7           #length:I
    :cond_1
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1531
    .restart local v7       #length:I
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    if-eqz v9, :cond_0

    .line 1534
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 1537
    sget-boolean v9, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    if-eqz v9, :cond_2

    .line 1538
    const/4 v9, 0x1

    sput-boolean v9, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailStatus:Z

    .line 1540
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v9, :cond_0

    .line 1541
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v10, 0x30003

    const-wide/16 v11, 0x2710

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1545
    :cond_2
    const/4 v1, 0x0

    .line 1546
    .local v1, bUpdateFailed:Z
    sget-object v10, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 1547
    const/4 v9, 0x1

    :try_start_0
    sput-boolean v9, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    .line 1549
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1550
    sget-boolean v9, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetDeleteMail:Z

    if-eqz v9, :cond_5

    .line 1551
    const/4 v1, 0x1

    .line 1594
    :cond_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1595
    const/4 v9, 0x0

    sput-boolean v9, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    .line 1597
    if-eqz v1, :cond_11

    .line 1598
    const/4 v9, 0x1

    sput-boolean v9, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailStatus:Z

    .line 1599
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v9, :cond_0

    .line 1600
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v10, 0x30003

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1554
    :cond_5
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    .line 1555
    .local v0, a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    if-eqz v0, :cond_3

    .line 1556
    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 1558
    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_3

    .line 1561
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_3

    .line 1562
    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    if-nez v9, :cond_6

    .line 1563
    monitor-exit v10

    goto/16 :goto_0

    .line 1594
    .end local v0           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    .end local v4           #i:I
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 1565
    .restart local v0       #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    .restart local v4       #i:I
    .restart local v6       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_6
    :try_start_2
    iget-object v11, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    iget-wide v12, v9, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1566
    .local v5, index:I
    if-ltz v5, :cond_7

    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_7

    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v5, v9, :cond_8

    .line 1561
    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1569
    :cond_8
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1570
    .local v8, status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    iget-object v9, v8, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-ne v9, v11, :cond_d

    const/4 v3, 0x2

    .line 1571
    .local v3, flag:I
    :goto_3
    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/MailData;

    .line 1572
    .local v2, data:Lcom/htc/htcmailwidgets/MailData;
    iget-object v9, v8, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-eq v9, v11, :cond_9

    .line 1573
    iput v3, v2, Lcom/htc/htcmailwidgets/MailData;->mFlag:I

    .line 1574
    :cond_9
    iget-object v9, v8, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-eq v9, v11, :cond_a

    .line 1575
    iget-object v9, v8, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-ne v9, v11, :cond_e

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, v2, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    .line 1577
    :cond_a
    iget-object v9, v8, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-eq v9, v11, :cond_b

    .line 1578
    iget-object v9, v8, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-ne v9, v11, :cond_f

    const/4 v9, 0x1

    :goto_5
    iput v9, v2, Lcom/htc/htcmailwidgets/MailData;->mMailAct:I

    .line 1580
    :cond_b
    iget-object v9, v8, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-eq v9, v11, :cond_c

    .line 1581
    iget-object v9, v8, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-ne v9, v11, :cond_10

    const/4 v9, 0x2

    :goto_6
    iput v9, v2, Lcom/htc/htcmailwidgets/MailData;->mMailAct:I

    .line 1583
    :cond_c
    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v9, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1585
    iget-object v9, v8, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->deleted_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v11, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-ne v9, v11, :cond_7

    .line 1586
    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1587
    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1588
    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->trimToSize()V

    .line 1589
    iget-object v9, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->trimToSize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1570
    .end local v2           #data:Lcom/htc/htcmailwidgets/MailData;
    .end local v3           #flag:I
    :cond_d
    const/4 v3, 0x0

    goto :goto_3

    .line 1575
    .restart local v2       #data:Lcom/htc/htcmailwidgets/MailData;
    .restart local v3       #flag:I
    :cond_e
    const/4 v9, 0x0

    goto :goto_4

    .line 1578
    :cond_f
    const/4 v9, 0x0

    goto :goto_5

    .line 1581
    :cond_10
    const/4 v9, 0x0

    goto :goto_6

    .line 1604
    .end local v0           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    .end local v2           #data:Lcom/htc/htcmailwidgets/MailData;
    .end local v3           #flag:I
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v8           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_11
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1606
    sget-boolean v9, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailContacts:Z

    if-eqz v9, :cond_12

    .line 1607
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v9, :cond_0

    .line 1608
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v10, 0x30002

    invoke-virtual {v9, v10}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1609
    :cond_12
    sget-boolean v9, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateTimgString:Z

    if-eqz v9, :cond_13

    .line 1610
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v9, :cond_0

    .line 1611
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v10, 0x30001

    invoke-virtual {v9, v10}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1613
    :cond_13
    sget-object v9, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/htcmailwidgets/MailIntent;->sendMailStatusCompletedIntent(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private static updateMailStatus(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "acc_id"
    .parameter "acc_name"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1475
    .local p3, mailinfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    .local p4, mailids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 1519
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1483
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_c

    .line 1484
    if-eqz p4, :cond_0

    .line 1487
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    iget-wide v6, v6, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->messageId_:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1488
    .local v3, index:I
    if-ltz v3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_3

    .line 1483
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1491
    :cond_3
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;

    .line 1492
    .local v5, status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    iget-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v7, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-ne v6, v7, :cond_8

    const/4 v1, 0x2

    .line 1493
    .local v1, flag:I
    :goto_3
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailData;

    .line 1494
    .local v0, data:Lcom/htc/htcmailwidgets/MailData;
    iget-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->marked_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v7, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-eq v6, v7, :cond_4

    .line 1495
    iput v1, v0, Lcom/htc/htcmailwidgets/MailData;->mFlag:I

    .line 1496
    :cond_4
    iget-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v7, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-eq v6, v7, :cond_5

    .line 1497
    iget-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->unread_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v7, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-ne v6, v7, :cond_9

    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, v0, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    .line 1499
    :cond_5
    iget-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v7, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-eq v6, v7, :cond_6

    .line 1500
    iget-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->replyed_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v7, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    :goto_5
    iput v6, v0, Lcom/htc/htcmailwidgets/MailData;->mMailAct:I

    .line 1502
    :cond_6
    iget-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v7, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-eq v6, v7, :cond_7

    .line 1503
    iget-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->forwarded_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v7, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-ne v6, v7, :cond_b

    const/4 v6, 0x2

    :goto_6
    iput v6, v0, Lcom/htc/htcmailwidgets/MailData;->mMailAct:I

    .line 1505
    :cond_7
    invoke-virtual {p3, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1507
    iget-object v6, v5, Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;->deleted_:Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v7, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    if-ne v6, v7, :cond_2

    .line 1508
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1509
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1510
    invoke-virtual {p3}, Ljava/util/ArrayList;->trimToSize()V

    .line 1511
    invoke-virtual {p4}, Ljava/util/ArrayList;->trimToSize()V

    goto :goto_2

    .line 1492
    .end local v0           #data:Lcom/htc/htcmailwidgets/MailData;
    .end local v1           #flag:I
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 1497
    .restart local v0       #data:Lcom/htc/htcmailwidgets/MailData;
    .restart local v1       #flag:I
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 1500
    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    .line 1503
    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    .line 1515
    .end local v0           #data:Lcom/htc/htcmailwidgets/MailData;
    .end local v1           #flag:I
    .end local v3           #index:I
    .end local v5           #status:Lcom/htc/htcmailwidgets/MailDataManager$MailStatus;
    :cond_c
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method private static updatePhoto()V
    .locals 28

    .prologue
    .line 2678
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2865
    .local v10, c:Landroid/database/Cursor;
    .local v12, contactEmails:Ljava/lang/StringBuilder;
    .local v14, em:Ljava/lang/String;
    .local v15, h:I
    .local v19, length:I
    .local v20, pId:J
    .local v22, photoBmp:Landroid/graphics/Bitmap;
    .local v23, photoId:J
    .local v25, photoName:Ljava/lang/String;
    .local v26, remainder:I
    .local v27, repeat:I
    :cond_0
    :goto_0
    return-void

    .line 2681
    .end local v10           #c:Landroid/database/Cursor;
    .end local v12           #contactEmails:Ljava/lang/StringBuilder;
    .end local v14           #em:Ljava/lang/String;
    .end local v15           #h:I
    .end local v19           #length:I
    .end local v20           #pId:J
    .end local v22           #photoBmp:Landroid/graphics/Bitmap;
    .end local v23           #photoId:J
    .end local v25           #photoName:Ljava/lang/String;
    .end local v26           #remainder:I
    .end local v27           #repeat:I
    :cond_1
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2685
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 2686
    .restart local v19       #length:I
    div-int/lit8 v2, v19, 0x64

    add-int/lit8 v27, v2, 0x1

    .line 2687
    .restart local v27       #repeat:I
    rem-int/lit8 v26, v19, 0x64

    .line 2691
    .restart local v26       #remainder:I
    const/4 v10, 0x0

    .line 2692
    .restart local v10       #c:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 2693
    .restart local v14       #em:Ljava/lang/String;
    const-wide/16 v20, 0x0

    .restart local v20       #pId:J
    const-wide/16 v23, 0x0

    .line 2694
    .restart local v23       #photoId:J
    const/16 v22, 0x0

    .line 2695
    .restart local v22       #photoBmp:Landroid/graphics/Bitmap;
    const/16 v25, 0x0

    .line 2696
    .restart local v25       #photoName:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2699
    .restart local v12       #contactEmails:Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .restart local v15       #h:I
    :goto_1
    move/from16 v0, v27

    if-ge v15, v0, :cond_0

    .line 2700
    add-int/lit8 v2, v27, -0x1

    if-ne v15, v2, :cond_3

    .line 2701
    move/from16 v8, v26

    .line 2705
    .local v8, IndexCount:I
    :goto_2
    mul-int/lit8 v9, v15, 0x64

    .line 2706
    .local v9, IndexStart:I
    if-eqz v12, :cond_2

    :try_start_0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 2707
    const/4 v2, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-string v4, ""

    invoke-virtual {v12, v2, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2709
    :cond_2
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v8, :cond_8

    .line 2710
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    add-int v3, v9, v16

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 2711
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    add-int v3, v9, v16

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2709
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 2703
    .end local v8           #IndexCount:I
    .end local v9           #IndexStart:I
    .end local v16           #i:I
    :cond_3
    const/16 v8, 0x64

    .restart local v8       #IndexCount:I
    goto :goto_2

    .line 2714
    .restart local v9       #IndexStart:I
    .restart local v16       #i:I
    :cond_4
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    add-int v3, v9, v16

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 2715
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    add-int v3, v9, v16

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2781
    .end local v16           #i:I
    :catch_0
    move-exception v13

    .line 2782
    .local v13, e:Ljava/lang/Exception;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2783
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2785
    :cond_5
    const/4 v10, 0x0

    .line 2786
    goto/16 :goto_0

    .line 2718
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v16       #i:I
    :cond_6
    if-nez v16, :cond_7

    .line 2719
    :try_start_1
    const-string v2, "\'"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    add-int v4, v9, v16

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailDataManager;->extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2721
    :cond_7
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    add-int v4, v9, v16

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/ContactData;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailDataManager;->extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2724
    :cond_8
    const-string v5, ""

    .line 2725
    .local v5, where:Ljava/lang/String;
    const-string v2, "data1 in (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2726
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "data1"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "contact_id"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "photo_id"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "display_name"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2727
    if-eqz v10, :cond_10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_10

    .line 2728
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2729
    const/16 v17, 0x0

    .local v17, j:I
    :goto_5
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_10

    .line 2730
    const-string v2, "data1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2731
    const-string v2, "contact_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 2732
    const-string v2, "photo_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 2733
    const-string v2, "display_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2734
    const/4 v2, 0x0

    move-wide/from16 v0, v23

    invoke-static {v0, v1, v2}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 2736
    const/16 v18, 0x0

    .local v18, k:I
    :goto_6
    move/from16 v0, v18

    if-ge v0, v8, :cond_f

    .line 2737
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2740
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2743
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    add-int v3, v9, v18

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/htcmailwidgets/ContactData;

    .line 2744
    .local v11, c_tmp:Lcom/htc/htcmailwidgets/ContactData;
    iget-object v2, v11, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 2745
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    add-int v3, v9, v18

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2736
    :cond_9
    :goto_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 2748
    :cond_a
    iget-object v2, v11, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    .line 2749
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    add-int v3, v9, v18

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 2753
    :cond_b
    iget-object v2, v11, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 2755
    iget-wide v2, v11, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    cmp-long v2, v2, v23

    if-eqz v2, :cond_c

    .line 2756
    move-wide/from16 v0, v23

    iput-wide v0, v11, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    .line 2758
    :cond_c
    if-eqz v25, :cond_d

    .line 2759
    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    .line 2763
    :goto_8
    if-eqz v22, :cond_e

    .line 2764
    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    .line 2768
    :goto_9
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    .line 2769
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    add-int v3, v9, v18

    invoke-virtual {v2, v3, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2761
    :cond_d
    const/4 v2, 0x0

    iput-object v2, v11, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    goto :goto_8

    .line 2766
    :cond_e
    const/4 v2, 0x0

    iput-object v2, v11, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    goto :goto_9

    .line 2773
    .end local v11           #c_tmp:Lcom/htc/htcmailwidgets/ContactData;
    :cond_f
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 2729
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 2776
    .end local v17           #j:I
    .end local v18           #k:I
    :cond_10
    if-eqz v10, :cond_11

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2777
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2779
    :cond_11
    const/4 v10, 0x0

    .line 2699
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1
.end method

.method private static updateTimeString()V
    .locals 11

    .prologue
    const v10, 0x30001

    const/4 v9, 0x1

    .line 1977
    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 2031
    .local v1, bUpdateFailed:Z
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_0
    :goto_0
    return-void

    .line 1980
    .end local v1           #bUpdateFailed:Z
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_1
    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1983
    sget-boolean v5, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    if-eqz v5, :cond_2

    .line 1984
    sput-boolean v9, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateTimgString:Z

    .line 1986
    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v5, :cond_0

    .line 1987
    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v10, v6, v7}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1992
    :cond_2
    const/4 v1, 0x0

    .line 1993
    .restart local v1       #bUpdateFailed:Z
    sget-object v6, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 1994
    const/4 v5, 0x1

    :try_start_0
    sput-boolean v5, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    .line 1996
    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1997
    sget-boolean v5, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetDeleteMail:Z

    if-eqz v5, :cond_5

    .line 1998
    const/4 v1, 0x1

    .line 2013
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2014
    const/4 v5, 0x0

    sput-boolean v5, Lcom/htc/htcmailwidgets/MailDataManager;->mbAccountMapLocked:Z

    .line 2016
    if-eqz v1, :cond_6

    .line 2017
    sput-boolean v9, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateTimgString:Z

    .line 2018
    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v5, :cond_0

    .line 2019
    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v10, v6, v7}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 2001
    :cond_5
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    .line 2002
    .local v0, a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    if-eqz v0, :cond_3

    .line 2003
    iget-object v5, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 2005
    iget-object v5, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 2008
    iget-object v5, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htcmailwidgets/MailData;

    .line 2009
    .local v4, m:Lcom/htc/htcmailwidgets/MailData;
    iget-wide v7, v4, Lcom/htc/htcmailwidgets/MailData;->mInternaldate:J

    invoke-static {v7, v8}, Lcom/htc/htcmailwidgets/MailDataManager;->getDateString(J)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    goto :goto_1

    .line 2013
    .end local v0           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    .end local v4           #m:Lcom/htc/htcmailwidgets/MailData;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 2023
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_6
    sget-boolean v5, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailStatus:Z

    if-eqz v5, :cond_7

    .line 2024
    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v5, :cond_0

    .line 2025
    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v6, 0x30003

    invoke-virtual {v5, v6}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2026
    :cond_7
    sget-boolean v5, Lcom/htc/htcmailwidgets/MailDataManager;->mbUpdateMailContacts:Z

    if-eqz v5, :cond_8

    .line 2027
    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v5, :cond_0

    .line 2028
    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    const v6, 0x30002

    invoke-virtual {v5, v6}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2030
    :cond_8
    sget-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailIntent;->sendTimeChangedCompletedIntent(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public static updateTimes()V
    .locals 2

    .prologue
    .line 2897
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/htcmailwidgets/MailDataManager$3;

    invoke-direct {v1}, Lcom/htc/htcmailwidgets/MailDataManager$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2903
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2904
    return-void
.end method


# virtual methods
.method public createAccountMap(JLjava/lang/String;I)V
    .locals 2
    .parameter "accountId"
    .parameter "accountName"
    .parameter "widgetid"

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    invoke-static {p1, p2, p3}, Lcom/htc/htcmailwidgets/MailDataManager;->isAccountExist(JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 433
    new-instance v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    .end local v0           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    invoke-direct {v0}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;-><init>()V

    .line 434
    .restart local v0       #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->init(JLjava/lang/String;)V

    .line 435
    invoke-virtual {v0, p4}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->isWidgetIdExist(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {v0, p4}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->addWidgetId(I)V

    .line 437
    :cond_0
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 439
    :cond_2
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    .line 440
    .restart local v0       #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    invoke-virtual {v0, p4}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->isWidgetIdExist(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    invoke-virtual {v0, p4}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->addWidgetId(I)V

    .line 442
    iget v1, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->user_counts_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->user_counts_:I

    goto :goto_0
.end method

.method public emptyAccountMap(JLjava/lang/String;)V
    .locals 2
    .parameter "accountId"
    .parameter "accountName"

    .prologue
    .line 498
    invoke-static {p1, p2, p3}, Lcom/htc/htcmailwidgets/MailDataManager;->isAccountExist(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 500
    :try_start_0
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->resetData()V

    .line 501
    monitor-exit v1

    .line 503
    :cond_0
    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExtractionDataPosition(JLjava/lang/String;)I
    .locals 4
    .parameter "acc_id"
    .parameter "acc_name"

    .prologue
    .line 550
    const/4 v0, 0x0

    .line 552
    .local v0, position:I
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v1, v0

    .line 560
    .end local v0           #position:I
    .local v1, position:I
    :goto_0
    return v1

    .line 555
    .end local v1           #position:I
    .restart local v0       #position:I
    :cond_0
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iget-wide v2, v2, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->account_id_:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 557
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iget v0, v2, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->extractdataposition_:I

    :cond_1
    move v1, v0

    .line 560
    .end local v0           #position:I
    .restart local v1       #position:I
    goto :goto_0
.end method

.method public onDoEmptyData(JLjava/lang/String;)V
    .locals 2
    .parameter "acc_id"
    .parameter "acc_name"

    .prologue
    .line 3191
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/htcmailwidgets/MailDataManager$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/htcmailwidgets/MailDataManager$6;-><init>(Lcom/htc/htcmailwidgets/MailDataManager;JLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3197
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3198
    return-void
.end method

.method public onDoFirstRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "w"
    .parameter "acc_id"
    .parameter "acc_name"

    .prologue
    .line 3108
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_FIRST_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 3110
    move-object v1, p1

    .line 3111
    .local v1, c_:Landroid/database/Cursor;
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    if-nez v0, :cond_3

    invoke-static {p3, p4, p5}, Lcom/htc/htcmailwidgets/MailDataManager;->isAccountExist(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3, p4, p5}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailDataList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 3112
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    if-nez v0, :cond_0

    .line 3113
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->init()V

    .line 3114
    :cond_0
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    if-eqz v0, :cond_2

    .line 3115
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->SetParams(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 3117
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadSuspend:Z

    if-eqz v0, :cond_1

    .line 3118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadSuspend:Z

    .line 3119
    :cond_1
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->run()V

    .line 3128
    :cond_2
    :goto_0
    return-void

    .line 3122
    :cond_3
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    invoke-static {v0, p3, p4, v2}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 3124
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3125
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3126
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDoRequeryAllExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "w"
    .parameter "acc_id"
    .parameter "acc_name"

    .prologue
    .line 3156
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_REQUERY_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 3158
    move-object v1, p1

    .line 3159
    .local v1, c_:Landroid/database/Cursor;
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    if-nez v0, :cond_3

    invoke-static {p3, p4, p5}, Lcom/htc/htcmailwidgets/MailDataManager;->isAccountExist(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3, p4, p5}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailDataList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 3160
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    if-nez v0, :cond_0

    .line 3161
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->init()V

    .line 3162
    :cond_0
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    if-eqz v0, :cond_2

    .line 3163
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->SetParams(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 3165
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadSuspend:Z

    if-eqz v0, :cond_1

    .line 3166
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadSuspend:Z

    .line 3167
    :cond_1
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->run()V

    .line 3176
    :cond_2
    :goto_0
    return-void

    .line 3170
    :cond_3
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    invoke-static {v0, p3, p4, v2}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 3172
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3173
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3174
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDoSecondRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "w"
    .parameter "acc_id"
    .parameter "acc_name"

    .prologue
    .line 3132
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_SECOND_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 3134
    move-object v1, p1

    .line 3135
    .local v1, c_:Landroid/database/Cursor;
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataTaskExecuting:Z

    if-nez v0, :cond_3

    invoke-static {p3, p4, p5}, Lcom/htc/htcmailwidgets/MailDataManager;->isAccountExist(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3, p4, p5}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailDataList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 3136
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    if-nez v0, :cond_0

    .line 3137
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->init()V

    .line 3138
    :cond_0
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    if-eqz v0, :cond_2

    .line 3139
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->SetParams(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 3141
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadSuspend:Z

    if-eqz v0, :cond_1

    .line 3142
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadSuspend:Z

    .line 3143
    :cond_1
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->run()V

    .line 3152
    :cond_2
    :goto_0
    return-void

    .line 3146
    :cond_3
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    invoke-static {v0, p3, p4, v2}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    .line 3148
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3149
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3150
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDuringDeleteMail(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 3231
    sput-boolean p1, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetDeleteMail:Z

    .line 3233
    return-void
.end method

.method public onGetExtractDataCount()I
    .locals 1

    .prologue
    .line 3248
    sget v0, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    return v0
.end method

.method public onNewMailsNotify()V
    .locals 1

    .prologue
    .line 3243
    const/4 v0, 0x0

    sput v0, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 3244
    return-void
.end method

.method public onRequeryAccountsInfo()V
    .locals 2

    .prologue
    .line 3180
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/htcmailwidgets/MailDataManager$5;

    invoke-direct {v1, p0}, Lcom/htc/htcmailwidgets/MailDataManager$5;-><init>(Lcom/htc/htcmailwidgets/MailDataManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3186
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3187
    return-void
.end method

.method public onResetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 3237
    sput p1, Lcom/htc/htcmailwidgets/MailDataManager;->mOrientation:I

    .line 3238
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetOrientation:Z

    .line 3239
    return-void
.end method

.method public onSetExtractDataCount(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 3252
    sput p1, Lcom/htc/htcmailwidgets/MailDataManager;->mIntExtractDataPosition:I

    .line 3253
    return-void
.end method

.method public onWidgetLandscape()V
    .locals 2

    .prologue
    .line 3212
    const/4 v0, 0x2

    .line 3213
    .local v0, orientation:I
    sget v1, Lcom/htc/htcmailwidgets/MailDataManager;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 3214
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetOrientation:Z

    .line 3217
    :goto_0
    return-void

    .line 3216
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetOrientation:Z

    goto :goto_0
.end method

.method public onWidgetPause()V
    .locals 1

    .prologue
    .line 3202
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetResume:Z

    .line 3203
    return-void
.end method

.method public onWidgetPortrait()V
    .locals 2

    .prologue
    .line 3221
    const/4 v0, 0x1

    .line 3222
    .local v0, orientation:I
    sget v1, Lcom/htc/htcmailwidgets/MailDataManager;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 3223
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetOrientation:Z

    .line 3227
    :goto_0
    return-void

    .line 3225
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetOrientation:Z

    goto :goto_0
.end method

.method public onWidgetResume()V
    .locals 1

    .prologue
    .line 3207
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/htcmailwidgets/MailDataManager;->mbWidgetResume:Z

    .line 3208
    return-void
.end method

.method public registExistAccountMap(JLjava/lang/String;I)V
    .locals 2
    .parameter "accountId"
    .parameter "accountName"
    .parameter "widgetid"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 453
    .local v0, a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 454
    new-instance v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    .end local v0           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    invoke-direct {v0}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;-><init>()V

    .line 455
    .restart local v0       #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->init(JLjava/lang/String;)V

    .line 456
    invoke-virtual {v0, p4}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->isWidgetIdExist(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    invoke-virtual {v0, p4}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->addWidgetId(I)V

    .line 458
    :cond_0
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_1
    :goto_0
    return-void

    .line 460
    :cond_2
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    .line 461
    .restart local v0       #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    invoke-virtual {v0, p4}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->isWidgetIdExist(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    invoke-virtual {v0, p4}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->addWidgetId(I)V

    .line 463
    iget v1, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->user_counts_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->user_counts_:I

    goto :goto_0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 644
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 645
    sget-object v4, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 646
    :try_start_0
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 647
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    .line 648
    .local v0, a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->release()V

    goto :goto_0

    .line 652
    .end local v0           #a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 651
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_1
    :try_start_1
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 652
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htcmailwidgets/MailDataManager$AccountData;>;"
    :cond_2
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_e

    .line 656
    sput-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 658
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 659
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 660
    :cond_3
    sput-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mContactAry:Ljava/util/ArrayList;

    .line 662
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 663
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 664
    :cond_4
    sput-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mail_temp:Ljava/util/ArrayList;

    .line 666
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 667
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 668
    :cond_5
    sput-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mailids_temp:Ljava/util/ArrayList;

    .line 670
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 671
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 672
    :cond_6
    sput-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedMap:Ljava/util/ArrayList;

    .line 674
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mDeletedContactList:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 675
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 676
    :cond_7
    sput-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mDeletedContactList:Ljava/util/ArrayList;

    .line 678
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    .line 679
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 680
    :cond_8
    sput-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mChangedIDList:Ljava/util/ArrayList;

    .line 682
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/htcmailwidgets/MailDataManager;->mbExtractDataThreadisRunning:Z

    .line 684
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    if-eqz v3, :cond_a

    .line 685
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    invoke-virtual {v3}, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 686
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    invoke-virtual {v3}, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->interrupt()V

    .line 687
    :cond_9
    sput-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mThreadExtractData:Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;

    .line 690
    :cond_a
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    if-eqz v3, :cond_c

    .line 691
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    invoke-virtual {v3}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 692
    .local v2, looper:Landroid/os/Looper;
    if-eqz v2, :cond_b

    .line 693
    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 694
    const/4 v2, 0x0

    .line 696
    :cond_b
    sput-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mDataManagerHandler:Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    .line 699
    .end local v2           #looper:Landroid/os/Looper;
    :cond_c
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    if-eqz v3, :cond_d

    .line 700
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 701
    :cond_d
    sput-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mMailCallbackListenerMap:Ljava/util/HashMap;

    .line 703
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mLocalData:Lcom/htc/htcmailwidgets/LocalData;

    if-eqz v3, :cond_e

    .line 704
    sput-object v5, Lcom/htc/htcmailwidgets/MailDataManager;->mLocalData:Lcom/htc/htcmailwidgets/LocalData;

    .line 706
    :cond_e
    return-void
.end method

.method public removeAccountMap(JLjava/lang/String;IZ)V
    .locals 5
    .parameter "accountId"
    .parameter "accountName"
    .parameter "widgetid"
    .parameter "doRelease"

    .prologue
    .line 509
    const/4 v1, 0x0

    .line 511
    .local v1, a:Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
    invoke-static {p1, p2, p3}, Lcom/htc/htcmailwidgets/MailDataManager;->isAccountExist(JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 513
    :try_start_0
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    move-object v1, v0

    .line 514
    iget v2, v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->user_counts_:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 515
    invoke-virtual {v1}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->release()V

    .line 516
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :goto_0
    sget-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    if-eqz p5, :cond_2

    .line 524
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailDataManager;->release()V

    .line 529
    :goto_1
    monitor-exit v3

    .line 531
    :cond_0
    return-void

    .line 518
    :cond_1
    iget v2, v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->user_counts_:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->user_counts_:I

    .line 519
    invoke-virtual {v1, p4}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->removeWidgetId(I)V

    goto :goto_0

    .line 529
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 527
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    sput-object v2, Lcom/htc/htcmailwidgets/MailDataManager;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public resetAccountMap(JLjava/lang/String;)V
    .locals 2
    .parameter "accountId"
    .parameter "accountName"

    .prologue
    .line 485
    invoke-static {p1, p2, p3}, Lcom/htc/htcmailwidgets/MailDataManager;->isAccountExist(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 487
    :try_start_0
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->resetMailData()V

    .line 488
    monitor-exit v1

    .line 490
    :cond_0
    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setExtractionDataPosition(JLjava/lang/String;I)V
    .locals 2
    .parameter "acc_id"
    .parameter "acc_name"
    .parameter "position"

    .prologue
    .line 537
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iget-wide v0, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->account_id_:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 542
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;

    iput p4, v0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->extractdataposition_:I

    goto :goto_0
.end method
