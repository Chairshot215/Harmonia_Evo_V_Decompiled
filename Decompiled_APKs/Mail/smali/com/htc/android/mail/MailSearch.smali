.class public Lcom/htc/android/mail/MailSearch;
.super Lcom/htc/app/HtcListActivity;
.source "MailSearch.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MailSearch$RequestHandler;,
        Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;,
        Lcom/htc/android/mail/MailSearch$UIHandler;,
        Lcom/htc/android/mail/MailSearch$QueryHandler;,
        Lcom/htc/android/mail/MailSearch$MailListAdapter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DELETE_CONFIRM:I = 0x2

.field private static final DELETE_ONEMAIL_CONFIRM:I = 0x1

.field static final MENU_ITEM_ACCEPT:I = 0xa

.field static final MENU_ITEM_DECLINED:I = 0xb

.field static final MENU_ITEM_DELETE:I = 0x3

.field static final MENU_ITEM_MARK_FLAG:I = 0x4

.field static final MENU_ITEM_MARK_FORWARD:I = 0x9

.field static final MENU_ITEM_MARK_READ:I = 0x2

.field static final MENU_ITEM_MOVE_TO:I = 0x5

.field static final MENU_ITEM_OPEN:I = 0x6

.field static final MENU_ITEM_PROPOSE_NEW_TIME:I = 0xd

.field static final MENU_ITEM_REPLY:I = 0x7

.field static final MENU_ITEM_REPLY_ALL:I = 0x8

.field static final MENU_ITEM_SEE_CONVERSATION:I = 0x1

.field static final MENU_ITEM_TENTATIVE_ACCEPTED:I = 0xc

.field private static final MENU_SELECT_ALL:I = 0x1

.field private static final MENU_SELECT_NONE:I = 0x2

.field private static final REPLY_NORMAL_MAIL:I = 0x0

.field public static final RESULT_CODE_SEARCH_EMPTY:I = 0x2bc

.field private static final TAG:Ljava/lang/String; = "MailSearch"

.field private static final TOKEN_LOCAL_SEARCH:I = 0x0

.field private static final TOKEN_SERVER_SEARCH:I = 0x1


# instance fields
.field private MAIL_SORT_RULE:Ljava/lang/String;

.field private final OPEN_DETAIL_VIEW:I

.field private final SEARCH_MORE_2_WEEKS:J

.field private final SEARCH_SERVER_STATUS_ALL:I

.field private final SEARCH_SERVER_STATUS_INIT:I

.field private final SEARCH_SERVER_STATUS_PARTIAL:I

.field private allMenuID:[I

.field private clearText:Z

.field private confirmBatchMarkMailEvent:Landroid/content/DialogInterface$OnClickListener;

.field private confirmBatchMoveMail:Landroid/content/DialogInterface$OnClickListener;

.field private confirmDelMarkMailEvent2:Landroid/content/DialogInterface$OnClickListener;

.field doBatchDelete:Landroid/view/View$OnClickListener;

.field doBatchMarkRead:Landroid/view/View$OnClickListener;

.field doBatchMove:Landroid/view/View$OnClickListener;

.field doNothing:Landroid/view/View$OnClickListener;

.field private list:Lcom/htc/widget/HtcListView;

.field private long_press_accountId:J

.field private long_press_bMeetingMail:Z

.field private long_press_flag:I

.field private long_press_groupId:Ljava/lang/String;

.field private long_press_id:J

.field private long_press_mailboxId:J

.field private long_press_position:I

.field private long_press_read:I

.field private longpress_ItemHeader:Ljava/lang/String;

.field private longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mAccountCounts:I

.field private mAccountId:Ljava/lang/Long;

.field private mAdapter:Lcom/htc/android/mail/MailSearch$MailListAdapter;

.field private mContext:Landroid/content/Context;

.field mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

.field mFooterBarArea:Landroid/widget/FrameLayout;

.field mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field mFooterButton2:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field mFooterButton3:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private mFooterView:Landroid/widget/LinearLayout;

.field private mIsSearchSvrMailImmediately:Z

.field private mIsSearching:Z

.field private mIsShowServerMail:Z

.field mKeyListener:Landroid/view/View$OnKeyListener;

.field private mMailbox:Lcom/htc/android/mail/Mailbox;

.field private mMoveToAdapter:Lcom/htc/android/mail/MoveToAdapter;

.field private mNotFoundOnServer:Z

.field private mPartFactory:Landroid/view/LayoutInflater;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProjection:[Ljava/lang/String;

.field private mQueryHandler:Lcom/htc/android/mail/MailSearch$QueryHandler;

.field private mRefreshMailing:Z

.field private mRequestController:Lcom/htc/android/mail/AbsRequestController;

.field private mRequestHandler:Lcom/htc/android/mail/MailSearch$RequestHandler;

.field mResultContentObserver:Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;

.field private mSearchGreaterThan:J

.field private mSearchKey:Ljava/lang/String;

.field private mSearchLessThan:J

.field private mSearchMore:J

.field private mSearchServerStatus:I

.field private mSearchWhere:Ljava/lang/String;

.field private mSelectAllInit:Z

.field private mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

.field private mServerSearchUri:Landroid/net/Uri;

.field private mSortRule:Ljava/lang/String;

.field private mUIHandler:Lcom/htc/android/mail/MailSearch$UIHandler;

.field private mUri:Landroid/net/Uri;

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

.field private mWhere:Ljava/lang/String;

.field private markId:J

.field private privateCursor:Landroid/database/Cursor;

.field private reqMailboxId:J

.field private setBatchRead:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 85
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->allMenuID:[I

    .line 106
    const-wide/32 v0, 0x48190800

    iput-wide v0, p0, Lcom/htc/android/mail/MailSearch;->SEARCH_MORE_2_WEEKS:J

    .line 108
    iput v3, p0, Lcom/htc/android/mail/MailSearch;->SEARCH_SERVER_STATUS_INIT:I

    .line 109
    iput v4, p0, Lcom/htc/android/mail/MailSearch;->SEARCH_SERVER_STATUS_PARTIAL:I

    .line 110
    iput v7, p0, Lcom/htc/android/mail/MailSearch;->SEARCH_SERVER_STATUS_ALL:I

    .line 122
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mProjection:[Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mWhere:Ljava/lang/String;

    .line 125
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 127
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    .line 128
    iput-wide v5, p0, Lcom/htc/android/mail/MailSearch;->reqMailboxId:J

    .line 129
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mSearchWhere:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->mSortRule:Ljava/lang/String;

    .line 134
    iput-boolean v4, p0, Lcom/htc/android/mail/MailSearch;->clearText:Z

    .line 135
    const-string v0, "_internaldate DESC"

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->MAIL_SORT_RULE:Ljava/lang/String;

    .line 136
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/android/mail/MailSearch;->OPEN_DETAIL_VIEW:I

    .line 138
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;

    .line 139
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mProgressBar:Landroid/widget/ProgressBar;

    .line 140
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_groupId:Ljava/lang/String;

    .line 148
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    .line 149
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mContext:Landroid/content/Context;

    .line 150
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 152
    iput v3, p0, Lcom/htc/android/mail/MailSearch;->mAccountCounts:I

    .line 153
    iput-boolean v3, p0, Lcom/htc/android/mail/MailSearch;->mSelectAllInit:Z

    .line 154
    iput-boolean v3, p0, Lcom/htc/android/mail/MailSearch;->mIsSearchSvrMailImmediately:Z

    .line 156
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    .line 161
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mFooterBarArea:Landroid/widget/FrameLayout;

    .line 162
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    .line 163
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 164
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 165
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 166
    iput v3, p0, Lcom/htc/android/mail/MailSearch;->setBatchRead:I

    .line 167
    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->privateCursor:Landroid/database/Cursor;

    .line 168
    new-instance v0, Lcom/htc/android/mail/MailSearch$UIHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/mail/MailSearch$UIHandler;-><init>(Lcom/htc/android/mail/MailSearch;Lcom/htc/android/mail/MailSearch$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->mUIHandler:Lcom/htc/android/mail/MailSearch$UIHandler;

    .line 172
    iput-boolean v3, p0, Lcom/htc/android/mail/MailSearch;->mNotFoundOnServer:Z

    .line 174
    iput-boolean v3, p0, Lcom/htc/android/mail/MailSearch;->mIsSearching:Z

    .line 175
    iput-boolean v4, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    .line 176
    iput v3, p0, Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I

    .line 177
    iput-wide v5, p0, Lcom/htc/android/mail/MailSearch;->mSearchGreaterThan:J

    .line 178
    iput-wide v5, p0, Lcom/htc/android/mail/MailSearch;->mSearchLessThan:J

    .line 179
    const-wide/32 v0, 0x48190800

    iput-wide v0, p0, Lcom/htc/android/mail/MailSearch;->mSearchMore:J

    .line 181
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sSvrSummariesURI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->mServerSearchUri:Landroid/net/Uri;

    .line 360
    new-instance v0, Lcom/htc/android/mail/MailSearch$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailSearch$1;-><init>(Lcom/htc/android/mail/MailSearch;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->confirmBatchMoveMail:Landroid/content/DialogInterface$OnClickListener;

    .line 401
    new-instance v0, Lcom/htc/android/mail/MailSearch$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailSearch$2;-><init>(Lcom/htc/android/mail/MailSearch;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 420
    new-instance v0, Lcom/htc/android/mail/MailSearch$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailSearch$3;-><init>(Lcom/htc/android/mail/MailSearch;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->doNothing:Landroid/view/View$OnClickListener;

    .line 426
    new-instance v0, Lcom/htc/android/mail/MailSearch$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailSearch$4;-><init>(Lcom/htc/android/mail/MailSearch;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->doBatchMarkRead:Landroid/view/View$OnClickListener;

    .line 433
    new-instance v0, Lcom/htc/android/mail/MailSearch$5;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailSearch$5;-><init>(Lcom/htc/android/mail/MailSearch;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->doBatchDelete:Landroid/view/View$OnClickListener;

    .line 443
    new-instance v0, Lcom/htc/android/mail/MailSearch$6;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailSearch$6;-><init>(Lcom/htc/android/mail/MailSearch;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->doBatchMove:Landroid/view/View$OnClickListener;

    .line 1450
    new-instance v0, Lcom/htc/android/mail/MailSearch$10;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailSearch$10;-><init>(Lcom/htc/android/mail/MailSearch;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->confirmDelMarkMailEvent2:Landroid/content/DialogInterface$OnClickListener;

    .line 1456
    new-instance v0, Lcom/htc/android/mail/MailSearch$11;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailSearch$11;-><init>(Lcom/htc/android/mail/MailSearch;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->confirmBatchMarkMailEvent:Landroid/content/DialogInterface$OnClickListener;

    .line 1742
    new-instance v0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;-><init>(Lcom/htc/android/mail/MailSearch;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->mResultContentObserver:Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;

    .line 1826
    return-void

    .line 85
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Mailbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/MailSearch;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailSearch;->moveMarkMailtoFold2(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/MailSearch;JJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/htc/android/mail/MailSearch;->replyMailById(JJI)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/MailSearch;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/MailSearch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/android/mail/MailSearch;->isNeedToDeleteGlobalMail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/MailSearch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/android/mail/MailSearch;->deleteGlobalMail()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/MailSearch;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mServerSearchUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/android/mail/MailSearch;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/MailSearch;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/android/mail/MailSearch;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->MAIL_SORT_RULE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/MailSearch$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mQueryHandler:Lcom/htc/android/mail/MailSearch$QueryHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/android/mail/MailSearch;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/android/mail/MailSearch;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/android/mail/MailSearch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/android/mail/MailSearch;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I

    return p1
.end method

.method static synthetic access$2212(Lcom/htc/android/mail/MailSearch;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/android/mail/MailSearch;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailSearch;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/android/mail/MailSearch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/android/mail/MailSearch;->delMarkMail2()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/MailSearch$MailListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mAdapter:Lcom/htc/android/mail/MailSearch$MailListAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/android/mail/MailSearch;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->privateCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/android/mail/MailSearch;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch;->privateCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/htc/android/mail/MailSearch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/android/mail/MailSearch;->mSelectAllInit:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/htc/android/mail/MailSearch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/htc/android/mail/MailSearch;->mSelectAllInit:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/android/mail/MailSearch;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailSearch;->setCmdBarInit(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/android/mail/MailSearch;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/MailSearch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/android/mail/MailSearch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/android/mail/MailSearch;->mRefreshMailing:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/htc/android/mail/MailSearch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/htc/android/mail/MailSearch;->mRefreshMailing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/android/mail/MailSearch;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mSearchKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/mail/MailSearch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/android/mail/MailSearch;->mAccountCounts:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/util/SelectedMailMessages;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/MoveToAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mMoveToAdapter:Lcom/htc/android/mail/MoveToAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/AbsRequestController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    return v0
.end method

.method private addFooterView(Z)V
    .locals 5
    .parameter "addView"

    .prologue
    .line 1343
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 1344
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v1

    .line 1345
    .local v1, viewCount:I
    if-eqz p1, :cond_2

    .line 1346
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 1357
    .end local v1           #viewCount:I
    :cond_0
    :goto_0
    return-void

    .line 1349
    .restart local v1       #viewCount:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0

    .line 1351
    :cond_2
    if-ltz v1, :cond_0

    .line 1352
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    .line 1353
    .local v0, bRemove:Z
    const-string v2, "MailSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove footer view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cancelSearchMailOnServer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1177
    const-string v2, "MailSearch"

    const-string v3, "- cancel search global mail"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iput v4, p0, Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I

    .line 1179
    invoke-direct {p0, v4}, Lcom/htc/android/mail/MailSearch;->displayProgress(Z)V

    .line 1180
    iput-boolean v4, p0, Lcom/htc/android/mail/MailSearch;->mIsSearching:Z

    .line 1181
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;

    const v3, 0x2020010

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1182
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    const v2, 0x7f0b02b2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1184
    :cond_0
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelSearchGlobalMail(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :goto_0
    return-void

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private convertSearchTime(J)Ljava/lang/String;
    .locals 8
    .parameter "searchTime"

    .prologue
    .line 1412
    const/4 v1, 0x0

    .line 1413
    .local v1, strSearchTime:Ljava/lang/String;
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-gtz v3, :cond_1

    .line 1414
    const/4 v1, 0x0

    .line 1427
    :goto_0
    sget-boolean v3, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertSearchTime in UTC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    :cond_0
    return-object v1

    .line 1417
    :cond_1
    :try_start_0
    new-instance v2, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1418
    .local v2, tmp:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1419
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d-%02d-%02dT%02d:%02d:%02d.000Z"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Landroid/text/format/Time;->year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, v2, Landroid/text/format/Time;->monthDay:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, v2, Landroid/text/format/Time;->hour:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget v7, v2, Landroid/text/format/Time;->minute:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget v7, v2, Landroid/text/format/Time;->second:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1421
    .end local v2           #tmp:Landroid/text/format/Time;
    :catch_0
    move-exception v0

    .line 1422
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1423
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private delMarkMail2()V
    .locals 8

    .prologue
    .line 837
    sget-boolean v1, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailSearch"

    const-string v2, "delMarkMail2>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_0
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    .line 839
    .local v0, selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    iget-wide v1, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    iget-wide v3, p0, Lcom/htc/android/mail/MailSearch;->long_press_mailboxId:J

    iget-wide v5, p0, Lcom/htc/android/mail/MailSearch;->long_press_id:J

    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_groupId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    .line 840
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/util/SelectedMailMessages;->deleteMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V

    .line 841
    const/4 v0, 0x0

    .line 842
    sget-boolean v1, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MailSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try delete id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/mail/MailSearch;->long_press_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_1
    return-void
.end method

.method private deleteGlobalMail()V
    .locals 9

    .prologue
    .line 1432
    const-string v4, "MailSearch"

    const-string v5, "- delete global mail"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1435
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1436
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1439
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_account=%d AND _notaddTrack=1"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1440
    .local v3, where:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1441
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "_notaddTrack"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1442
    const-string v4, "_refMsgId"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1443
    const-string v4, "_smartCommand"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1444
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sNoNotifyMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1448
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #where:Ljava/lang/String;
    :goto_0
    return-void

    .line 1445
    :catch_0
    move-exception v2

    .line 1446
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayProgress(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 1340
    :goto_0
    return-void

    .line 1335
    :cond_0
    if-eqz p1, :cond_1

    .line 1336
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1338
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private forwardMailById(J)V
    .locals 5
    .parameter "id"

    .prologue
    .line 973
    const/4 v2, 0x0

    .line 974
    .local v2, url:Landroid/net/Uri;
    iget-boolean v3, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    if-eqz v3, :cond_2

    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/searchSvrMessages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 980
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const-class v4, Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v1, v3, v2, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 981
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "cmd"

    const-string v4, "forward"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    const-string v3, "accountID"

    iget-object v4, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 983
    const-string v3, "SetOrient"

    const-string v4, "InMail"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    const-string v3, "id"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 985
    iget-boolean v3, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    if-eqz v3, :cond_0

    .line 986
    const-string v3, "FromSearchSvrMailView"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 989
    :cond_0
    iget-wide v3, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-static {v3, v4}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 990
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/htc/android/mail/MailSearch;->long_press_bMeetingMail:Z

    if-eqz v3, :cond_1

    .line 991
    const-string v3, "cmd"

    const-string v4, "forwardMeeting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    const-string v3, "meetingView"

    iget-boolean v4, p0, Lcom/htc/android/mail/MailSearch;->long_press_bMeetingMail:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 993
    const-string v3, "meetingResp"

    const-string v4, "4"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailSearch;->startActivity(Landroid/content/Intent;)V

    .line 997
    return-void

    .line 977
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private isNeedToDeleteGlobalMail()Z
    .locals 3

    .prologue
    .line 1318
    const/4 v0, 0x1

    .line 1320
    .local v0, ret:Z
    iget v1, p0, Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I

    if-nez v1, :cond_1

    .line 1321
    const/4 v0, 0x1

    .line 1328
    :cond_0
    :goto_0
    return v0

    .line 1322
    :cond_1
    iget v1, p0, Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1323
    const/4 v0, 0x1

    goto :goto_0

    .line 1324
    :cond_2
    iget v1, p0, Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1325
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private meetingRespEvent(JIJ)V
    .locals 9
    .parameter "accountId"
    .parameter "respType"
    .parameter "markId"

    .prologue
    .line 1000
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1002
    .local v7, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    .line 1003
    const v0, 0x7f0b00f1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailSearch;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1017
    :goto_0
    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/String;

    .line 1018
    .local v8, dialogMsg:[Ljava/lang/String;
    const/4 v0, 0x0

    const v1, 0x7f0b01f5

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailSearch;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 1019
    const/4 v0, 0x1

    const v1, 0x7f0b01f4

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailSearch;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 1020
    const/4 v0, 0x2

    const v1, 0x7f0b01f6

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailSearch;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 1022
    new-instance v0, Lcom/htc/android/mail/MailSearch$8;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/MailSearch$8;-><init>(Lcom/htc/android/mail/MailSearch;JJI)V

    invoke-virtual {v7, v8, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1048
    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1049
    .end local v8           #dialogMsg:[Ljava/lang/String;
    :cond_0
    return-void

    .line 1004
    :cond_1
    const/4 v0, 0x6

    if-ne p3, v0, :cond_2

    .line 1005
    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailSearch;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 1006
    :cond_2
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    .line 1007
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_3

    .line 1008
    const v0, 0x7f0b00e8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailSearch;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 1011
    :cond_3
    const v0, 0x7f0b00e7

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailSearch;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method private moveMarkMailtoFold2(I)V
    .locals 11
    .parameter "which"

    .prologue
    .line 873
    sget-boolean v1, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailSearch"

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

    .line 875
    :cond_0
    iget-wide v1, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v8

    .line 876
    .local v8, account:Lcom/htc/android/mail/Account;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v1

    if-nez v1, :cond_2

    .line 887
    :cond_1
    :goto_0
    return-void

    .line 877
    :cond_2
    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_mailboxId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    .line 878
    .local v9, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v9, :cond_1

    .line 880
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->mMoveToAdapter:Lcom/htc/android/mail/MoveToAdapter;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v8, v9, p1, v2}, Lcom/htc/android/mail/MoveToAdapter;->getToMailbox(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;ILandroid/content/Context;)Lcom/htc/android/mail/Mailbox;

    move-result-object v10

    .line 881
    .local v10, toMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v10, :cond_1

    .line 883
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    .line 884
    .local v0, selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    iget-wide v1, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    iget-wide v3, p0, Lcom/htc/android/mail/MailSearch;->long_press_mailboxId:J

    iget-wide v5, p0, Lcom/htc/android/mail/MailSearch;->long_press_id:J

    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_groupId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    .line 885
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-wide v3, v10, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/util/SelectedMailMessages;->moveMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;J)V

    .line 886
    const/4 v0, 0x0

    .line 887
    goto :goto_0
.end method

.method private performSearchMailOnServer()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1191
    const-string v6, "MailSearch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "> performSearchMailOnServer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v8, v8, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mSearchKey:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1315
    :goto_0
    return-void

    .line 1196
    :cond_0
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-virtual {v6}, Lcom/htc/android/mail/util/SelectedMailMessages;->clear()V

    .line 1197
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/MailSearch;->showCmdBar(Z)V

    .line 1199
    iput-boolean v9, p0, Lcom/htc/android/mail/MailSearch;->mIsSearching:Z

    .line 1200
    invoke-direct {p0, v9}, Lcom/htc/android/mail/MailSearch;->displayProgress(Z)V

    .line 1201
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;

    const v7, 0x2020010

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1202
    .local v5, tv:Landroid/widget/TextView;
    if-eqz v5, :cond_1

    const v6, 0x7f0b02b7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1204
    :cond_1
    new-instance v3, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;

    invoke-direct {v3}, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;-><init>()V

    .line 1205
    .local v3, searchElement:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;
    new-instance v2, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;

    invoke-direct {v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;-><init>()V

    .line 1206
    .local v2, qE:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-eqz v6, :cond_2

    .line 1207
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v6, v6, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    iput-object v6, v2, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->collectionId:Ljava/lang/String;

    .line 1209
    :cond_2
    iput v9, v2, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->queryCondition:I

    .line 1210
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mSearchKey:Ljava/lang/String;

    iput-object v6, v2, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->FreeText:Ljava/lang/String;

    .line 1212
    iget-wide v6, p0, Lcom/htc/android/mail/MailSearch;->mSearchGreaterThan:J

    invoke-direct {p0, v6, v7}, Lcom/htc/android/mail/MailSearch;->convertSearchTime(J)Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, greaterThan:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1214
    iput-object v0, v2, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->dateGreaterThan:Ljava/lang/String;

    .line 1217
    :cond_3
    iget-wide v6, p0, Lcom/htc/android/mail/MailSearch;->mSearchLessThan:J

    invoke-direct {p0, v6, v7}, Lcom/htc/android/mail/MailSearch;->convertSearchTime(J)Ljava/lang/String;

    move-result-object v1

    .line 1218
    .local v1, lessThan:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1219
    iput-object v1, v2, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->dateLessThan:Ljava/lang/String;

    .line 1222
    :cond_4
    iget-object v6, v3, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->queryList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    move-object v4, v3

    .line 1225
    .local v4, searchElement2:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/MailSearch$9;

    invoke-direct {v7, p0, v4}, Lcom/htc/android/mail/MailSearch$9;-><init>(Lcom/htc/android/mail/MailSearch;Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1314
    const-string v6, "MailSearch"

    const-string v7, "< performSearchMailOnServer"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private replyAllMailById(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 938
    const/4 v1, 0x0

    .line 939
    .local v1, url:Landroid/net/Uri;
    iget-boolean v2, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    if-eqz v2, :cond_1

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/searchSvrMessages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 945
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const-class v3, Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 946
    .local v0, reply_intent:Landroid/content/Intent;
    const-string v2, "cmd"

    const-string v3, "replyall"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    const-string v2, "accountID"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 948
    const-string v2, "SetOrient"

    const-string v3, "InMail"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    const-string v2, "id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 950
    iget-boolean v2, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    if-eqz v2, :cond_0

    .line 951
    const-string v2, "FromSearchSvrMailView"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 954
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailSearch;->startActivity(Landroid/content/Intent;)V

    .line 955
    return-void

    .line 942
    .end local v0           #reply_intent:Landroid/content/Intent;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private replyMailById(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 913
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/mail/MailSearch;->replyMailById(JI)V

    .line 914
    return-void
.end method

.method private replyMailById(JI)V
    .locals 5
    .parameter "id"
    .parameter "replyType"

    .prologue
    .line 917
    const/4 v1, 0x0

    .line 918
    .local v1, url:Landroid/net/Uri;
    iget-boolean v2, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    if-eqz v2, :cond_2

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/searchSvrMessages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 924
    :goto_0
    sget-boolean v2, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replyMailById>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const-class v3, Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 926
    .local v0, replyall_intent:Landroid/content/Intent;
    const-string v2, "cmd"

    const-string v3, "reply"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    const-string v2, "accountID"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 928
    const-string v2, "SetOrient"

    const-string v3, "InMail"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string v2, "id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 930
    iget-boolean v2, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    if-eqz v2, :cond_1

    .line 931
    const-string v2, "FromSearchSvrMailView"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 934
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailSearch;->startActivity(Landroid/content/Intent;)V

    .line 935
    return-void

    .line 921
    .end local v0           #replyall_intent:Landroid/content/Intent;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private replyMailById(JJI)V
    .locals 5
    .parameter "accountId"
    .parameter "id"
    .parameter "replyType"

    .prologue
    .line 958
    sget-boolean v2, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replyMailById: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/android/mail/MailSearch;->long_press_bMeetingMail:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_0
    const/4 v1, 0x0

    .line 960
    .local v1, url:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 962
    sget-boolean v2, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replyMailById>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const-class v3, Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 964
    .local v0, replyall_intent:Landroid/content/Intent;
    const-string v2, "cmd"

    const-string v3, "reply"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    const-string v2, "accountID"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 966
    const-string v2, "SetOrient"

    const-string v3, "InMail"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    const-string v2, "id"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 969
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailSearch;->startActivity(Landroid/content/Intent;)V

    .line 970
    return-void
.end method

.method private setCmdBarInit(I)V
    .locals 3
    .parameter "read"

    .prologue
    .line 321
    sget-boolean v0, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmdBarInit>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailSearch;->setCmdBarButton1Text(I)V

    .line 323
    iput p1, p0, Lcom/htc/android/mail/MailSearch;->setBatchRead:I

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailSearch;->showCmdBar(Z)V

    .line 325
    return-void
.end method

.method private setDefaultSearchTime()V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    .line 1360
    sget-boolean v8, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MailSearch"

    const-string v9, "- setDefaultSearchTime"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    :cond_0
    :try_start_0
    sget-object v8, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v8, :cond_3

    sget-object v8, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v8}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1364
    sget-object v8, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v9, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v3

    .line 1365
    .local v3, easOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    iget v4, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailFilterType:I

    .line 1366
    .local v4, filterType:I
    sget-boolean v8, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "MailSearch"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setDefaultSearchTime, filter type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :cond_1
    const-wide/16 v5, -0x1

    .line 1369
    .local v5, syncTime:J
    packed-switch v4, :pswitch_data_0

    .line 1391
    :goto_0
    cmp-long v8, v5, v11

    if-eqz v8, :cond_2

    .line 1392
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 1393
    .local v7, tmp:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1394
    const-string v8, "UTC"

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1395
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1396
    .local v0, currentTimeMillis:J
    sub-long v8, v0, v5

    iget-wide v10, p0, Lcom/htc/android/mail/MailSearch;->mSearchMore:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/htc/android/mail/MailSearch;->mSearchGreaterThan:J

    .line 1399
    .end local v0           #currentTimeMillis:J
    .end local v7           #tmp:Landroid/text/format/Time;
    :cond_2
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/htc/android/mail/MailSearch;->mSearchLessThan:J

    .line 1404
    .end local v3           #easOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v4           #filterType:I
    .end local v5           #syncTime:J
    :cond_3
    :goto_1
    return-void

    .line 1371
    .restart local v3       #easOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .restart local v4       #filterType:I
    .restart local v5       #syncTime:J
    :pswitch_0
    const-wide/32 v5, 0x5265c00

    .line 1372
    goto :goto_0

    .line 1374
    :pswitch_1
    const-wide/32 v5, 0xf731400

    .line 1375
    goto :goto_0

    .line 1377
    :pswitch_2
    const-wide/32 v5, 0x240c8400

    .line 1378
    goto :goto_0

    .line 1380
    :pswitch_3
    const-wide/32 v5, 0x48190800

    .line 1381
    goto :goto_0

    .line 1383
    :pswitch_4
    const-wide v5, 0x9a7ec800L

    .line 1384
    goto :goto_0

    .line 1386
    :pswitch_5
    const-wide/16 v5, -0x1

    .line 1387
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/htc/android/mail/MailSearch;->mSearchGreaterThan:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1401
    .end local v3           #easOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v4           #filterType:I
    .end local v5           #syncTime:J
    :catch_0
    move-exception v2

    .line 1402
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setFlagById(JJ)V
    .locals 9
    .parameter "id"
    .parameter "accountId"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x2

    .line 890
    iget v5, p0, Lcom/htc/android/mail/MailSearch;->long_press_flag:I

    if-ne v5, v6, :cond_1

    .line 891
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/android/mail/MailSearch;->long_press_flag:I

    .line 895
    :goto_0
    iget-wide v5, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-static {v5, v6}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 896
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    if-nez v5, :cond_2

    .line 910
    :cond_0
    :goto_1
    return-void

    .line 893
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_1
    iput v6, p0, Lcom/htc/android/mail/MailSearch;->long_press_flag:I

    goto :goto_0

    .line 897
    .restart local v0       #account:Lcom/htc/android/mail/Account;
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/android/mail/MailSearch;->long_press_mailboxId:J

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    .line 898
    .local v3, mailbox:Lcom/htc/android/mail/Mailbox;
    new-instance v2, Lcom/htc/android/mail/MailMessage;

    iget-wide v5, p0, Lcom/htc/android/mail/MailSearch;->long_press_id:J

    invoke-direct {v2, v5, v6, v8, v8}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 899
    .local v2, mailMessage:Lcom/htc/android/mail/MailMessage;
    invoke-virtual {v2, p3, p4}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 900
    iget v5, p0, Lcom/htc/android/mail/MailSearch;->long_press_flag:I

    iput v5, v2, Lcom/htc/android/mail/MailMessage;->flags:I

    .line 901
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 902
    .local v1, b:Landroid/os/Bundle;
    const-string v5, "Mailbox"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 903
    const-string v5, "MailMessage"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 904
    const-string v5, "oldRead"

    iget v6, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 905
    new-instance v4, Lcom/htc/android/mail/Request;

    invoke-direct {v4}, Lcom/htc/android/mail/Request;-><init>()V

    .line 906
    .local v4, r:Lcom/htc/android/mail/Request;
    const/16 v5, 0x8

    iput v5, v4, Lcom/htc/android/mail/Request;->command:I

    .line 907
    iput-object v1, v4, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 908
    iget-wide v5, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 909
    iget-object v5, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v5, v4}, Lcom/htc/android/mail/AbsRequestController;->markStar(Lcom/htc/android/mail/Request;)V

    goto :goto_1
.end method

.method private setFooterBar()V
    .locals 4

    .prologue
    .line 251
    const v0, 0x7f090113

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterBarArea:Landroid/widget/FrameLayout;

    .line 253
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterBarArea:Landroid/widget/FrameLayout;

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 266
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 268
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v1, 0x7f0b0151

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 269
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterBarArea:Landroid/widget/FrameLayout;

    const v1, 0x7f090115

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    .line 261
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 262
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v1, 0x7f0b014a

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    goto :goto_0
.end method

.method private setMultiSelectionMenu(Landroid/view/Menu;Z)V
    .locals 8
    .parameter "menu"
    .parameter "show"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 505
    sget-boolean v3, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMultiSelectionMenu>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->allMenuID:[I

    array-length v2, v3

    .line 509
    .local v2, menuSize:I
    if-eqz p2, :cond_2

    .line 510
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 511
    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->allMenuID:[I

    aget v3, v3, v0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 512
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 513
    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->allMenuID:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 521
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 510
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :pswitch_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 518
    :pswitch_1
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 527
    .end local v0           #i:I
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 528
    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->allMenuID:[I

    aget v3, v3, v0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 529
    .restart local v1       #item:Landroid/view/MenuItem;
    if-eqz v1, :cond_3

    .line 530
    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->allMenuID:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_1

    .line 538
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 527
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 532
    :pswitch_2
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 535
    :pswitch_3
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 544
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_4
    return-void

    .line 513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 530
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSearchServerTimeFilter()V
    .locals 2

    .prologue
    .line 1407
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->mSearchGreaterThan:J

    iput-wide v0, p0, Lcom/htc/android/mail/MailSearch;->mSearchLessThan:J

    .line 1408
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/MailSearch;->mSearchGreaterThan:J

    .line 1409
    return-void
.end method

.method private setUnreadById(JJ)V
    .locals 10
    .parameter "id"
    .parameter "accountId"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 846
    iget v1, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    if-ne v1, v9, :cond_1

    move v1, v8

    :goto_0
    iput v1, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    .line 847
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    .line 848
    .local v0, selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    iget-wide v3, p0, Lcom/htc/android/mail/MailSearch;->long_press_mailboxId:J

    iget-wide v5, p0, Lcom/htc/android/mail/MailSearch;->long_press_id:J

    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_groupId:Ljava/lang/String;

    move-wide v1, p3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    .line 849
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget v3, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    if-ne v3, v9, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2, v9}, Lcom/htc/android/mail/util/SelectedMailMessages;->setReadStatus(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;Z)V

    .line 850
    const/4 v0, 0x0

    .line 851
    sget-boolean v1, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUnreadById<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_0
    return-void

    .end local v0           #selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    :cond_1
    move v1, v9

    .line 846
    goto :goto_0

    .restart local v0       #selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    :cond_2
    move v9, v8

    .line 849
    goto :goto_1
.end method


# virtual methods
.method public implDelMarkMail()V
    .locals 5

    .prologue
    .line 345
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->privateCursor:Landroid/database/Cursor;

    .line 346
    .local v1, mCursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 347
    const-string v2, "MailSearch"

    const-string v3, "impDelMarkMail cursor null>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->privateCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 351
    .local v0, cursorCount:I
    if-nez v0, :cond_1

    .line 352
    const-string v2, "MailSearch"

    const-string v3, "impDelMarkMail cursorCount  0"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_1
    sget-boolean v2, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "impDelMarkMail>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/util/SelectedMailMessages;->deleteMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V

    .line 357
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailSearch;->showCmdBar(Z)V

    goto :goto_0
.end method

.method public implSetReadMail()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 328
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->privateCursor:Landroid/database/Cursor;

    .line 329
    .local v1, mCursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 330
    const-string v2, "MailSearch"

    const-string v3, "impSetReadMail cursor null>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 334
    .local v0, cursorCount:I
    if-nez v0, :cond_1

    .line 335
    const-string v2, "MailSearch"

    const-string v3, "impSetReadMail cursorCount  0"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_1
    sget-boolean v4, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "MailSearch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "impSetReadMail>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/mail/MailSearch;->setBatchRead:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    iget-object v5, p0, Lcom/htc/android/mail/MailSearch;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget v7, p0, Lcom/htc/android/mail/MailSearch;->setBatchRead:I

    if-eq v7, v2, :cond_3

    :goto_1
    invoke-virtual {v4, v5, v6, v2}, Lcom/htc/android/mail/util/SelectedMailMessages;->setReadStatus(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;Z)V

    .line 341
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MailSearch;->showCmdBar(Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 340
    goto :goto_1
.end method

.method public moveBatchMail2()V
    .locals 5

    .prologue
    .line 383
    sget-boolean v1, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailSearch"

    const-string v2, "moveBatchMail2>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v1, :cond_1

    .line 386
    const-string v1, "MailSearch"

    const-string v2, "moveBatchMail2 - mAccount is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v1, :cond_2

    .line 390
    const-string v1, "MailSearch"

    const-string v2, "moveBatchMail2 - mMailbox is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_2
    new-instance v1, Lcom/htc/android/mail/MoveToAdapter;

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/htc/android/mail/MoveToAdapter;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailSearch;->mMoveToAdapter:Lcom/htc/android/mail/MoveToAdapter;

    .line 395
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 396
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0b014a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mMoveToAdapter:Lcom/htc/android/mail/MoveToAdapter;

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->confirmBatchMoveMail:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method public moveMarkMail2(Lcom/htc/android/mail/MailMessage;)V
    .locals 6
    .parameter "mailMessage"

    .prologue
    .line 855
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 856
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f0b014a

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 858
    iget-wide v3, p1, Lcom/htc/android/mail/MailMessage;->accountId:J

    invoke-static {v3, v4}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 859
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_0

    .line 870
    :goto_0
    return-void

    .line 860
    :cond_0
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    iget-wide v4, p1, Lcom/htc/android/mail/MailMessage;->mailBoxId:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    .line 862
    .local v2, mailbox:Lcom/htc/android/mail/Mailbox;
    new-instance v3, Lcom/htc/android/mail/MoveToAdapter;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v0, v2, v4}, Lcom/htc/android/mail/MoveToAdapter;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/android/mail/MailSearch;->mMoveToAdapter:Lcom/htc/android/mail/MoveToAdapter;

    .line 863
    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mMoveToAdapter:Lcom/htc/android/mail/MoveToAdapter;

    new-instance v4, Lcom/htc/android/mail/MailSearch$7;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/MailSearch$7;-><init>(Lcom/htc/android/mail/MailSearch;)V

    invoke-virtual {v1, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 869
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1056
    new-instance v0, Lcom/htc/android/mail/MailMessage;

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_id:J

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    .line 1057
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 1058
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_groupId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/MailMessage;->setGroup(Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_mailboxId:J

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/MailMessage;->setMailboxId(J)V

    .line 1060
    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_id:J

    iput-wide v2, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    .line 1062
    sget-boolean v0, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContextItemSelected>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1140
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1065
    :pswitch_0
    const-string v0, "MailSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "long_press_groupId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_groupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mail/accounts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1067
    .local v7, uri:Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1068
    .local v6, intent:Landroid/content/Intent;
    const-class v0, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v6, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1069
    const-string v0, "ExpandMailId"

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->long_press_groupId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    const-string v0, "mailboxId"

    iget-wide v1, p0, Lcom/htc/android/mail/MailSearch;->reqMailboxId:J

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1071
    const-string v0, "MailTabGroupAccount"

    iget-wide v1, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1072
    const-string v0, "GO_TO_TAB"

    const-string v1, "tab_thread"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    const-string v0, "NOT_BACK_TO_INBOX"

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1075
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/MailSearch;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 1077
    goto :goto_0

    .line 1079
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #uri:Landroid/net/Uri;
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->askBeforeDelete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    invoke-virtual {p0, v8}, Lcom/htc/android/mail/MailSearch;->showDialog(I)V

    :goto_1
    move v0, v8

    .line 1084
    goto :goto_0

    .line 1082
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/MailSearch;->delMarkMail2()V

    goto :goto_1

    .line 1086
    :pswitch_2
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailSearch;->setUnreadById(JJ)V

    move v0, v8

    .line 1087
    goto/16 :goto_0

    .line 1089
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailSearch;->moveMarkMail2(Lcom/htc/android/mail/MailMessage;)V

    move v0, v8

    .line 1090
    goto/16 :goto_0

    .line 1092
    :pswitch_4
    iget v3, p0, Lcom/htc/android/mail/MailSearch;->long_press_position:I

    iget-wide v4, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/MailSearch;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    move v0, v8

    .line 1093
    goto/16 :goto_0

    .line 1095
    :pswitch_5
    iget v0, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    if-nez v0, :cond_2

    .line 1096
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailSearch;->setUnreadById(JJ)V

    .line 1098
    :cond_2
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailSearch;->replyMailById(J)V

    move v0, v8

    .line 1099
    goto/16 :goto_0

    .line 1101
    :pswitch_6
    iget v0, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    if-nez v0, :cond_3

    .line 1102
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailSearch;->setUnreadById(JJ)V

    .line 1104
    :cond_3
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailSearch;->replyAllMailById(J)V

    move v0, v8

    .line 1105
    goto/16 :goto_0

    .line 1107
    :pswitch_7
    iget v0, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    if-nez v0, :cond_4

    .line 1108
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailSearch;->setUnreadById(JJ)V

    .line 1110
    :cond_4
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailSearch;->forwardMailById(J)V

    move v0, v8

    .line 1111
    goto/16 :goto_0

    .line 1113
    :pswitch_8
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailSearch;->setFlagById(JJ)V

    move v0, v8

    .line 1114
    goto/16 :goto_0

    .line 1116
    :pswitch_9
    iget v0, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    if-nez v0, :cond_5

    .line 1117
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailSearch;->setUnreadById(JJ)V

    .line 1119
    :cond_5
    iget-wide v1, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailSearch;->meetingRespEvent(JIJ)V

    move v0, v8

    .line 1120
    goto/16 :goto_0

    .line 1122
    :pswitch_a
    iget v0, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    if-nez v0, :cond_6

    .line 1123
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailSearch;->setUnreadById(JJ)V

    .line 1125
    :cond_6
    iget-wide v1, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailSearch;->meetingRespEvent(JIJ)V

    move v0, v8

    .line 1126
    goto/16 :goto_0

    .line 1128
    :pswitch_b
    iget v0, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    if-nez v0, :cond_7

    .line 1129
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailSearch;->setUnreadById(JJ)V

    .line 1131
    :cond_7
    iget-wide v1, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailSearch;->meetingRespEvent(JIJ)V

    move v0, v8

    .line 1132
    goto/16 :goto_0

    .line 1134
    :pswitch_c
    iget v0, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    if-nez v0, :cond_8

    .line 1135
    iget-wide v0, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailSearch;->setUnreadById(JJ)V

    .line 1137
    :cond_8
    iget-wide v1, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    iget-wide v3, p0, Lcom/htc/android/mail/MailSearch;->markId:J

    const/4 v5, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailSearch;->replyMailById(JJI)V

    move v0, v8

    .line 1138
    goto/16 :goto_0

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 569
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 570
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/MailSearch;->requestWindowFeature(I)Z

    .line 571
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x20806a9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 572
    const v6, 0x7f03002d

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/MailSearch;->setContentView(I)V

    .line 574
    iput-object p0, p0, Lcom/htc/android/mail/MailSearch;->mContext:Landroid/content/Context;

    .line 576
    new-instance v6, Lcom/htc/android/mail/MailSearch$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/android/mail/MailSearch$QueryHandler;-><init>(Lcom/htc/android/mail/MailSearch;Landroid/content/ContentResolver;)V

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mQueryHandler:Lcom/htc/android/mail/MailSearch$QueryHandler;

    .line 578
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 579
    .local v0, it:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mUri:Landroid/net/Uri;

    .line 580
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content://mail"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->finish()V

    .line 709
    :cond_1
    :goto_0
    return-void

    .line 584
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mUri:Landroid/net/Uri;

    invoke-static {v6}, Lcom/htc/android/mail/MailCommon;->parseSummariesWithMailboxUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, segments:[Ljava/lang/String;
    if-nez v4, :cond_3

    .line 586
    const-string v6, "MailSearch"

    const-string v7, "parse uri null"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->finish()V

    goto :goto_0

    .line 590
    :cond_3
    array-length v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_4

    .line 591
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->finish()V

    goto :goto_0

    .line 594
    :cond_4
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    .line 595
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/android/mail/MailSearch;->reqMailboxId:J

    .line 596
    const-string v6, "SearchWhere"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mSearchWhere:Ljava/lang/String;

    .line 597
    const-string v6, "searchSvrMailImmediately"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/android/mail/MailSearch;->mIsSearchSvrMailImmediately:Z

    .line 598
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    .line 599
    iget-wide v6, p0, Lcom/htc/android/mail/MailSearch;->reqMailboxId:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_d

    .line 600
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 601
    array-length v6, v4

    const/4 v7, 0x2

    if-le v6, v7, :cond_c

    .line 602
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/htc/android/mail/MailSearch;->reqMailboxId:J

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/htc/android/mail/MailCommon;->getMessagesUri(JJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mUri:Landroid/net/Uri;

    .line 610
    :goto_1
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-eqz v6, :cond_6

    .line 611
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget v6, v6, Lcom/htc/android/mail/Mailbox;->kind:I

    const v7, 0x7ffffffc

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget v6, v6, Lcom/htc/android/mail/Mailbox;->kind:I

    const v7, 0x7ffffffb

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget v6, v6, Lcom/htc/android/mail/Mailbox;->kind:I

    const v7, 0x7ffffffd

    if-ne v6, v7, :cond_e

    .line 614
    :cond_5
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sSummaryColumnsForOutbox:[Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mProjection:[Ljava/lang/String;

    .line 620
    :cond_6
    :goto_2
    sget-boolean v6, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "MailSearch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/android/mail/MailSearch;->reqMailboxId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_7
    invoke-static {p0}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 624
    new-instance v6, Lcom/htc/android/mail/MailSearch$RequestHandler;

    invoke-direct {v6, p0, p0}, Lcom/htc/android/mail/MailSearch$RequestHandler;-><init>(Landroid/content/Context;Lcom/htc/android/mail/MailSearch;)V

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mRequestHandler:Lcom/htc/android/mail/MailSearch$RequestHandler;

    .line 625
    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->mRequestHandler:Lcom/htc/android/mail/MailSearch$RequestHandler;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 628
    invoke-static {p0}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 629
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v8, p0, Lcom/htc/android/mail/MailSearch;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/mail/AbsRequestController;->registerWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 631
    new-instance v6, Lcom/htc/android/mail/MailSearch$MailListAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7, p0}, Lcom/htc/android/mail/MailSearch$MailListAdapter;-><init>(Lcom/htc/android/mail/MailSearch;Landroid/database/Cursor;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mAdapter:Lcom/htc/android/mail/MailSearch$MailListAdapter;

    .line 633
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_f

    .line 635
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/htc/android/mail/MailSearch;->addFooterView(Z)V

    .line 655
    :cond_8
    :goto_3
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mAdapter:Lcom/htc/android/mail/MailSearch$MailListAdapter;

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/MailSearch;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 664
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 665
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(ZZ)V

    .line 670
    invoke-direct {p0}, Lcom/htc/android/mail/MailSearch;->setFooterBar()V

    .line 671
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->doBatchMarkRead:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->doBatchDelete:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    if-eqz v6, :cond_9

    .line 674
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->doBatchMove:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    :cond_9
    iget-boolean v6, p0, Lcom/htc/android/mail/MailSearch;->mIsSearchSvrMailImmediately:Z

    if-eqz v6, :cond_14

    .line 678
    const-string v6, "searchKey"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mSearchKey:Ljava/lang/String;

    .line 679
    sget-boolean v6, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v6, :cond_a

    const-string v6, "MailSearch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "search server mail, searchKey ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/MailSearch;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_a
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mSearchKey:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 685
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, pattern:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 687
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "UCS2_LOWERCASE(_from) like %s or UCS2_LOWERCASE(_subject) like %s or UCS2_LOWERCASE(_fromEmail) like %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, keyword:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mSearchWhere:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/htc/android/mail/MailCommon;->mergeSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mWhere:Ljava/lang/String;

    .line 691
    sget-boolean v6, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "MailSearch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "where>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/MailSearch;->mWhere:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_b
    invoke-direct {p0}, Lcom/htc/android/mail/MailSearch;->performSearchMailOnServer()V

    .line 705
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_1

    .line 706
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.android.mail.mailsearch.ready"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v2, loadMailSearchDone:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailSearch;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 604
    .end local v1           #keyword:Ljava/lang/String;
    .end local v2           #loadMailSearchDone:Landroid/content/Intent;
    .end local v3           #pattern:Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/htc/android/mail/MailSearch;->reqMailboxId:J

    invoke-static {v6, v7, v8, v9}, Lcom/htc/android/mail/MailCommon;->getMessagesUri(JJ)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 607
    :cond_d
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/android/mail/MailSearch;->reqMailboxId:J

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    goto/16 :goto_1

    .line 616
    :cond_e
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sSummaryColumns:[Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mProjection:[Ljava/lang/String;

    goto/16 :goto_2

    .line 636
    :cond_f
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->isExchange()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 638
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/htc/android/mail/MailCommon;->needAddGlobalButton(Lcom/htc/android/mail/Account;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 639
    sget-boolean v6, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v6, :cond_10

    const-string v6, "MailSearch"

    const-string v7, "add search on server>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_10
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/server/ExchangeServer;->setBindService(Landroid/content/Context;)V

    .line 642
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mPartFactory:Landroid/view/LayoutInflater;

    .line 643
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mPartFactory:Landroid/view/LayoutInflater;

    const v7, 0x7f030042

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;

    .line 644
    iget-object v6, p0, Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;

    const v7, 0x2020010

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 645
    .local v5, tv:Landroid/widget/TextView;
    if-eqz v5, :cond_11

    .line 646
    const v6, 0x7f0b02b2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 648
    :cond_11
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/htc/android/mail/MailSearch;->addFooterView(Z)V

    .line 649
    const v6, 0x2020102

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/MailSearch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/htc/android/mail/MailSearch;->mProgressBar:Landroid/widget/ProgressBar;

    .line 650
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/htc/android/mail/MailSearch;->displayProgress(Z)V

    goto/16 :goto_3

    .line 652
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_12
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/htc/android/mail/MailSearch;->addFooterView(Z)V

    goto/16 :goto_3

    .line 694
    :cond_13
    const-string v6, "MailSearch"

    const-string v7, "search key null"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->finish()V

    goto/16 :goto_0

    .line 699
    :cond_14
    const-string v6, "MailSearch"

    const-string v7, "sense 3.5 didnt support not immediately server search"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->finish()V

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 753
    const/4 v4, 0x0

    .line 754
    .local v4, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    const/4 v2, 0x0

    .line 756
    .local v2, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    if-nez v4, :cond_1

    .line 762
    sget-boolean v7, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MailSearch"

    const-string v8, "AdapterContextMenuInfo null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v3

    .line 758
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v7, "MailSearch"

    const-string v8, "bad menuInfo"

    invoke-static {v7, v8, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 765
    .end local v3           #e:Ljava/lang/ClassCastException;
    :cond_1
    sget-boolean v7, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "MailSearch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateContextMenu not thread>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_2
    iget v7, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 767
    sget-boolean v7, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MailSearch"

    const-string v8, "touch header item or footer item ?"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    iget v8, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cursor:Landroid/database/Cursor;
    check-cast v2, Landroid/database/Cursor;

    .line 771
    .restart local v2       #cursor:Landroid/database/Cursor;
    if-nez v2, :cond_4

    .line 772
    sget-boolean v7, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MailSearch"

    const-string v8, "onCreateContextMenu null>"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_4
    const-string v7, "_group"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_groupId:Ljava/lang/String;

    .line 778
    const-string v7, "_id"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_id:J

    .line 779
    const-string v7, "_account"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    .line 781
    const-string v7, "_read"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    .line 782
    const-string v7, "_flags"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_flag:I

    .line 783
    const-string v7, "_mailboxId"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_mailboxId:J

    .line 784
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    iput v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_position:I

    .line 787
    sget-boolean v7, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "MailSearch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "long_press_groupId>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/MailSearch;->long_press_groupId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_5
    const-string v7, "_subjtype"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 790
    .local v6, sub:Ljava/lang/String;
    const-string v7, "_subject"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailSearch;->longpress_ItemHeader:Ljava/lang/String;

    .line 791
    if-eqz v6, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/MailSearch;->longpress_ItemHeader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailSearch;->longpress_ItemHeader:Ljava/lang/String;

    .line 792
    :cond_6
    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->longpress_ItemHeader:Ljava/lang/String;

    if-eqz v7, :cond_7

    const-string v7, ""

    iget-object v8, p0, Lcom/htc/android/mail/MailSearch;->longpress_ItemHeader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 793
    :cond_7
    const v7, 0x7f0b0203

    invoke-virtual {p0, v7}, Lcom/htc/android/mail/MailSearch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailSearch;->longpress_ItemHeader:Ljava/lang/String;

    .line 796
    :cond_8
    iget-wide v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_accountId:J

    invoke-static {v7, v8}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 798
    .local v1, account:Lcom/htc/android/mail/Account;
    sget-boolean v7, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "MailSearch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateContextMenu server mail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_9
    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->longpress_ItemHeader:Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 800
    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const v10, 0x7f0b0103

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 801
    iget-boolean v7, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    if-nez v7, :cond_a

    .line 802
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v10, 0x7f0b002b

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 803
    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const v10, 0x7f0b0151

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 804
    iget v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_read:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    .line 805
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const v10, 0x7f0b0093

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 810
    :cond_a
    :goto_1
    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v9, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    iget-wide v9, v9, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_b

    .line 811
    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b

    iget-boolean v7, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    if-nez v7, :cond_b

    .line 812
    iget v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_flag:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_e

    .line 813
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const v10, 0x7f0b0095

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 819
    :cond_b
    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    const v10, 0x7f0b00eb

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 820
    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const v10, 0x7f0b00ec

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 821
    const/4 v7, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x0

    const v10, 0x7f0b00ea

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 823
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_bMeetingMail:Z

    .line 824
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_c

    .line 825
    const-string v7, "_messageClassInt"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 826
    .local v5, messageClassInt:I
    const/4 v7, 0x6

    if-ne v5, v7, :cond_c

    .line 827
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/android/mail/MailSearch;->long_press_bMeetingMail:Z

    .line 831
    .end local v5           #messageClassInt:I
    :cond_c
    iget-object v7, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v9, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    iget-wide v9, v9, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    if-nez v7, :cond_0

    .line 832
    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    const v10, 0x7f0b014a

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 807
    :cond_d
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const v10, 0x7f0b0092

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 815
    :cond_e
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const v10, 0x7f0b0094

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b0291

    const v4, 0x7f0b008e

    const v2, 0x1080027

    const/4 v3, 0x1

    .line 1464
    packed-switch p1, :pswitch_data_0

    .line 1487
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1467
    :pswitch_0
    const v1, 0x7f0b0138

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailSearch;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, str:Ljava/lang/String;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->longpress_ItemHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->confirmDelMarkMailEvent2:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1477
    .end local v0           #str:Ljava/lang/String;
    :pswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0151

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->confirmBatchMarkMailEvent:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 561
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 562
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailSearch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 563
    const/4 v0, 0x2

    const v1, 0x7f0b009d

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailSearch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 564
    return v3
.end method

.method protected final onDestroy()V
    .locals 3

    .prologue
    .line 724
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 725
    const-string v0, "MailSearch"

    const-string v1, "onDestroy>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mAdapter:Lcom/htc/android/mail/MailSearch$MailListAdapter;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mAdapter:Lcom/htc/android/mail/MailSearch$MailListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailSearch$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/AbsRequestController;->unregisterWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 733
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1145
    sget-boolean v2, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_0
    if-ne p1, v6, :cond_3

    .line 1149
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mFooterBarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1150
    sget-boolean v2, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailSearch"

    const-string v3, "exit batch mode>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-virtual {v2}, Lcom/htc/android/mail/util/SelectedMailMessages;->clear()V

    .line 1152
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/MailSearch;->showCmdBar(Z)V

    .line 1153
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1173
    :goto_0
    return v1

    .line 1157
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 1158
    const-string v2, "MailSearch"

    const-string v3, "cancel search mail on server"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iput v5, p0, Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I

    .line 1160
    invoke-direct {p0, v5}, Lcom/htc/android/mail/MailSearch;->displayProgress(Z)V

    .line 1161
    invoke-direct {p0, v5}, Lcom/htc/android/mail/MailSearch;->addFooterView(Z)V

    .line 1163
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelSearchGlobalMail(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->finish()V

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1173
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 15
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1505
    .local v14, url:Landroid/net/Uri;
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_3

    .line 1506
    iget v2, p0, Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1507
    invoke-direct {p0}, Lcom/htc/android/mail/MailSearch;->setSearchServerTimeFilter()V

    .line 1514
    :cond_0
    iget-boolean v2, p0, Lcom/htc/android/mail/MailSearch;->mNotFoundOnServer:Z

    if-eqz v2, :cond_1

    .line 1587
    :goto_0
    return-void

    .line 1515
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/mail/MailSearch;->mIsSearching:Z

    if-eqz v2, :cond_2

    .line 1516
    const-string v2, "MailSearch"

    const-string v3, "click cancel search global mail"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    invoke-direct {p0}, Lcom/htc/android/mail/MailSearch;->cancelSearchMailOnServer()V

    goto :goto_0

    .line 1519
    :cond_2
    const-string v2, "MailSearch"

    const-string v3, "click search global mail"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    invoke-direct {p0}, Lcom/htc/android/mail/MailSearch;->performSearchMailOnServer()V

    goto :goto_0

    .line 1525
    :cond_3
    iget-boolean v2, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    if-eqz v2, :cond_8

    .line 1526
    sget-boolean v2, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MailSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :cond_4
    const/4 v9, 0x0

    .line 1528
    .local v9, collectionId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1530
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_collectionId"

    aput-object v3, v4, v2

    .line 1531
    .local v4, proj:[Ljava/lang/String;
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 1532
    .local v8, builder:Landroid/net/Uri$Builder;
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1533
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1534
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1535
    const-string v2, "_collectionId"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1540
    :cond_5
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1541
    .end local v4           #proj:[Ljava/lang/String;
    .end local v8           #builder:Landroid/net/Uri$Builder;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1545
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/searchSvrMessages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1546
    .local v13, uri:Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const-class v3, Lcom/htc/android/mail/ReadScreen;

    invoke-direct {v12, v2, v13, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1547
    .local v12, intent:Landroid/content/Intent;
    const-string v2, "_isIMAP4"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1548
    const-string v2, "isExchangeSvr"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1549
    const-string v2, "collectionId"

    invoke-virtual {v12, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1550
    const-string v2, "accountID"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1551
    const-string v2, "position"

    move/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1552
    const-string v2, "where"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mWhere:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1553
    const-string v2, "mailboxId"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v5, v3, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v12, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1554
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->MAIL_SORT_RULE:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mSortRule:Ljava/lang/String;

    .line 1555
    const-string v2, "sortRule"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mSortRule:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    const-string v2, "FromSearchSvrMailView"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1557
    const-string v2, "fromListTab"

    const-string v3, "fromListTab"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1558
    const/4 v2, 0x4

    invoke-virtual {p0, v12, v2}, Lcom/htc/android/mail/MailSearch;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1537
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 1538
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1540
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1541
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1540
    :cond_7
    throw v2

    .line 1562
    .end local v9           #collectionId:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_8
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v5, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    iget-wide v5, v5, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v5, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    iget-wide v5, v5, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_b

    .line 1564
    :cond_9
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const-class v3, Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v12, v2, v14, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1565
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v2, "_isIMAP4"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->isIMAP4()Z

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1566
    const-string v2, "cmd"

    const-string v3, "editdraft"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1567
    const-string v2, "accountID"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1568
    const-string v2, "SetOrient"

    const-string v3, "InMail"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1569
    const-string v2, "mailboxId"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v5, v3, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v12, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1570
    const-string v2, "isExchangeSvr"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->isExchange()Z

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1571
    sget-boolean v2, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "MailSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ComposeActivity>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    :cond_a
    invoke-virtual {p0, v12}, Lcom/htc/android/mail/MailSearch;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1574
    .end local v12           #intent:Landroid/content/Intent;
    :cond_b
    sget-boolean v2, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "MailSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReadMail>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/android/mail/MailSearch;->mWhere:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    :cond_c
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v12, v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1576
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v2, "accountID"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1577
    const-string v2, "messageIdsUriStr"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    const-string v2, "where"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mWhere:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1579
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->MAIL_SORT_RULE:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/mail/MailSearch;->mSortRule:Ljava/lang/String;

    .line 1580
    const-string v2, "sortRule"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch;->mSortRule:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1581
    const-string v2, "fromListTab"

    const-string v3, "fromListTab"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1582
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v2, v2, v5

    if-nez v2, :cond_d

    .line 1583
    const-string v2, "MailReadFromAllAccount"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1584
    :cond_d
    sget-boolean v2, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v2, :cond_e

    const-string v2, "MailSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOutMailbox>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    :cond_e
    const/4 v2, 0x4

    invoke-virtual {p0, v12, v2}, Lcom/htc/android/mail/MailSearch;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 451
    sget-boolean v1, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 460
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 454
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->mUIHandler:Lcom/htc/android/mail/MailSearch$UIHandler;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/MailSearch$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 457
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch;->mUIHandler:Lcom/htc/android/mail/MailSearch$UIHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailSearch$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 737
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 738
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mResultContentObserver:Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->setPause(Z)V

    .line 739
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1492
    sget-boolean v0, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialog>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1500
    :goto_0
    return-void

    .line 1495
    :pswitch_0
    sget-boolean v0, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailSearch"

    const-string v1, "DELETE_ONEMAIL_CONFIRM>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->longpress_ItemHeader:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1493
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 548
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mAdapter:Lcom/htc/android/mail/MailSearch$MailListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch;->mAdapter:Lcom/htc/android/mail/MailSearch$MailListAdapter;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailSearch$MailListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 549
    :cond_0
    sget-boolean v2, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailSearch"

    const-string v3, "cussor no item>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/MailSearch;->setMultiSelectionMenu(Landroid/view/Menu;Z)V

    .line 556
    :goto_0
    return v1

    .line 554
    :cond_2
    iget-boolean v2, p0, Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z

    if-nez v2, :cond_3

    move v0, v1

    .line 555
    .local v0, show:Z
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/MailSearch;->setMultiSelectionMenu(Landroid/view/Menu;Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 743
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 744
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mResultContentObserver:Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->isPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mResultContentObserver:Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->setPause(Z)V

    .line 748
    :cond_0
    sget-boolean v0, Lcom/htc/android/mail/MailSearch;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/MailSearch;->mAccountCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_1
    return-void
.end method

.method public setCmdBar(II)V
    .locals 0
    .parameter "position"
    .parameter "read"

    .prologue
    .line 318
    return-void
.end method

.method protected setCmdBarButton1Text(I)V
    .locals 2
    .parameter "read"

    .prologue
    .line 272
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v1, 0x7f0b0093

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    goto :goto_0
.end method

.method protected setCmdBarButton1Text(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method

.method protected showCmdBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterBarArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch;->mFooterBarArea:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
