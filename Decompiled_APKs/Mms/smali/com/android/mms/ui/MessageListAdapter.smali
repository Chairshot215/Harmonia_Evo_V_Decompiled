.class public Lcom/android/mms/ui/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$SimSms;,
        Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;,
        Lcom/android/mms/ui/MessageListAdapter$QueryCompleteListener;,
        Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;,
        Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;
    }
.end annotation


# static fields
.field public static final COMMON_APP_BG_DRAWABLE:Ljava/lang/String; = "common_app_bkg"

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MARK_SIM_SMS_AS_READ:Ljava/lang/String; = "mark as read in sim index : "

.field private static final MSG_TYPE_MMS_SMS:I = 0x0

.field private static final MSG_TYPE_VVM:I = 0x1

.field private static final NO_CACHE_MSG_EXCEPTION:Ljava/lang/String; = "can not get cachecd message in newView: "

.field private static final TAG:Ljava/lang/String; = "MessageListAdapter"

.field public static final TYPE_MESSAGE:I = 0x1

.field public static final TYPE_TIMESTAMP:I = 0x0

.field private static final VIEW_TYPE_COUNT:I = 0x5

.field private static final VIEW_TYPE_COUNT_BUBBLE:I = 0x9

.field private static final VIEW_TYPE_MIXED_MM:I = 0x3

.field private static final VIEW_TYPE_MIXED_MM_ME:I = 0x7

.field private static final VIEW_TYPE_NOTIFICATION:I = 0x2

.field private static final VIEW_TYPE_RELATED_MM:I = 0x4

.field private static final VIEW_TYPE_RELATED_MM_ME:I = 0x8

.field private static final VIEW_TYPE_TEXT_MSG:I = 0x1

.field private static final VIEW_TYPE_TEXT_MSG_ME:I = 0x6

.field private static final VIEW_TYPE_TEXT_OBJECT:I = 0x5

.field private static final VIEW_TYPE_TEXT_OBJECT_ME:I = 0x9


# instance fields
.field private ReportIndicatorObe:Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;

.field private VCardIndicatorObe:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;

.field private callerCache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private finishQueryTime:Ljava/lang/Long;

.field private isRequeryNeeded:Z

.field private isRequerying:Z

.field public mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

.field private mCookie:Ljava/lang/Object;

.field mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

.field private mHasMmsUnread:Z

.field private mHasNewMsg:Z

.field private mHasSmsUnread:Z

.field private mHighlight:Ljava/lang/String;

.field private mInBackground:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsDisableCache:Z

.field private final mMessageCache:Lcom/android/mms/util/MessageCache;

.field private final mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

.field private mMmsQueryDataCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/msg/util/MessageDataAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mOldCount:I

.field private mOrderBy:Ljava/lang/String;

.field public mPrimaryNumber:Ljava/lang/String;

.field public mPrimaryNumberLocationAppendAtring:Ljava/lang/String;

.field private mProjection:[Ljava/lang/String;

.field private mQueryCompleteListener:Lcom/android/mms/ui/MessageListAdapter$QueryCompleteListener;

.field private mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

.field private mScrolling:Z

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSimSms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageListAdapter$SimSms;",
            ">;"
        }
    .end annotation
.end field

.field mTextMsg:Lcom/android/mms/msg/TextMessageByCursor;

.field private final mThreadType:I

.field private mToken:I

.field private mUnreadTimestamp:J

.field private mUri:Landroid/net/Uri;

.field private mUseDefaultColumnsMap:Z

.field private mVvmCache:Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;

.field private startQueryTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/app/Activity;Landroid/database/Cursor;ZI)V
    .locals 5
    .parameter "contentResolver"
    .parameter "act"
    .parameter "c"
    .parameter "useDefaultColumnsMap"
    .parameter "threadType"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 217
    invoke-direct {p0, p2, p3, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumber:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumberLocationAppendAtring:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/android/mms/util/MessageCache;->getInstance()Lcom/android/mms/util/MessageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageCache:Lcom/android/mms/util/MessageCache;

    .line 107
    iput-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    .line 108
    iput-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextMsg:Lcom/android/mms/msg/TextMessageByCursor;

    .line 120
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-direct {v0, p0, v3}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;-><init>(Lcom/android/mms/ui/MessageListAdapter;Lcom/android/mms/ui/MessageListAdapter$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMmsQueryDataCache:Ljava/util/ArrayList;

    .line 130
    iput-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mVvmCache:Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;

    .line 144
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasNewMsg:Z

    .line 158
    iput-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    .line 160
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequerying:Z

    .line 161
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequeryNeeded:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mInBackground:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDisableCache:Z

    .line 177
    iput-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryCompleteListener:Lcom/android/mms/ui/MessageListAdapter$QueryCompleteListener;

    .line 179
    iput-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/lang/String;

    .line 180
    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mOldCount:I

    .line 181
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mScrolling:Z

    .line 183
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasMmsUnread:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasSmsUnread:Z

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mUnreadTimestamp:J

    .line 188
    iput-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimSms:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->VCardIndicatorObe:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;

    .line 198
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$2;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->ReportIndicatorObe:Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;

    .line 218
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    .line 219
    iput p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mThreadType:I

    .line 220
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 223
    iput-boolean p4, p0, Lcom/android/mms/ui/MessageListAdapter;->mUseDefaultColumnsMap:Z

    .line 224
    if-nez p4, :cond_0

    if-nez p3, :cond_1

    .line 225
    :cond_0
    sget-object v0, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    .line 229
    :goto_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/MessageListAdapter;Lcom/android/mms/ui/MessageListAdapter$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->VCardIndicatorObe:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;

    invoke-virtual {v0, v4}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;->setRunInUIthread(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->VCardIndicatorObe:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;

    invoke-static {v0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->registerVCardIndicatorObserver(Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;)V

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->ReportIndicatorObe:Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;

    invoke-virtual {v0, v4}, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;->setRunInUIthread(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->ReportIndicatorObe:Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;

    invoke-static {v0}, Lcom/android/mms/util/ReportIndicatorCache;->registerReportIndicatorObserver(Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;)V

    .line 237
    return-void

    .line 227
    :cond_1
    new-instance v0, Lcom/android/mms/msg/util/ColumnsMap;

    invoke-direct {v0, p3}, Lcom/android/mms/msg/util/ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListAdapter;Landroid/database/Cursor;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListAdapter;->preloadMMStoCacheStep1(Landroid/database/Cursor;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/MessageListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasMmsUnread:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/MessageListAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mUnreadTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1230(Lcom/android/mms/ui/MessageListAdapter;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mUnreadTimestamp:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mUnreadTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/MessageListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasSmsUnread:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageListAdapter;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/MessageListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDisableCache:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageListAdapter;)Lcom/android/mms/ui/MessageListAdapter$QueryCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryCompleteListener:Lcom/android/mms/ui/MessageListAdapter$QueryCompleteListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MessageListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MessageListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequeryNeeded:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/MessageListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequeryNeeded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/MessageListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimSms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListAdapter;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->preloadMMStoCacheStep2(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/mms/ui/MessageListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequerying:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mUseDefaultColumnsMap:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/MessageListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasNewMsg:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private createAbstractMessage(Lcom/android/mms/msg/util/MessageDataAdapter;I)Lcom/android/mms/msg/AbstractMessage;
    .locals 9
    .parameter "adapter"
    .parameter "msgType"

    .prologue
    .line 572
    const/4 v3, 0x0

    .line 574
    .local v3, msg:Lcom/android/mms/msg/AbstractMessage;
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mThreadType:I

    invoke-static {v6, p1, v7}, Lcom/android/mms/msg/AbstractMessage;->create(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v3

    .line 576
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 577
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/mms/msg/AbstractMessage;->setHighLightStr(Ljava/lang/String;)V

    .line 579
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 598
    const-string v6, "MessageListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknow message type > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unknown message type."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v3

    .line 607
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #msg:Lcom/android/mms/msg/AbstractMessage;
    .local v4, msg:Lcom/android/mms/msg/AbstractMessage;
    :goto_0
    return-object v4

    .line 581
    .end local v4           #msg:Lcom/android/mms/msg/AbstractMessage;
    .restart local v3       #msg:Lcom/android/mms/msg/AbstractMessage;
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v1

    .line 583
    .local v1, key:J
    iget-boolean v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDisableCache:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequeryNeeded:Z

    if-nez v6, :cond_1

    .line 586
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, type:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v6, "sms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 588
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageCache:Lcom/android/mms/util/MessageCache;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/android/mms/util/MessageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #key:J
    .end local v5           #type:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v4, v3

    .line 603
    .end local v3           #msg:Lcom/android/mms/msg/AbstractMessage;
    .restart local v4       #msg:Lcom/android/mms/msg/AbstractMessage;
    goto :goto_0

    .line 594
    .end local v4           #msg:Lcom/android/mms/msg/AbstractMessage;
    .restart local v3       #msg:Lcom/android/mms/msg/AbstractMessage;
    :pswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mVvmCache:Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;

    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 667
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    return-wide p1

    .restart local p1
    :cond_0
    neg-long p1, p1

    goto :goto_0
.end method

.method private preloadMMStoCacheStep1(Landroid/database/Cursor;Landroid/app/Activity;)V
    .locals 10
    .parameter "c"
    .parameter "act"

    .prologue
    .line 860
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportpreloadMMStoCache()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 862
    const/4 v2, 0x0

    .local v2, MsgCount:I
    const/4 v0, 0x0

    .local v0, AttachCount:I
    const/4 v1, 0x0

    .line 863
    .local v1, MmsCount:I
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 868
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mMmsQueryDataCache:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 874
    new-instance v3, Lcom/android/mms/msg/util/MessageDataAdapter;

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    iget-object v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    invoke-direct {v3, v8, p1, v9}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;)V

    .line 875
    .local v3, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x14

    if-ge v1, v8, :cond_2

    .line 877
    const-string v8, "mms"

    invoke-virtual {v3}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 879
    const/4 v8, 0x4

    if-ge v0, v8, :cond_3

    const/4 v8, 0x7

    if-ge v2, v8, :cond_3

    .line 881
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v7

    .line 882
    .local v7, msg1:Lcom/android/mms/msg/AbstractMessage;
    if-eqz v7, :cond_0

    .line 883
    invoke-virtual {v7}, Lcom/android/mms/msg/AbstractMessage;->getAttachmentCount()I

    move-result v8

    add-int/2addr v0, v8

    .line 885
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 887
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->cloneCursorByPosition(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 888
    .local v6, mc:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 889
    new-instance v4, Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    invoke-direct {v4, v8, v6, v9}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;)V

    .line 890
    .local v4, adapter1:Lcom/android/mms/msg/util/MessageDataAdapter;
    if-eqz v4, :cond_1

    .line 891
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mMmsQueryDataCache:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    .end local v7           #msg1:Lcom/android/mms/msg/AbstractMessage;
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 918
    .end local v0           #AttachCount:I
    .end local v1           #MmsCount:I
    .end local v2           #MsgCount:I
    .end local v3           #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v4           #adapter1:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v6           #mc:Landroid/database/Cursor;
    :cond_2
    :goto_2
    return-void

    .line 895
    .restart local v0       #AttachCount:I
    .restart local v1       #MmsCount:I
    .restart local v2       #MsgCount:I
    .restart local v3       #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->cloneCursorByPosition(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 896
    .restart local v6       #mc:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 897
    new-instance v4, Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    invoke-direct {v4, v8, v6, v9}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;)V

    .line 898
    .restart local v4       #adapter1:Lcom/android/mms/msg/util/MessageDataAdapter;
    if-eqz v4, :cond_1

    .line 899
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mMmsQueryDataCache:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 907
    .end local v4           #adapter1:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v6           #mc:Landroid/database/Cursor;
    :cond_4
    const-string v8, "sms"

    invoke-virtual {v3}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_5

    .line 911
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 913
    .end local v3           #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    :catch_0
    move-exception v5

    .line 914
    .local v5, e:Landroid/database/CursorIndexOutOfBoundsException;
    invoke-virtual {v5}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2
.end method

.method private preloadMMStoCacheStep2(Landroid/app/Activity;)V
    .locals 12
    .parameter "act"

    .prologue
    const/16 v11, 0x4e40

    const/4 v9, 0x0

    .line 923
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mMmsQueryDataCache:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportpreloadMMStoCache()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 925
    const/4 v2, 0x0

    .line 926
    .local v2, execute:I
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mMmsQueryDataCache:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 929
    .local v0, count:I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mScrolling:Z

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequerying:Z

    if-nez v8, :cond_3

    if-lez v0, :cond_3

    const/4 v8, 0x2

    if-ge v2, v8, :cond_3

    .line 931
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mMmsQueryDataCache:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/msg/util/MessageDataAdapter;

    .line 932
    .local v1, data:Lcom/android/mms/msg/util/MessageDataAdapter;
    add-int/lit8 v0, v0, -0x1

    .line 933
    if-eqz v1, :cond_0

    .line 934
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v5

    .line 936
    .local v5, msg:Lcom/android/mms/msg/AbstractMessage;
    if-eqz v5, :cond_2

    instance-of v8, v5, Lcom/android/mms/msg/RelatedMultimediaMessage;

    if-eqz v8, :cond_2

    .line 937
    check-cast v5, Lcom/android/mms/msg/RelatedMultimediaMessage;

    .end local v5           #msg:Lcom/android/mms/msg/AbstractMessage;
    invoke-virtual {v5}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageBody()Lcom/android/mms/model/Model;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/SlideshowModel;

    .line 938
    .local v7, slideshow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v7, :cond_2

    .line 939
    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/SlideModel;

    .line 940
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 941
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v4

    .line 942
    .local v4, model:Lcom/android/mms/model/ImageModel;
    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap()V

    goto :goto_1

    .line 948
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #model:Lcom/android/mms/model/ImageModel;
    .end local v6           #slide:Lcom/android/mms/model/SlideModel;
    .end local v7           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mMmsQueryDataCache:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 949
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 954
    .end local v1           #data:Lcom/android/mms/msg/util/MessageDataAdapter;
    :cond_3
    iget-boolean v8, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequerying:Z

    if-eqz v8, :cond_5

    .line 955
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mMmsQueryDataCache:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 970
    .end local v0           #count:I
    .end local v2           #execute:I
    :cond_4
    :goto_2
    return-void

    .line 959
    .restart local v0       #count:I
    .restart local v2       #execute:I
    :cond_5
    iget-boolean v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mScrolling:Z

    if-nez v8, :cond_4

    .line 964
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mMmsQueryDataCache:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 965
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    invoke-virtual {v8, v11}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 966
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method

.method private setMeOthersView(Landroid/content/Context;Landroid/view/View;Lcom/android/mms/msg/AbstractMessage;)V
    .locals 11
    .parameter "m_ctx"
    .parameter "convertView"
    .parameter "msg"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 376
    const/4 v1, 0x3

    .line 377
    .local v1, LEFT:I
    const/4 v2, 0x5

    .line 378
    .local v2, RIGHT:I
    const/4 v3, 0x0

    .line 379
    .local v3, VISIBLE:I
    const/16 v0, 0x8

    .line 380
    .local v0, GONE:I
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;

    .line 381
    .local v4, holder:Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;
    invoke-virtual {p3}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p3}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 382
    :cond_0
    iget v5, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mMsgViewType:I

    if-eq v5, v8, :cond_1

    .line 383
    iget-object v5, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mSensor:Landroid/widget/LinearLayout;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 384
    iget-object v5, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mLeftPadding:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v5, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mRightPadding:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_1
    iget v5, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mBubbleFlag:I

    if-ne v5, v8, :cond_2

    .line 389
    iget-object v5, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mMsgView:Landroid/view/View;

    const-string v6, "message_bg_left"

    const v7, 0x7f02016c

    invoke-static {p1, v5, v6, v7, v9}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->changeBgDrawable(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V

    .line 392
    iput v9, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mBubbleFlag:I

    .line 406
    :cond_2
    :goto_0
    return-void

    .line 395
    :cond_3
    iget v5, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mMsgViewType:I

    if-eq v5, v8, :cond_4

    .line 396
    iget-object v5, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mSensor:Landroid/widget/LinearLayout;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 397
    iget-object v5, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mLeftPadding:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v5, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mRightPadding:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_4
    iget v5, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mBubbleFlag:I

    if-eq v5, v8, :cond_2

    .line 401
    iget-object v5, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mMsgView:Landroid/view/View;

    const-string v6, ""

    const v7, 0x7f02016b

    invoke-static {p1, v5, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->changeBgDrawable(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V

    .line 403
    iput v8, v4, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mBubbleFlag:I

    goto :goto_0
.end method

.method private updateSimSmsReadStatus(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1281
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    move-object v0, v1

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1282
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimSms:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimSms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getLowPriorityHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/MessageListAdapter$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageListAdapter$3;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public IsNeedRequery()Z
    .locals 1

    .prologue
    .line 1364
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequeryNeeded:Z

    return v0
.end method

.method public SetActivityInBackground(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1367
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mInBackground:Z

    .line 1368
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 340
    instance-of v4, p1, Lcom/android/mms/view/MessageView;

    if-eqz v4, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    .line 343
    .local v0, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    const/4 v2, 0x0

    .line 347
    .local v2, msg:Lcom/android/mms/msg/AbstractMessage;
    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, type:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextMsg:Lcom/android/mms/msg/TextMessageByCursor;

    .line 352
    :cond_0
    if-nez v2, :cond_1

    .line 354
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 362
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 364
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/mms/util/ContactNameCache;->getMePhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/mms/msg/AbstractMessage;->setMePhoto(Landroid/graphics/Bitmap;)V

    move-object v4, p1

    .line 366
    check-cast v4, Lcom/android/mms/view/MessageView;

    invoke-interface {v4, v2}, Lcom/android/mms/view/MessageView;->bindTo(Lcom/android/mms/msg/AbstractMessage;)V

    .line 368
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMergeLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 369
    invoke-direct {p0, p2, p1, v2}, Lcom/android/mms/ui/MessageListAdapter;->setMeOthersView(Landroid/content/Context;Landroid/view/View;Lcom/android/mms/msg/AbstractMessage;)V

    .line 374
    .end local v0           #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v2           #msg:Lcom/android/mms/msg/AbstractMessage;
    .end local v3           #type:Ljava/lang/String;
    :cond_2
    return-void

    .line 356
    .restart local v0       #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    .restart local v2       #msg:Lcom/android/mms/msg/AbstractMessage;
    .restart local v3       #type:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 357
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelQuery()V
    .locals 2

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    iget v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 1388
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    const/16 v1, 0x4e40

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 1389
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    const/16 v1, 0x4e3f

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 1391
    :cond_0
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 265
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v3, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_4

    .line 270
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 271
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 273
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mOldCount:I

    .line 275
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v3, v7}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    .line 277
    :cond_4
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    .line 279
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 280
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 281
    iput-boolean v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataValid:Z

    .line 282
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v3, v7}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    goto :goto_0

    .line 287
    :cond_6
    new-instance v4, Lcom/android/mms/msg/util/MessageDataAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    invoke-direct {v4, v3, v5, v6}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;)V

    iput-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    .line 289
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextMsg:Lcom/android/mms/msg/TextMessageByCursor;

    if-nez v3, :cond_7

    .line 290
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 291
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 293
    new-instance v3, Lcom/android/mms/msg/TextMessageByCursor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    iget v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mThreadType:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/mms/msg/TextMessageByCursor;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    iput-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextMsg:Lcom/android/mms/msg/TextMessageByCursor;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 304
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextMsg:Lcom/android/mms/msg/TextMessageByCursor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v3, v4}, Lcom/android/mms/msg/TextMessageByCursor;->setDataAdapter(Lcom/android/mms/msg/util/MessageDataAdapter;)V

    .line 307
    :cond_8
    if-eqz p1, :cond_d

    .line 308
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 309
    :cond_9
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 310
    :cond_a
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mRowIDColumn:I

    .line 311
    iput-boolean v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataValid:Z

    .line 313
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 323
    :cond_b
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    move-object v2, v3

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 325
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimSms:Ljava/util/ArrayList;

    if-nez v3, :cond_c

    .line 327
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimSms:Ljava/util/ArrayList;

    .line 329
    :cond_c
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 330
    .local v1, position:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mSimSms:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListAdapter;->copyCursorIndexToStructure(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 331
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 297
    .end local v1           #position:I
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_1

    .line 315
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_d
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mRowIDColumn:I

    .line 316
    iput-boolean v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataValid:Z

    .line 318
    if-eqz p1, :cond_b

    .line 319
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetInvalidated()V

    goto :goto_2
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListAdapter;->updateSimSmsReadStatus(Landroid/database/Cursor;)V

    .line 249
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    iput-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    .line 256
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->clear()V

    .line 258
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mVvmCache:Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mVvmCache:Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;->clear()V

    .line 260
    :cond_1
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method copyCursorIndexToStructure(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 16
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageListAdapter$SimSms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1328
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    .local v12, simSms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MessageListAdapter$SimSms;>;"
    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1330
    const-string v14, "index_on_sim"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1331
    .local v5, index1:I
    const-string v14, "read"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1332
    .local v6, index2:I
    const-string v14, "is_cdma_format"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1334
    .local v7, index3:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1335
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 1337
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1338
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1339
    .local v8, ios:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1340
    .local v11, read:I
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1341
    .local v9, isCdmaFormat:I
    invoke-static {v8}, Lcom/android/mms/util/SimIndexUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    if-nez v11, :cond_2

    .line 1342
    new-instance v13, Lcom/android/mms/ui/MessageListAdapter$SimSms;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/mms/ui/MessageListAdapter$SimSms;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 1343
    .local v13, sms:Lcom/android/mms/ui/MessageListAdapter$SimSms;
    invoke-static {v8}, Lcom/android/mms/util/SimIndexUtil;->getSimIndexes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageListAdapter$SimSms;->mIndexOnSim:Ljava/util/ArrayList;

    .line 1344
    const/4 v14, 0x1

    if-ne v9, v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    iput-boolean v14, v13, Lcom/android/mms/ui/MessageListAdapter$SimSms;->mIsCdmaFormat:Z

    .line 1347
    const/4 v1, 0x1

    .line 1348
    .local v1, add:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageListAdapter;->mSimSms:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/MessageListAdapter$SimSms;

    .line 1349
    .local v10, item:Lcom/android/mms/ui/MessageListAdapter$SimSms;
    iget-object v14, v10, Lcom/android/mms/ui/MessageListAdapter$SimSms;->mIndexOnSim:Ljava/util/ArrayList;

    iget-object v15, v13, Lcom/android/mms/ui/MessageListAdapter$SimSms;->mIndexOnSim:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    iget-boolean v14, v10, Lcom/android/mms/ui/MessageListAdapter$SimSms;->mIsCdmaFormat:Z

    iget-boolean v15, v13, Lcom/android/mms/ui/MessageListAdapter$SimSms;->mIsCdmaFormat:Z

    if-ne v14, v15, :cond_0

    .line 1350
    const/4 v1, 0x0

    .line 1355
    .end local v10           #item:Lcom/android/mms/ui/MessageListAdapter$SimSms;
    :cond_1
    const/4 v14, 0x1

    if-ne v1, v14, :cond_2

    .line 1356
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    .end local v1           #add:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v13           #sms:Lcom/android/mms/ui/MessageListAdapter$SimSms;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1344
    .restart local v13       #sms:Lcom/android/mms/ui/MessageListAdapter$SimSms;
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 1360
    .end local v8           #ios:Ljava/lang/String;
    .end local v9           #isCdmaFormat:I
    .end local v11           #read:I
    .end local v13           #sms:Lcom/android/mms/ui/MessageListAdapter$SimSms;
    :cond_4
    return-object v12
.end method

.method public getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;
    .locals 8
    .parameter "adapter"

    .prologue
    .line 613
    if-eqz p1, :cond_0

    .line 614
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v4

    .line 615
    .local v4, type:Ljava/lang/String;
    const-string v5, "sms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 616
    const/4 v2, 0x0

    .line 656
    :goto_0
    return-object v2

    .line 619
    .end local v4           #type:Ljava/lang/String;
    :cond_0
    monitor-enter p0

    .line 620
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v4

    .line 622
    .restart local v4       #type:Ljava/lang/String;
    const/4 v2, 0x0

    .line 623
    .local v2, msg:Lcom/android/mms/msg/AbstractMessage;
    const/4 v3, 0x0

    .line 625
    .local v3, msgType:I
    const-string v5, "htcmsgs"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 626
    const-string v5, "vvm"

    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcMsgType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 628
    const/4 v3, 0x1

    .line 629
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mVvmCache:Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;

    if-nez v5, :cond_1

    new-instance v5, Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    iput-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mVvmCache:Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;

    .line 630
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mVvmCache:Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;

    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #msg:Lcom/android/mms/msg/AbstractMessage;
    check-cast v2, Lcom/android/mms/msg/AbstractMessage;

    .line 641
    .restart local v2       #msg:Lcom/android/mms/msg/AbstractMessage;
    :cond_2
    :goto_1
    if-nez v2, :cond_5

    .line 644
    invoke-direct {p0, p1, v3}, Lcom/android/mms/ui/MessageListAdapter;->createAbstractMessage(Lcom/android/mms/msg/util/MessageDataAdapter;I)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v2

    .line 656
    :cond_3
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 658
    .end local v2           #msg:Lcom/android/mms/msg/AbstractMessage;
    .end local v3           #msgType:I
    .end local v4           #type:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 634
    .restart local v2       #msg:Lcom/android/mms/msg/AbstractMessage;
    .restart local v3       #msgType:I
    .restart local v4       #type:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v0

    .line 637
    .local v0, key:J
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageCache:Lcom/android/mms/util/MessageCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/util/MessageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #msg:Lcom/android/mms/msg/AbstractMessage;
    check-cast v2, Lcom/android/mms/msg/AbstractMessage;

    .restart local v2       #msg:Lcom/android/mms/msg/AbstractMessage;
    goto :goto_1

    .line 649
    .end local v0           #key:J
    :cond_5
    const-string v5, "sms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 650
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsLockedFlag()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/mms/msg/AbstractMessage;->lock(Z)V

    goto :goto_2

    .line 651
    :cond_6
    const-string v5, "mms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 652
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsLockedFlag()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/mms/msg/AbstractMessage;->lock(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 8
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MessageItem;

    .line 410
    .local v7, item:Lcom/android/mms/ui/MessageItem;
    if-nez v7, :cond_0

    .line 412
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 418
    :goto_0
    return-object v0

    .line 414
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v6

    move-object v0, v7

    .line 415
    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v6, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v1, "MessageListAdapter"

    invoke-virtual {v6}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #item:Lcom/android/mms/ui/MessageItem;
    :cond_0
    move-object v0, v7

    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getItemCompactViewType(I)I
    .locals 7
    .parameter "position"

    .prologue
    const/4 v4, 0x2

    .line 747
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 748
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v6, v6, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgType:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 749
    .local v3, type:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v6, v6, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgId:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 750
    .local v1, msgId:J
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1, v2, v5}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 752
    .local v0, msg:Lcom/android/mms/ui/MessageItem;
    if-nez v0, :cond_1

    .line 753
    const-string v5, "MessageListAdapter"

    const-string v6, "getItemViewType, msg == null, return VIEW_TYPE_NOTIFICATION for view type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    :goto_0
    return v4

    .line 756
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 757
    const/4 v4, 0x1

    goto :goto_0

    .line 758
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 760
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 761
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isRelatedMMS()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 762
    const/4 v4, 0x4

    goto :goto_0

    .line 764
    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    .line 768
    .end local v0           #msg:Lcom/android/mms/ui/MessageItem;
    .end local v1           #msgId:J
    .end local v3           #type:Ljava/lang/String;
    :cond_4
    const-string v4, "MessageListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItemViewType  position >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v4, "MessageListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItemViewType  cursor num >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unknown message type."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getItemViewType(I)I
    .locals 8
    .parameter "position"

    .prologue
    const/4 v5, 0x2

    .line 688
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 689
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    .line 690
    .local v0, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v3

    .line 691
    .local v3, msg:Lcom/android/mms/msg/AbstractMessage;
    if-nez v3, :cond_2

    .line 694
    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v4

    .line 695
    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v6, "sms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 735
    .end local v4           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 699
    .restart local v4       #type:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextMsg:Lcom/android/mms/msg/TextMessageByCursor;

    .line 702
    .end local v4           #type:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    .line 703
    .local v1, isIncoming:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMergeLayout()Z

    move-result v6

    if-nez v6, :cond_3

    .line 704
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 705
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v1

    .line 708
    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 710
    if-nez v1, :cond_4

    .line 711
    const/4 v5, 0x6

    goto :goto_0

    .line 712
    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    .line 713
    :cond_5
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v6

    if-nez v6, :cond_0

    .line 716
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v2, v3

    .line 717
    check-cast v2, Lcom/android/mms/msg/MultimediaMessage;

    .line 718
    .local v2, mmsg:Lcom/android/mms/msg/MultimediaMessage;
    invoke-virtual {v2}, Lcom/android/mms/msg/MultimediaMessage;->withMixedMessageBody()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 720
    if-nez v1, :cond_6

    .line 721
    const/4 v5, 0x7

    goto :goto_0

    .line 722
    :cond_6
    const/4 v5, 0x3

    goto :goto_0

    .line 723
    :cond_7
    invoke-virtual {v2}, Lcom/android/mms/msg/MultimediaMessage;->withRelatedMessageBody()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 725
    if-nez v1, :cond_8

    .line 726
    const/16 v5, 0x8

    goto :goto_0

    .line 727
    :cond_8
    const/4 v5, 0x4

    goto :goto_0

    .line 731
    .end local v2           #mmsg:Lcom/android/mms/msg/MultimediaMessage;
    :cond_9
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isVvm()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 733
    if-nez v1, :cond_a

    .line 734
    const/16 v5, 0x9

    goto :goto_0

    .line 735
    :cond_a
    const/4 v5, 0x5

    goto :goto_0

    .line 739
    .end local v0           #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v1           #isIncoming:Z
    .end local v3           #msg:Lcom/android/mms/msg/AbstractMessage;
    :cond_b
    const-string v5, "MessageListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getItemViewType  position >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const-string v5, "MessageListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getItemViewType  cursor num >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unknown message type."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getUnreadTimestamp()J
    .locals 2

    .prologue
    .line 1407
    iget-wide v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mUnreadTimestamp:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x4e40

    .line 433
    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataValid:Z

    if-nez v4, :cond_0

    .line 434
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "this should only be called when the cursor is valid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 440
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 441
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t move cursor to position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 445
    const-string v4, "MessageListAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    if-nez p2, :cond_3

    .line 450
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v5, p3}, Lcom/android/mms/ui/MessageListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 476
    .local v3, v:Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/mms/ui/MessageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 479
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mMmsQueryDataCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportpreloadMMStoCache()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 480
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    invoke-virtual {v4, v7}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 481
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 485
    :cond_2
    return-object v3

    .line 452
    .end local v3           #v:Landroid/view/View;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;

    .line 454
    .local v1, holder:Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;
    const/4 v2, -0x1

    .line 457
    .local v2, msgType:I
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 462
    :goto_1
    if-eqz v1, :cond_5

    iget v4, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mMsgViewType:I

    if-ne v4, v2, :cond_5

    .line 464
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isLast()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 465
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mIsLast:Z

    .line 469
    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 470
    move-object v3, p2

    .restart local v3       #v:Landroid/view/View;
    goto :goto_0

    .line 458
    .end local v3           #v:Landroid/view/View;
    :catch_1
    move-exception v0

    .line 459
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "MessageListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " exception >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 467
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mIsLast:Z

    goto :goto_2

    .line 472
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v5, p3}, Lcom/android/mms/ui/MessageListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .restart local v3       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 778
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMergeLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const/16 v0, 0x9

    .line 784
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public hasCountChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1380
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOldCount:I

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMmsUnread()Z
    .locals 1

    .prologue
    .line 1399
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasMmsUnread:Z

    return v0
.end method

.method public hasNewMsg()Z
    .locals 2

    .prologue
    .line 1372
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasNewMsg:Z

    .line 1373
    .local v0, flag:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasNewMsg:Z

    .line 1374
    return v0
.end method

.method public hasSmsUnread()Z
    .locals 1

    .prologue
    .line 1403
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasSmsUnread:Z

    return v0
.end method

.method public hasUnread()Z
    .locals 1

    .prologue
    .line 1394
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasSmsUnread:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mHasMmsUnread:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newCompactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030019

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, v:Landroid/view/View;
    move-object v1, v0

    .line 563
    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListItem;->setCaller(Landroid/app/Activity;)V

    .line 564
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 492
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    if-nez v8, :cond_0

    .line 493
    new-instance v9, Lcom/android/mms/msg/util/MessageDataAdapter;

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    invoke-direct {v9, v8, v10, v11}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;)V

    iput-object v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    .line 497
    .local v0, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    const/4 v3, 0x0

    .line 500
    .local v3, msg:Lcom/android/mms/msg/AbstractMessage;
    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v6

    .line 502
    .local v6, type:Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v8, "mms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "htcmsgs"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 503
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v3

    .line 506
    :cond_2
    new-instance v2, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;

    const/4 v8, 0x1

    invoke-interface {p2}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    invoke-direct {v2, v8, v9}, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;-><init>(IZ)V

    .line 508
    .local v2, holder:Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;
    const/4 v4, -0x1

    .line 511
    .local v4, msgType:I
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 516
    :goto_0
    iput v4, v2, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mMsgViewType:I

    .line 517
    const/4 v8, 0x0

    iput-object v8, v2, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 519
    if-nez v3, :cond_3

    .line 520
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextMsg:Lcom/android/mms/msg/TextMessageByCursor;

    .line 523
    :cond_3
    const/4 v7, 0x0

    .line 524
    .local v7, v:Landroid/view/View;
    if-nez v3, :cond_6

    .line 525
    const-string v8, "MessageListAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can not get cachecd message in newView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v7, Landroid/widget/TextView;

    .end local v7           #v:Landroid/view/View;
    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 533
    .restart local v7       #v:Landroid/view/View;
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMergeLayout()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 534
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v8

    if-nez v8, :cond_4

    .line 535
    const v8, 0x7f0e0088

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v2, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mSensor:Landroid/widget/LinearLayout;

    .line 536
    const v8, 0x7f0e0087

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v2, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mLeftPadding:Landroid/view/View;

    .line 537
    const v8, 0x7f0e008a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v2, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mRightPadding:Landroid/view/View;

    .line 539
    :cond_4
    const v8, 0x7f0e0089

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v2, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mMsgView:Landroid/view/View;

    .line 540
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 541
    const/4 v8, 0x1

    iput v8, v2, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mBubbleFlag:I

    .line 542
    iget-object v8, v2, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mMsgView:Landroid/view/View;

    const-string v9, "message_bg_left"

    const v10, 0x7f02016c

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->changeBgDrawable(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V

    .line 554
    :cond_5
    :goto_2
    invoke-virtual {v7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 555
    return-object v7

    .line 512
    .end local v7           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 513
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "MessageListAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " exception >"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 528
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v7       #v:Landroid/view/View;
    :cond_6
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/mms/MmsApp;->getMessageViewFactory(Landroid/content/Context;)Lcom/android/mms/view/MessageViewFactory;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/view/MessageViewFactory;->createView(Lcom/android/mms/msg/AbstractMessage;)Lcom/android/mms/view/MessageView;

    move-result-object v5

    .line 529
    .local v5, msgView:Lcom/android/mms/view/MessageView;
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-interface {v5, v8}, Lcom/android/mms/view/MessageView;->setCaller(Landroid/app/Activity;)V

    move-object v7, v5

    .line 530
    check-cast v7, Landroid/view/View;

    goto :goto_1

    .line 547
    .end local v5           #msgView:Lcom/android/mms/view/MessageView;
    :cond_7
    const/4 v8, 0x2

    iput v8, v2, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mBubbleFlag:I

    .line 548
    iget-object v8, v2, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mMsgView:Landroid/view/View;

    const-string v9, ""

    const v10, 0x7f02016b

    const/4 v11, 0x2

    invoke-static {p1, v8, v9, v10, v11}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->changeBgDrawable(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 423
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 428
    return-void
.end method

.method protected onContentChanged()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 832
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    iget v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 856
    :goto_0
    return-void

    .line 837
    :cond_1
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDisableCache:Z

    .line 841
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInBackground:Z

    if-eqz v0, :cond_2

    .line 842
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequeryNeeded:Z

    goto :goto_0

    .line 847
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequerying:Z

    if-eqz v0, :cond_3

    .line 848
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequeryNeeded:Z

    .line 849
    const-string v0, "MessageListAdapter"

    const-string v1, "onContentChanged, the previous requery is still running, don\'t do async requery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 852
    :cond_3
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequerying:Z

    .line 854
    const-string v0, "MessageListAdapter"

    const-string v1, "onContentChanged, do async requery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mToken:I

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelection:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectionArgs:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mOrderBy:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MessageListAdapter;->startAsyncQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Z)V
    .locals 12
    .parameter "scrolling"

    .prologue
    const/16 v11, 0x4e40

    .line 1231
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mScrolling:Z

    .line 1232
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportFillCache()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1234
    if-nez p1, :cond_3

    .line 1235
    const/16 v6, 0xa

    .line 1236
    .local v6, s:I
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1237
    .local v1, count:I
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 1238
    .local v5, pos:I
    sub-int v8, v5, v6

    if-gez v8, :cond_0

    const/4 v7, 0x0

    .line 1239
    .local v7, start:I
    :goto_0
    add-int v8, v5, v6

    if-le v8, v1, :cond_1

    move v3, v1

    .line 1240
    .local v3, end:I
    :goto_1
    move v4, v7

    .local v4, i:I
    :goto_2
    if-gt v4, v3, :cond_2

    .line 1241
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1242
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    .line 1243
    .local v0, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    .line 1240
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1238
    .end local v0           #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v7           #start:I
    :cond_0
    sub-int v7, v5, v6

    goto :goto_0

    .line 1239
    .restart local v7       #start:I
    :cond_1
    add-int v3, v5, v6

    goto :goto_1

    .line 1245
    .restart local v3       #end:I
    .restart local v4       #i:I
    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v5}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    .end local v1           #count:I
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #pos:I
    .end local v6           #s:I
    .end local v7           #start:I
    :cond_3
    :goto_3
    if-nez p1, :cond_4

    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mMmsQueryDataCache:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportpreloadMMStoCache()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1253
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    invoke-virtual {v8, v11}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 1254
    iget-object v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1256
    :cond_4
    return-void

    .line 1247
    .restart local v6       #s:I
    :catch_0
    move-exception v2

    .line 1248
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public setHighLightStr(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/lang/String;

    .line 211
    :cond_0
    return-void
.end method

.method public setQueryCompleteListener(Lcom/android/mms/ui/MessageListAdapter$QueryCompleteListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryCompleteListener:Lcom/android/mms/ui/MessageListAdapter$QueryCompleteListener;

    .line 1222
    return-void
.end method

.method public startAsyncQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 793
    iput p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mToken:I

    .line 794
    iput-object p2, p0, Lcom/android/mms/ui/MessageListAdapter;->mCookie:Ljava/lang/Object;

    .line 795
    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mUri:Landroid/net/Uri;

    .line 796
    iput-object p4, p0, Lcom/android/mms/ui/MessageListAdapter;->mProjection:[Ljava/lang/String;

    .line 797
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelection:Ljava/lang/String;

    .line 798
    iput-object p6, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectionArgs:[Ljava/lang/String;

    .line 799
    iput-object p7, p0, Lcom/android/mms/ui/MessageListAdapter;->mOrderBy:Ljava/lang/String;

    .line 803
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    const/16 v4, 0x4e3f

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 805
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    const/16 v4, 0x4e3f

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 806
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x4e3f

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 807
    const/16 v3, 0x4e3f

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 809
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;-><init>()V

    .line 810
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    iput-object p3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 812
    iput-object p4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 813
    iput-object p5, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 814
    iput-object p6, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 815
    iput-object p7, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 816
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 817
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 819
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    if-eqz v3, :cond_0

    .line 820
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    const/16 v4, 0x4e3f

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 821
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mQueryHandler:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 822
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListAdapter;->isRequeryNeeded:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v0           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 825
    :catch_0
    move-exception v1

    .line 826
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method
